<?php

namespace App\Livewire;

use App\Models\Setting;
use Livewire\Component;
use App\Functions\Upload;
use Livewire\WithFileUploads;
use Jantinnerezo\LivewireAlert\LivewireAlert;

class PublicSetting extends Component
{
    use WithFileUploads, LivewireAlert;

    #system
    public $title, $tax = 0, $logo, $apple_link, $google_link, $android_version, $ios_version, $app_lock;

    #contact
    public $linkedin, $snapchat, $instagram, $twitter, $facebook;
    public $contact_us_header, $contact_us_title_en, $contact_us_title_ar;
    public $newsletter_image, $newsletter_title_1_en, $newsletter_title_1_ar, $newsletter_title_2_en, $newsletter_title_2_ar;

    #footer
    public $footer_logo;

    public $old_logo;
    public $old_contact_us_header;
    public $old_newsletter_image;
    public $old_footer_logo;

    public function store()
    {
        $this->createOrUpdate('title', $this->title);
        $this->createOrUpdate('ios_version', $this->ios_version);
        $this->createOrUpdate('android_version', $this->android_version);
        $this->createOrUpdate('app_lock', $this->app_lock);
        $this->createOrUpdate('tax', $this->tax);
        $this->createOrUpdate('google_link', $this->google_link);
        $this->createOrUpdate('apple_link', $this->apple_link);
        $this->createOrUpdate('logo', $this->logo);

        $this->createOrUpdate('linkedin', $this->linkedin);
        $this->createOrUpdate('snapchat', $this->snapchat);
        $this->createOrUpdate('instagram', $this->instagram);
        $this->createOrUpdate('twitter', $this->twitter);
        $this->createOrUpdate('facebook', $this->facebook);

        $this->createOrUpdate('contact_us_title_ar', $this->contact_us_title_ar);
        $this->createOrUpdate('contact_us_title_en', $this->contact_us_title_en);
        $this->createOrUpdate('contact_us_header', $this->contact_us_header);

        $this->createOrUpdate('newsletter_title_1_ar', $this->newsletter_title_1_ar);
        $this->createOrUpdate('newsletter_title_1_en', $this->newsletter_title_1_en);
        $this->createOrUpdate('newsletter_title_2_ar', $this->newsletter_title_2_ar);
        $this->createOrUpdate('newsletter_title_2_en', $this->newsletter_title_2_en);
        $this->createOrUpdate('newsletter_image', $this->newsletter_image);

        $this->createOrUpdate('footer_logo', $this->footer_logo);

        $this->alert('success', __('dash.alert_update') );
    }

    private function createOrUpdate($key, $value)
    {
        $setting = Setting::where('key', $key)->first();
        if(!$setting){
            $setting = new Setting();
        }
        $setting->key = $key;
        if($value != null){
            if(in_array($key, ['logo','newsletter_image', 'contact_us_header','footer_logo'])){
                $setting->value = Upload::UploadFile($value, 'setting') ;
            }else{
                $setting->value = $value;
            }
        }
        $setting->save();
    }


    public function mount()
    {

        if(!auth('admin')->user()->hasPermissionTo('show settings')){
            abort(401);
        }

        $setting = Setting::get();

        #system
        $this->title = $setting->where('key', 'title')->first()?->value;
        $this->android_version = $setting->where('key', 'android_version')->first()?->value;
        $this->app_lock = $setting->where('key', 'app_lock')->first()?->value;
        $this->ios_version = $setting->where('key', 'ios_version')->first()?->value;
        $this->tax = $setting->where('key', 'tax')->first()?->value;
        $this->apple_link = $setting->where('key', 'apple_link')->first()?->value;
        $this->google_link = $setting->where('key', 'google_link')->first()?->value;
        $this->old_logo = $setting->where('key', 'logo')->first()?->value;


        #contact
        $this->linkedin = $setting->where('key', 'linkedin')->first()?->value;
        $this->snapchat = $setting->where('key', 'snapchat')->first()?->value;
        $this->instagram = $setting->where('key', 'instagram')->first()?->value;
        $this->twitter = $setting->where('key', 'twitter')->first()?->value;
        $this->facebook = $setting->where('key', 'facebook')->first()?->value;

        #about us -in home
        $this->contact_us_title_ar = $setting->where('key', 'contact_us_title_ar')->first()?->value;
        $this->contact_us_title_en = $setting->where('key', 'contact_us_title_en')->first()?->value;
        $this->old_contact_us_header = $setting->where('key', 'contact_us_header')->first()?->value;

        $this->newsletter_title_1_ar = $setting->where('key', 'newsletter_title_1_ar')->first()?->value;
        $this->newsletter_title_1_en = $setting->where('key', 'newsletter_title_1_en')->first()?->value;
        $this->newsletter_title_2_ar = $setting->where('key', 'newsletter_title_2_ar')->first()?->value;
        $this->newsletter_title_2_en = $setting->where('key', 'newsletter_title_2_en')->first()?->value;
        $this->old_newsletter_image = $setting->where('key', 'newsletter_image')->first()?->value;


        #footer
        $this->old_footer_logo = $setting->where('key', 'footer_logo')->first()?->value;
    }


    public function render()
    {
        return view('livewire.public-setting')
        ->extends('admin.layout')
        ->section('content');
    }

}
