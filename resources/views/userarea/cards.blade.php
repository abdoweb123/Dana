@extends('userarea.layout')
@section('content')
    <section class="todays-offers py-5">
        <div class="container">
            <div class="d-flex justify-content-start">
                <a style="text-decoration: none; color: black" href="{{ route('home') }}">
                    <h6 class="fw-semibold">
                        {{ __('dash.home') }}
                    </h6>
                </a>
                <a style="text-decoration: none" href="{{ route('category', ['category_id'=>$category->parent_id, 'category_name'=>$category->parent['title_'.lang()]]) }}">
                    <h6 class="text-header">  /  {{ $category->parent['title_'.lang()] }}</h6>
                </a>
                <h6 class="text-header">  /  {{ $category['title_'.lang()] }}</h6>
            </div>

            <h4 class="text-black mt-2 fw-semibold">{{ $category['title_'.lang()] }}</h4>

            <!-- start row -->
            <div class="row g-4 mt-2 d-flex justify-content-center justify-content-md-start">
                @foreach ($category->cards as $card)
                <div class="col-md-4 col-sm-6 col-9 col-xl-3">
                    <div class="card rounded-3 border-0 shadow p-4">
                        <div class="card-body d-flex flex-column ">
                            <div class="d-flex">
                                <img src="{{ asset($card->image) }}"
                                    class="home-cards rounded-3 mx-auto object-fit-cover w-100 h-100" alt="...">
                            </div>

                            <h5 class="card-title mt-4">{{ $card['title_'.lang()] }}</h5>
                            <p class="card-text text-primary fw-semibold">BD {{ $card->price - $card->discount }} <span
                                    class="text-header mx-2 text-decoration-line-through">BD {{ $card->price }}</span></p>
                            <a
                                class="text-center d-flex justify-content-center align-items-center btn-max mx-auto text-decoration-none">
                                <button href="#" class="btn btn-primary text-white rounded-2"> أضف الى السلة </button>
                            </a>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
        </div>
    </section>
@endsection
