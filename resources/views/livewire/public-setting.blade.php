@section('title')
    <x-pageTitle current="{{ __('dash.public_setting') }}">
        <x-breadcrumb title="{{ __('dash.home') }}" route="{{ route('dashboard.home') }}" />
        <x-breadcrumb title="{{ __('dash.public_setting') }}" active />
    </x-pageTitle>
@endsection

<div>
    <div class="bg-body border card-body mb-15 rounded-md shadow">
        <h3 class="bg-info-200 mb-10 mx-auto p-3 rounded-3 rounded-pill text-center w-25">{{ __('dash.system_info') }}</h3>
        <div class="row">
            <x-form.input class="col-12 col-md-6" name="title" label="{{ __('dash.system_title') }}"></x-form.input>
            <x-form.input type="number" class="col-12 col-md-6" name="tax" placeholder="%" label="{{ __('dash.tax') }} %"></x-form.input>
            <x-form.inputImage class="col-8 " label="{{ __('dash.logo') }}" name="logo"></x-form.inputImage>
            <div class="col-2">
                @if ($logo)
                    <img class="rounded" style="width: 100px; height: 100px;" src="{{ $logo->temporaryUrl() }}">
                @elseif ($old_logo)
                    <img class="rounded" style="width: 100px; height: 100px;" src="{{ asset($old_logo) }}">
                @endif
            </div>
            <x-form.input class="col-12 col-md-6" name="google_link" label="{{ __('dash.google_link') }}"></x-form.input>
            <x-form.input class="col-12 col-md-6" name="apple_link" label="{{ __('dash.apple_link') }}"></x-form.input>
            <x-form.input class="col-12 col-md-4" name="android_version" label="android_version"></x-form.input>
            <x-form.input class="col-12 col-md-4" name="ios_version" label="ios_version"></x-form.input>
            <x-form.input class="col-12 col-md-4" name="app_lock" label="app_lock"></x-form.input>
        </div>
    </div>
    <div class="bg-body border card-body mb-15 rounded-md shadow">
        <h3 class="bg-info-200 mb-10 mx-auto p-3 rounded-3 rounded-pill text-center w-25">{{ __('dash.social_contact') }}</h3>
        <div class="row">
            <x-form.input class="col-12 col-md-6" name="facebook" label="{{ __('dash.facebook') }}"></x-form.input>
            <x-form.input class="col-12 col-md-6" name="twitter" label="{{ __('dash.twitter') }}"></x-form.input>
            <x-form.input class="col-12 col-md-6" name="instagram" label="{{ __('dash.instagram') }}"></x-form.input>
            <x-form.input class="col-12 col-md-6" name="snapchat" label="{{ __('dash.snapchat') }}"></x-form.input>
            <x-form.input class="col-12 col-md-6" name="linkedin" label="{{ __('dash.linkedin') }}"></x-form.input>
        </div>
    </div>
    <div class="bg-body border card-body mb-15 rounded-md shadow">
        <h3 class="bg-info-200 mb-10 mx-auto p-3 rounded-3 rounded-pill text-center w-25">{{ __('dash.contactus') }}</h3>
        <div class="row">
            <x-form.input class="col-12 col-md-6" name="contact_us_title_ar" label="{{ __('dash.title_ar') }}"></x-form.input>
            <x-form.input class="col-12 col-md-6" name="contact_us_title_en" label="{{ __('dash.title_en') }}"></x-form.input>
            <x-form.inputImage class="col-8 " label="{{ __('dash.header') }}" name="contact_us_header"></x-form.inputImage>
            <div class="col-2">
                @if ($contact_us_header)
                    <img class="rounded" style="width: 200px; height: 100px;" src="{{ $contact_us_header->temporaryUrl() }}">
                @elseif ($old_contact_us_header)
                    <img class="rounded" style="width: 200px; height: 100px;" src="{{ asset($old_contact_us_header) }}">
                @endif
            </div>
        </div>
    </div>
    <div class="bg-body border card-body mb-15 rounded-md shadow">
        <h3 class="bg-info-200 mb-10 mx-auto p-3 rounded-3 rounded-pill text-center w-25">{{ __('dash.newsletter') }}</h3>
        <div class="row">
            <x-form.input class="col-12 col-md-6" name="newsletter_title_1_ar" label="{{ __('dash.title_ar') }}"></x-form.input>
            <x-form.input class="col-12 col-md-6" name="newsletter_title_1_en" label="{{ __('dash.title_en') }}"></x-form.input>
            <x-form.input class="col-12 col-md-6" name="newsletter_title_2_ar" label="{{ __('dash.title_ar') }}"></x-form.input>
            <x-form.input class="col-12 col-md-6" name="newsletter_title_2_en" label="{{ __('dash.title_en') }}"></x-form.input>
            <x-form.inputImage class="col-8 " label="{{ __('dash.image') }}" name="newsletter_image"></x-form.inputImage>
            <div class="col-2">
                @if ($newsletter_image)
                    <img class="rounded" style="width: 100px; height: 100px;" src="{{ $newsletter_image->temporaryUrl() }}">
                @elseif ($old_newsletter_image)
                    <img class="rounded" style="width: 100px; height: 100px;" src="{{ asset($old_newsletter_image) }}">
                @endif
            </div>
        </div>
    </div>
    <div class="bg-body border card-body mb-15 rounded-md shadow">
        <h3 class="bg-info-200 mb-10 mx-auto p-3 rounded-3 rounded-pill text-center w-25">{{ __('dash.footer_info') }}</h3>
        <div class="row">
            <div class="row">
                <x-form.inputImage class="col-8 col-md-4" label="{{ __('dash.logo') }}" name="footer_logo"></x-form.inputImage>
                <div class="col-2">
                    @if ($footer_logo)
                        <img class="rounded" style="width: 100px; height: 100px;" src="{{ $footer_logo->temporaryUrl() }}">
                    @elseif ($old_footer_logo)
                        <img class="rounded" style="width: 100px; height: 100px;" src="{{ asset($old_footer_logo) }}">
                    @endif
                </div>
            </div>
        </div>
    </div>
    @if (auth('admin')->user()->hasPermissionTo('edit settings'))
        <x-form.btn wireAction="store" title="Submit" class="btn-primary mt-15"></x-form.btn>
    @endif
    </div>
</div>
