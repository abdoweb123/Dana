<?php

namespace App\Http\Controllers\Api;

use App\Models\Card;
use App\Models\Group;
use App\Models\Slide;
use App\Models\Company;
use App\Models\Contact;
use App\Models\Project;
use App\Models\Category;
use App\Models\EmailType;
use App\Models\ProductType;
use Illuminate\Http\Request;
use App\Functions\Notification;
use App\Functions\ResponseHelper;
use App\Http\Controllers\Controller;
use App\Http\Resources\CardResource;
use App\Http\Resources\EmailResource;
use App\Http\Resources\GroupsResource;
use App\Http\Resources\SlidesResource;
use App\Http\Requests\ContactUsRequest;
use App\Http\Resources\ProjectResource;
use App\Http\Resources\PartnersResource;
use App\Http\Resources\GroupShowResource;
use App\Http\Resources\CategoriesResource;
use App\Http\Resources\ProductTypeResource;
use App\Http\Resources\GroupWithoutCardsResource;
use App\Models\Sidepage;
use App\Models\Token;

class HomeController extends Controller
{
    public function index()
    {
        $slides = Slide::get();
        $data = [
            "slides" => SlidesResource::collection($slides),
            "groups" => GroupsResource::collection(Group::all()),
        ];

        return ResponseHelper::make($data);
    }

    public function group($group_id)
    {
        $group = Group::find($group_id);
        if(!$group){
            return ResponseHelper::make(NULL, 'id not found' ,false,200);
        }
        $cards = Card::whereRelation('groups', 'group_id', $group->id)->paginate(20);
        $data = [
            'group_title' => $group['title_'.lang()],
            'groups' => GroupWithoutCardsResource::collection(Group::all()),
            'cards' => CardResource::collection($cards)->response()->getData(true),
        ];
        return ResponseHelper::make($data);
    }

    public function categories()
    {
        $categories = Category::where('parent_id', null)->get();
        $data = [
            'categoris' => CategoriesResource::collection($categories)
        ];

        return ResponseHelper::make($data);
    }

    public function subCategories($category_id)
    {
        $category = Category::find($category_id);

        if(!$category){
            return ResponseHelper::make(NULL, 'id not found' ,false,200);
        }

        $subs = Category::where('parent_id', $category_id)->get();

        $data = [
            'category_title' => $category['title_'.lang()],
            'categoris' => CategoriesResource::collection($subs)
        ];

        return ResponseHelper::make($data);
    }

    public function subCategory($sub_category_id)
    {
        $sub_category = Category::where('id', $sub_category_id)->where('parent_id', '!=', null)->first();
        if(!$sub_category){
            return ResponseHelper::make(NULL, 'id not found' ,false,200);
        }
        $cards = Card::where('category_id', $sub_category->id)
        ->paginate(20);
        $data = [
            'sub_category_title' => $sub_category['title_'.lang()],
            'cards' => CardResource::collection($cards)->response()->getData(true),
        ];
        return ResponseHelper::make($data);
    }

    public function search()
    {
        $cards = Card::search(['title_ar', 'title_en'], request('search'))->paginate(20);
        $data = [
            'cards' => CardResource::collection($cards)->response()->getData(true),
        ];
        return ResponseHelper::make($data);
    }

    public function contactUs(ContactUsRequest $request)
    {
        $contact = new Contact();
        $contact->name = $request->name;
        $contact->email = $request->email;
        $contact->phone = $request->phone;
        $contact->subject = $request->subject;
        $contact->body = $request->body;
        $contact->save();

        Notification::send(null, null, $request->name, null, null, route('dashboard.contacts') );

        $data = [
            'message' => __('dash.sended_successfully'),
        ];
        return ResponseHelper::make($data, $data['message']);
    }

    public function about()
    {
        $data = [
            'about_us' => setting('about_paragraph_'.lang()),
        ];

        return ResponseHelper::make($data);
    }

    public function terms()
    {
        $terms =  Sidepage::where('key', 'terms')->first();

        $data = [
            'terms' => $terms['value_'.lang()] ?? ''
        ];

        return ResponseHelper::make($data);
    }

    public function privacy()
    {
        $privacy =  Sidepage::where('key', 'privacy')->first();

        $data = [
            'privacy' => $privacy['value_'.lang()] ?? ''
        ];

        return ResponseHelper::make($data);
    }

    public function show_card($card_id)
    {
        $card = Card::find($card_id);
        if(!$card){
            return ResponseHelper::make(NULL, 'id not found' ,false,200);
        }
        $retalted_cards = Card::where('category_id', $card->category_id)->take(10)->get();
        $data = [
            'card' => CardResource::make($card),
            'related_cards' => CardResource::collection($retalted_cards)
        ];

        ResponseHelper::make($data);
    }

    public function version_checker(Request $request)
    {
        $request->validate([
            'device_token' => 'required',
            'device_version' => 'required',
            'device_type' => 'required',
        ]);
        if(auth('sanctum')->check()){
            $token = Token::where('device_token', $request->device_token)->first();
            if(!$token){
                $token = new Token();
                $token->user_id = auth('sanctum')->id();
                $token->device_token = $request->device_token;
                $token->device_type = $request->device_type;
            }
            $token->device_version = $request->device_version;
            $token->save();
        }
        $data = [
            "app_lock" => setting('app_lock'),
            "app_lock_msg" => __('dash.app_lock_msg'),
            "ios_version" => setting('ios_version'),
            "android_version" => setting('android_version'),
            "ios_link" => setting('apple_link'),
            "android_link" => setting('google_link'),
            "copyright_link" => "https://emcan-group.com/",
        ];

        ResponseHelper::make($data);
    }

    public function more()
    {
        $data = [
            "tiktok" => setting('tiktok'),
            "snapchat" => setting('snapchat'),
            "instagram" => setting('instagram'),
            "twitter" => setting('twitter'),
            "facebook" => setting('facebook'),
            "copyright_link" => "https://emcan-group.com/",
        ];

        ResponseHelper::make($data);
    }

    public function category_title($category_id)
    {
        $category = Category::find($category_id);
        if($category){
            $data = [
                'title' => $category['title_'.lang()]
            ];
            ResponseHelper::make($data);
        }

        ResponseHelper::make(null, 'id not found');
    }
}
