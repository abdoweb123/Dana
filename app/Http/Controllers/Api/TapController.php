<?php

namespace App\Http\Controllers\Api;

use App\Mail\SendSerial;
use App\Models\Card;
use App\Models\Cart;
use App\Models\Order;
use App\Models\PromoCodeUser;
use App\Models\Serial;
use App\Models\Country;
use App\Functions\WhatsApp;
use App\Models\Transaction;
use Illuminate\Http\Request;
use App\Functions\ResponseHelper;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Mail;

class TapController extends Controller
{
    function VerifyTapTransaction($order_id, $source)
    {
        $order = Order::with('user')->find($order_id);

        $fields = (object) (object) [];

        $fields->amount = (float)$order->net_total;
        $fields->currency = request()->country_id ? Country::find(request()->country_id)->currancy_code : 'BHD';
        $fields->save_card = false;
        $fields->description = 'Description';
        $fields->statement_descriptor = 'Sample';

        $fields->metadata = (object) [];
        $fields->metadata->udf1 = $order->id;

        $fields->reference = (object) [];
        $fields->reference->transaction = 'txn_0001';
        $fields->reference->order = 'ord_0001';

        $fields->receipt = (object) [];
        $fields->receipt->email = true;
        $fields->receipt->sms = true;

        $fields->customer = (object) [];
        $fields->customer->first_name = $order->user->name;
        $fields->customer->middle_name = '';
        $fields->customer->last_name = '';
        $fields->customer->email = $order->user->email ?? 'info@emcan-group.com';
        $fields->customer->phone = (object) [];
        $fields->customer->phone->country_code = str_replace("+", "", '+973');
        $fields->customer->phone->number = $order->user->phone;

        $fields->merchant = (object) [];
        $fields->merchant->id = '';

        $fields->source = (object) [];
        $fields->source->id = $source ?? 'src_all';

        $fields->post = (object) [];
        $fields->post->url = env('APP_URL');

        $fields->redirect = (object) [];
        $fields->redirect->url =  route('tap_response'); //response that shuld i handle!

        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://api.tap.company/v2/charges',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS =>  json_encode($fields),
            CURLOPT_HTTPHEADER => array(': ','Authorization: Bearer '.env('TAP_SECRET'),'Content-Type: application/json'),
        ));
        $response = curl_exec($curl);
        $err = curl_error($curl);
        curl_close($curl);
        if ($err) {
            echo 'cURL Error #:'.$err;
        } else {
            $data = json_decode($response);
            try {
                $order->transaction_number = $data->id;
                $order->save();
                DB::commit(); // Commit the transaction on payment verification success
                return [
                    'success' => true,
                    'transaction_url' => $data->transaction->url
                ];

            } catch (\Exception $e) {
                return [
                    'success' => false,
                    'error_msg' => $data->errors[0]->description
                ];
            }
        }
    }


    public function response($tap_id = null)
    {
        $charge_data = $this->ResponseTapTransaction(env('TAP_SECRET'), $tap_id ?? request()->tap_id);
        $order = Order::with('user')->where('transaction_number',$tap_id ?? request()->tap_id)->first();

//        if($order->is_paid == true){
//            return ResponseHelper::make(null, 'dev:The purchase has already been completed, and payment cannot be made again.', false, 422);
//        }
        $user = $order->user;
        $transaction = Transaction::create([
            'user_id' => $user->id,
            'transaction_number' => $charge_data['id'],
            'value' => $charge_data['amount'],
            'result' => $charge_data['status'],
            'type' => 'TAP',
            'order_id' => $order->id,
        ]);

        if($charge_data['status'] == 'PAID' || $charge_data['status'] == 'CAPTURED'){
            $order->transaction_id = $transaction->id;
            $order->is_paid = true;
            $order->save();

            // send serials
            foreach ($order->order_details as $i => $detail) {
                $serials = Serial::where('card_id', $detail['card_id'])->where('user_id', null)->take($detail['quantity'])->get();
                $serialCodes = [];
                foreach ($serials as $serial) {
                    $serialCodes[] = $serial->key;
                    if(setting('order_auto') == 'true' && $order->net_total <= 50){
//                        WhatsApp::SendSerial($user->phone, $serial->key, $serial->card['title_'.lang()], lang());
                        Mail::to($user->email)->send(new SendSerial($serial->key,$serial->card['title_'.lang()],lang()));
                    }
                    $serial->user_id = $user->id;
                    $serial->save();
                }
                $detail->serials = $serialCodes;
                if($i == 0){ // why $i == 0 ? because i want to do it only once
                    $order->is_sent = setting('order_auto') == 'false' && $order->net_total > 50 ? false : true;

                    // if $order->net_total > 50 make sure first
                    if( $order->net_total > 50 ){
                        $order->is_sent = false;
                    }

                    $order->save();
                }
                $detail->save();
            }

            Cart::where('user_id', $user->id)->delete();

            // convert promoCodes from user to order
            PromoCodeUser::query()->where('user_id', $user->id)
                ->update([
                    'user_id'=>null,
                    'order_id'=>$order->id,
                ]);
        } else {
             $data = [
                 'returned_response' => $charge_data['status']
             ];
             return ResponseHelper::make($data, __('dash.failedProcess'), false, 200);
        }
    }


    function ResponseTapTransaction($token, $charge_id)
    {
        $curl = curl_init();

        curl_setopt_array($curl, array(
            CURLOPT_URL => "https://api.tap.company/v2/charges/$charge_id",
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => "GET",
            CURLOPT_POSTFIELDS => "{}",
            CURLOPT_HTTPHEADER => array(
                "authorization: Bearer " . $token
            ),
        ));
        $response = curl_exec($curl);
        $err = curl_error($curl);
        curl_close($curl);

        curl_close($curl);
        if ($err) {
            $response['status'] = 'cURL Error #:'.$err;
        }
        $response =  json_decode($response, true);
        return $response;
    }


    public function check_result()
    {
        sleep(2);
        $trans = Transaction::where('transaction_number', request('tap_id'))->first();
        if($trans){
            $order = Order::where('id', $trans->order_id)->first();
            if($order->is_paid == true){
                if ($order->is_sent == true)
                    return ResponseHelper::make(null, __('dash.orderd_successfully'));
                else
                    return ResponseHelper::make(null, __('dash.order_will_be_reviewed'));
            }else{
                return ResponseHelper::make(null, __('dash.failedProcess'), false, 200);
            }
        }
        return ResponseHelper::make(null, __('dash.failedProcess'), false, 200);
    }

}
