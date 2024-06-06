@extends('admin.layout')

@section('title')
    <x-pageTitle current="Home">
        <li class="breadcrumb-item active" aria-current="page">
            {{ __('dash.home') }}
        </li>
    </x-pageTitle>
@endsection

@section('content')
    <div class="header row">
        <div class="col-6 col-md-4 mb-3">
            <div class="bg-dark-100 card rounded-md shadow">
                <a href="{{ route('dashboard.orders') }}" class="card-body">
                    <h5>{{ __('dash.daily_orders') }}</h5>
                    <p style="font-size: xxx-large;"
                        class="{{ lang('en') ? 'float-lg-end' : 'float-lg-start' }} mt-5 text-semi-bold text-primary">
                        {{ $home['daily_orders'] ?? '' }}</p>
                </a>
            </div>
        </div>
        <div class="col-6 col-md-4 mb-3">
            <div class="bg-dark-100 card rounded-md shadow">
                <a href="{{ route('dashboard.orders') }}" class="card-body">
                    <h5>{{ __('dash.weekly_orders') }}</h5>
                    <p style="font-size: xxx-large;"
                        class="{{ lang('en') ? 'float-lg-end' : 'float-lg-start' }} mt-5 text-semi-bold text-primary">
                        {{ $home['weekly_orders'] ?? '' }}</p>
                </a>
            </div>
        </div>
        <div class="col-6 col-md-4 mb-3">
            <div class="bg-dark-100 card rounded-md shadow">
                <a href="{{ route('dashboard.orders') }}" class="card-body">
                    <h5>{{ __('dash.monthly_orders') }}</h5>
                    <p style="font-size: xxx-large;"
                        class="{{ lang('en') ? 'float-lg-end' : 'float-lg-start' }} mt-5 text-semi-bold text-primary">
                        {{ $home['monthly_orders'] ?? '' }}</p>
                </a>
            </div>
        </div>
        <div class="col-6 col-md-6 mb-3">
            <h1>{{ $orders->options['chart_title'] }}</h1>
            {!! $orders->renderHtml() !!}
        </div>
        <div class="col-6 col-md-6 mb-3">
            <h1>{{ $users->options['chart_title'] }}</h1>
            {!! $users->renderHtml() !!}
        </div>
        <div class="col-6 col-md-3 mb-3">
            <div class="bg-dark-100 card rounded-md shadow">
                <a href="{{ route('dashboard.categories') }}" class="card-body">
                    <h5>{{ __('dash.categories') }}</h5>
                    <p style="font-size: xxx-large;"
                        class="{{ lang('en') ? 'float-lg-end' : 'float-lg-start' }} mt-5 text-semi-bold text-primary">
                        {{ $home['categories'] ?? '' }}</p>
                </a>
            </div>
        </div>
        <div class="col-6 col-md-3 mb-3">
            <div class="bg-dark-100 card rounded-md shadow">
                <a href="{{ route('dashboard.groups') }}" class="card-body">
                    <h5>{{ __('dash.cards') }}</h5>
                    <p style="font-size: xxx-large;"
                        class="{{ lang('en') ? 'float-lg-end' : 'float-lg-start' }} mt-5 text-semi-bold text-primary">
                        {{ $home['cards'] ?? '' }}</p>
                </a>
            </div>

        </div>
        <div class="col-6 col-md-3 mb-3">
            <div class="bg-dark-100 card rounded-md shadow">
                <a href="{{ route('dashboard.groups') }}"  class="card-body">
                    <h5>{{ __('dash.groups') }}</h5>
                    <p style="font-size: xxx-large;"
                        class="{{ lang('en') ? 'float-lg-end' : 'float-lg-start' }} mt-5 text-semi-bold text-primary">
                        {{ $home['groups'] ?? '' }}</p>
                </a>
            </div>

        </div>
        <div class="col-6 col-md-3 mb-3">
            <div class="bg-dark-100 card rounded-md shadow">
                <a href="{{ route('dashboard.groups') }}" class="card-body">
                    <h5>{{ __('dash.serials') }}</h5>
                    <p style="font-size: xxx-large;"
                        class="{{ lang('en') ? 'float-lg-end' : 'float-lg-start' }} mt-5 text-semi-bold text-primary">
                        {{ $home['serials'] ?? '' }}</p>
                </a>
            </div>
        </div>
        <div class="col-6 col-md-3 mb-3">
            <div class="bg-dark-100 card rounded-md shadow">
                <a href="{{ route('dashboard.groups') }}"  class="card-body">
                    <h5>{{ __('dash.sold_serials') }}</h5>
                    <p style="font-size: xxx-large;"
                        class="{{ lang('en') ? 'float-lg-end' : 'float-lg-start' }} mt-5 text-semi-bold text-primary">
                        {{ $home['sold_serials'] ?? '' }}</p>
                </a>
            </div>
        </div>
        <div class="col-6 col-md-3 mb-3">
            <div class="bg-dark-100 card rounded-md shadow">
                <a href="{{ route('dashboard.orders') }}"  class="card-body">
                    <h5>{{ __('dash.orders') }}</h5>
                    <p style="font-size: xxx-large;"
                        class="{{ lang('en') ? 'float-lg-end' : 'float-lg-start' }} mt-5 text-semi-bold text-primary">
                        {{ $home['orders'] ?? '' }}</p>
                </a>
            </div>
        </div>
        <div class="col-6 col-md-3 mb-3">
            <div class="bg-dark-100 card rounded-md shadow">
                <a href="{{ route('dashboard.contacts') }}"  class="card-body">
                    <h5>{{ __('dash.contactus') }}</h5>
                    <p style="font-size: xxx-large;"
                        class="{{ lang('en') ? 'float-lg-end' : 'float-lg-start' }} mt-5 text-semi-bold text-primary">
                        {{ $home['contacs'] ?? '' }}</p>
                </a>
            </div>
        </div>
        <div class="col-6 col-md-3 mb-3">
            <div class="bg-dark-100 card rounded-md shadow">
                <a href="{{ route('dashboard.users') }}"  class="card-body">
                    <h5>{{ __('dash.users') }}</h5>
                    <p style="font-size: xxx-large;"
                        class="{{ lang('en') ? 'float-lg-end' : 'float-lg-start' }} mt-5 text-semi-bold text-primary">
                        {{ $home['users'] ?? '' }}</p>
                </a>
            </div>
        </div>
    </div>
@endsection

@section('js')
{!! $orders->renderChartJsLibrary() !!}
{!! $orders->renderJs() !!}
{!! $users->renderJs() !!}
@endsection
