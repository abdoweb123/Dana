@extends('userarea.layout')
@section('content')
    <section class="">
        <div class="text-container">
            <div class="text-content">
                <div class="d-flex justify-content-start">
                    <a style="text-decoration: none; color: black" href="{{ route('home') }}">
                        <h6 class="fw-semibold">
                            {{ __('dash.home') }}
                        </h6>
                    </a>
                    <h6 class="text-header"> / {{ $category['title_' . lang()] }}</h6>
                </div>
                <h4 style="color: black"  class="text-center">{{ $category['title_' . lang()] }}</h4>
                <div class="container">
                    <!-- start row -->
                    <div class="row g-4 mt-2 d-flex justify-content-center justify-content-md-start">
                        @foreach ($category->subs as $sub)
                            <div class="col-md-4 col-sm-6 col-9 col-xl-3">
                                <a style="text-decoration: none" href="{{ route('cards', ['category_id'=>$sub->id, 'category_name'=>$sub['title_' . lang()]]) }}">
                                    <div class="card rounded-3 border-0 shadow p-3">
                                        <div class="card-body d-flex flex-column">
                                            <div class="d-flex">
                                                <img src="{{ asset($sub->image) }}" class="home-cards rounded-3 mx-auto object-fit-cover w-100 h-100"
                                                    alt="">
                                            </div>
                                            <h5 class="card-title mt-4 text-black text-center fw-semibold">{{ $sub['title_'.lang()] }}</h5>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
