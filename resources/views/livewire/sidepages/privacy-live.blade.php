@section('title')
    <x-pageTitle current="{{ __('dash.pp') }}">
        <x-breadcrumb title="{{ __('dash.home') }}" route="{{ route('dashboard.home') }}" />
        <x-breadcrumb title="{{ __('dash.pp') }}" active />
    </x-pageTitle>
@endsection

<div>
    <div class="border card-body rounded-md shadow mb-15">
        <x-form.textarea wire:model="value_en" label="{{ __('dash.content_en') }}"></x-form.textarea>
        <x-form.textarea wire:model="value_ar" label="{{ __('dash.content_ar') }}"></x-form.textarea>
        @if (auth('admin')->user()->hasPermissionTo('edit privacy policy'))
        <button wire:click="store" wire:loading.attr="disabled" class="btn btn-primary">{{ __('dash.submit') }}</button>
        @endif
    </div>
</div>