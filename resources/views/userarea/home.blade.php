@extends('userarea.layout')
@section('css')
    <link rel="stylesheet" href="{{ asset('userarea') }}/css/slick.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.min.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick-theme.min.css" rel="stylesheet"   />
@endsection

@section('style')
    <style>
        @if(lang() == 'en')
            .most-slied .title {left:80% !important;}
        @else
            .most-slied .title {left:50% !important;}
        @endif
    </style>
@stop

@section('content')
    <section class="" id="most-selling">
        <div class="most-slied">
            <div class="background-image">
                <img class="background-image__image position-relative" src="{{ asset('userarea') }}/images/homeswiper.png"
                     alt="A random unsplash image" />
                <img class="background-overlay position-absolute" src="{{ asset('userarea') }}/images/image5.png"
                     alt="A random unsplash image" />
                <div class="title row flex-column float-end" >
                    <div data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-delay="200"
                         data-aos-duration="800">
                        <h1 class="col-sm-8 fw-bold">توفر PUBG MOBILE</h1>
                    </div>
                    <div data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-delay="400"
                         data-aos-duration="800">
                        <h2 class="col-sm-6">أكبر حركة متعددة اللاعبين مجانًا على الهاتف المحمول.</h2>
                    </div>
                    <button class="title__text btn btn-outline-white rounded-2 col-sm-3 mt-3">أكتشف المزيد من
                        العروض</button>
                </div>
            </div>
            <div class="background-image">
                <img class="background-image__image position-relative" src="{{ asset('userarea') }}/images/homeswiper.png"
                     alt="A random unsplash image" />
                <img class="background-overlay position-absolute" src="{{ asset('userarea') }}/images/image5.png"
                     alt="A random unsplash image" />
                <div class="title row flex-column float-end">
                    <div data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-delay="200"
                         data-aos-duration="800">
                        <h1 class="col-sm-8 fw-bold">توفر PUBG MOBILE</h1>
                    </div>
                    <div data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-delay="400"
                         data-aos-duration="800">
                        <h2 class="col-sm-6">أكبر حركة متعددة اللاعبين مجانًا على الهاتف المحمول.</h2>
                    </div>
                    <button class="title__text btn btn-outline-white rounded-2 col-sm-3 mt-3">أكتشف المزيد من
                        العروض</button>
                </div>
            </div>

            <div class="background-image">
                <img class="background-image__image position-relative" src="{{ asset('userarea') }}/images/homeswiper.png"
                     alt="A random unsplash image" />
                <img class="background-overlay position-absolute" src="{{ asset('userarea') }}/images/image5.png"
                     alt="A random unsplash image" />
                <div class="title row flex-column float-end" >
                    <div data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-delay="200"
                         data-aos-duration="800">
                        <h1 class="col-sm-8 fw-bold">توفر PUBG MOBILE</h1>
                    </div>
                    <div data-aos="fade-up" data-aos-anchor-placement="top-bottom" data-aos-delay="400"
                         data-aos-duration="800">
                        <h2 class="col-sm-6">أكبر حركة متعددة اللاعبين مجانًا على الهاتف المحمول.</h2>
                    </div>
                    <button class="title__text btn btn-outline-white rounded-2 col-sm-3 mt-3">أكتشف المزيد من
                        العروض</button>
                </div>
            </div>

        </div>
    </section>

    <section class="py-4">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 bg-success p-4 rounded-2">
                    <div
                        class="row d-flex flex-row justify-content-start justify-content-sm-start justify-content-md-center align-items-center">
                        <div class="col-md-2 border-start border-2 border-secondary">
                            <h5 class="fw-bold text-black lh-base">لماذا تختار بطاقات الدانة ؟</h5>
                        </div>
                        <div
                            class="col-md-3 d-flex justify-content-start justify-content-md-center  align-items-center border-start border-2 border-secondary">
                            <img src="{{ asset('userarea') }}/images/people.png" alt="" class="mx-3">
                            <h6 class="mt-2 fw-medium text-black">ولاء المستخدمين</h6>
                        </div>
                        <div
                            class="col-md-3 d-flex justify-content-start justify-content-md-center  align-items-center border-start border-2 border-secondary">
                            <img src="{{ asset('userarea') }}/images/lock.png" alt="" class="mx-3">
                            <h6 class="mt-2 fw-medium text-black">طرق دفع أمن</h6>
                        </div>
                        <div class="col-md-3 d-flex justify-content-start justify-content-md-center  align-items-center">
                            <img src="{{ asset('userarea') }}/images/tag.png" alt="" class="mx-3">
                            <h6 class="mt-2 fw-medium text-black">اختيار واسع بأفضل الأسعار</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


    <!-- start section  -->
    <x-ajaxalert></x-ajaxalert>

    @foreach ($groups as $group)
        <section class="py-5">
            <div class="container">
                <div class="d-flex justify-content-between">
                    <h4 class="fw-bold">{{ $group['title_' . lang()] }}</h4>
                    <a href="{{ route('group', $group->id) }}" class="fw-semibold">أكتشف المزيد</a>
                </div>
                <div class="row g-4 mt-2 d-flex justify-content-center justify-content-md-start">
                    @foreach ($group->cards as $card)
                        <div class="col-md-4 col-sm-6 col-9 col-xl-3">
                            <div class="card rounded-3 border-0 shadow p-4">
                                <div class="card-body d-flex flex-column">

                                    <div class="box rounded-3">
                                        <div class="d-flex image-scale rounded-3">
                                            <img src="{{ asset($card->image) }}"
                                                 class="home-cards rounded-3 mx-auto object-fit-cover w-100 h-100"
                                                 alt="...">
                                        </div>
                                    </div>

                                    <h5 class="card-title mt-4">{{ $card['title_' . lang()] }}</h5>
                                    <p class="card-text text-primary fw-semibold">37.15 د.ب <span
                                            class="text-secondary text-decoration-line-through">37.15 د.ب</span>
                                    </p>
                                    <div
                                        class="text-center d-flex justify-content-center align-items-center btn-max mx-auto text-decoration-none">
                                        @auth
                                            <form id="addToCartForm" method="post" action="{{ route('add_to_cart') }}">
                                                @csrf
                                                <button type="button" class="btn btn-primary text-white rounded-2"
                                                        onclick="addToCart({{ $card->id }})">أضف الى السلة</button>
                                            </form>
                                        @else
                                            <a href="{{ route('login.index') }}" type="button" class="btn btn-primary text-white rounded-2"
                                               onclick="addToCart({{ $card->id }})">أضف الى السلة</a>
                                        @endauth
                                    </div>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
    @endforeach


    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <img src="{{ asset('userarea') }}/images/home2.png" alt="" class="img-fluid">
                </div>
            </div>
        </div>
    </section>


    <section class="py-5">
        <div class="container d-flex justify-content-center">
            <div style="position: relative;">
                <img src="{{ asset('userarea') }}/images/Group 39697.png" alt="" class="img-fluid">
                <div class="overlay-text">
                    <h4 class="text-white fw-semibold">حان الوقت لبعض النشرات الإخبارية</h4>
                    <p class="text-white">اشترك في رسالتنا الإخبارية وكن أول من يعرف عروضنا الخاصة.</p>
                    <div class="d-flex">
                        <input type="email" id="" class="form-control" placeholder="البريد الألكتروني">
                        <button class="btn btn-primary text-white rounded-2 mx-2 py-0 py-sm-1">أشترك</button>
                    </div>
                </div>
            </div>

        </div>
    </section>
@endsection

@section('js')
    <script src="{{ asset('userarea') }}/js/slick.js"></script>
    <script src="{{ asset('userarea') }}/js/slick.min.js"></script>
    <script src="{{ asset('userarea') }}/js/homeswiper.js"></script>
    <script>
        $('.most-slied').slick({
            dots: true,
            arrows: false,
            slidesToShow: 1,
            slidesToScroll: 1
        });
    </script>


    <script>
        function addToCart(card_id) {
            // جمع البيانات من النموذج
            var formData = $('#addToCartForm').serialize();
            // إرسال طلب ال Ajax
            $.ajax({
                type: 'POST',
                url: '{{ route('add_to_cart') }}',
                data: {
                    '_token': $('meta[name="csrf-token"]').attr('content'),
                    'card_id': card_id
                },
                dataType: 'json',
                success: function(response) {
                    showNotification(response.success, response.msg);
                },
            });
        }

        function showNotification(type, message) {
            console.log(message);
            if (type == true) {
                $('#alert_success').show();
                $('#alert_success').html(message);
            } else {
                $('#alert_error').show();
                $('#alert_error').html(message);
            }

            setTimeout(function() {
                $('#alert_error, #alert_success').hide();
            }, 5000);

        }

    </script>
@endsection
