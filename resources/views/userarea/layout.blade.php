<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="{{ asset('userarea') }}/images/logo.png">
    <title> Al Dana Website </title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Tajawal:wght@200;300;400;500;700;800;900&display=swap"
          rel="stylesheet">

    <!-- CSS Files -->
    <!-- bootstrap css file -->
    <link rel="stylesheet" href="{{ asset('userarea') }}/css/bootstrap.css" />
    <!-- bootstrap-icon css file -->
    <link rel="stylesheet" href="{{ asset('userarea') }}/Assets/bootstrap-icon/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
          integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- animation library css file -->
    <link rel="stylesheet" href="{{ asset('userarea') }}/Assets/aos/aos.css">
    <!-- swiper css file -->
    <link rel="stylesheet" href="{{ asset('userarea') }}/Assets/swiper/swiper-bundle.min.css">
    <!-- Template Main CSS File -->
    <link rel="stylesheet" href="{{ asset('userarea') }}/css/style.css" />

    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">

    @yield('css')
    <style>
        @if(lang() == 'ar')
        body{direction: rtl}
        @else
        body{direction: ltr}
        .slick-track{
            float:right;
        }
        @endif
    </style>

    @yield('style')

{{-- <link href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/11.0.9/css/intlTelInput.css" rel="stylesheet" media="screen">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/11.0.9/js/intlTelInput.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/11.0.9/js/intlTelInput.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/11.0.9/js/utils.js"></script> -->
--}}
<!-- favicon -->

</head>

<body>
<x-nav-component />

@yield('content')

<footer class="">
    <div class="fw-normal bg-success p-3">
        <div class="container">
            <div class="d-flex row ms-auto">
                <div class="col-lg-6 col-12">
                    <div class="row d-flex justify-content-between overflow-x-hidden">
                        <div class="col-2 col-sm-2 mx-1">
                            <img src="{{ asset('userarea') }}/images/logo2.png" alt="" class="object-fit-contain">
                        </div>
                        <div class="col-2 col-sm-2 mx-1">

                            <img src="{{ asset('userarea') }}/images/logo3.png" alt="" class="object-fit-contain">
                        </div>
                        <div class="col-2 col-sm-2 mx-1">

                            <img src="{{ asset('userarea') }}/images/logo4.png" alt="" class="object-fit-contain">
                        </div>
                        <div class="col-2 col-sm-2 mx-1">

                            <img src="{{ asset('userarea') }}/images/logo5.png" alt="" class="object-fit-contain">
                        </div>
                        <div class="col-2 col-sm-2 mx-1">

                            <img src="{{ asset('userarea') }}/images/logo6.png" alt="" class="object-fit-contain">
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                </div>
            </div>
        </div>
    </div>
    <div class="fw-normal  bg-secondary py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-6">
                    <h4 class="text-footer fw-semibold">بطاقات الدانة</h4>
                    <a href="todays-offers.html"
                       class="text-decoration-none text-footer d-flex flex-column m-2">عروض اليوم </a>
                    <a href="savingsgroup.html"
                       class="text-decoration-none text-footer d-flex flex-column m-2">مجموعات التوفير</a>
                    <a href="bestseller.html"
                       class="text-decoration-none text-footer d-flex flex-column m-2">البطاقات الأكثر مبيعاً</a>
                    <a href="new-cards.html"
                       class="text-decoration-none text-footer d-flex flex-column m-2">البطاقات الجديدة</a>
                    <a href="aboutus.html" class="text-decoration-none text-footer d-flex flex-column m-2">حول
                        بطاقات الدانة </a>
                </div>
                <div class="col-md-3 col-6">
                    <h4 class="text-footer fw-semibold">الدعم</h4>
                    <a href="privacypolicy.html"
                       class="text-decoration-none text-footer d-flex flex-column m-2">سياسة الخصوصية</a>
                    <a href="termsandcondisyional.html"
                       class="text-decoration-none text-footer d-flex flex-column m-2">شروط الأستخدام</a>
                    <a href="contact-us.html" class="text-decoration-none text-footer d-flex flex-column m-2">اتصل
                        بنا</a>
                </div>
                <div class="col-md-3 col-12 mt-4 mt-sm-4">
                    <h4 class="text-footer fw-semibold">تنزيل التطبيق من</h4>
                    <div class="row g-3">
                        <div class="col-md-8 col-5">
                            <img src="{{ asset('userarea') }}/images/app-store-and-google-play2.png" alt="" class="w-100">
                        </div>
                        <div class="col-md-8 col-5">
                            <img src="{{ asset('userarea') }}/images/app-store-and-google-play3.png" alt="" class="w-100">
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-12 mt-4 mt-sm-4 mb-5">
                    <h4 class="text-footer fw-semibold">تابعنا علي</h4>
                    <div class="social-links d-flex">
                        <a href=""
                           class="d-flex align-items-center justify-content-center rounded-5 me-2 facebook fs-5"
                           target="_blank"><i class="bi bi-facebook"></i></a>
                        <a href="#"
                           class="d-flex align-items-center justify-content-center rounded-5 me-2 twitter fs-5"><i
                                class="bi bi-twitter"></i></a>
                        <a href=""
                           class="d-flex align-items-center justify-content-center rounded-5 me-2 instagram fs-5"
                           target="_blank"><i class="bi bi-instagram"></i></a>
                        <a href=""
                           class="d-flex align-items-center justify-content-center rounded-5 me-2 instagram fs-5"
                           target="_blank"><i class=" bi bi-snapchat"></i></a>
                        <a href=""
                           class="d-flex align-items-center justify-content-center rounded-5 me-2 linkedin fs-5"
                           target="_blank"><i class="bi bi-linkedin"></i></a>

                    </div>

                </div>
            </div>
            <div class="row d-flex justify-content-center">
                <div class="col-sm-3 col-5">
                    <img src="{{ asset('userarea') }}/images/footer-logo.png" alt="" class="w-100">
                </div>
            </div>

        </div>
    </div>
    <div class="fw-normal text-white bg-danger p-3">
        <div class="container">
            <div class="d-flex justify-content-between">
                <a href="" class="text-decoration-none text-white">Powered by <span class="text-primary">
                            Emcan Solutions</span> </a>
                <a href="" class="text-decoration-none text-white">© 2023 Al Dana Cards. All right
                    reserved</a>
            </div>
        </div>
    </div>
</footer>
<!-- End copyright -->

<!--====== BACK TO TP PART START ======-->
<button type="button" class="btn-back-to-top btn btn-primary text-white rounded-circle py-2 px-2">
    <i class="bi bi-chevron-double-up"></i></button>
<a href="https://wa.me/+97334479384" class="whats-app" target="_blank" data-toggle="tooltip"
   data-placement="bottom" title="Whatsapp">
    <i class="bi bi-whatsapp my-float"></i>
</a>

<!--====== BACK TO TP PART ENDS ======-->


<!-- JS Files -->
<!-- animation library js file -->
<script src="{{ asset('userarea') }}/Assets/aos/aos.js"></script>
<!-- bootstrap js file -->
<script src="{{ asset('userarea') }}/js/bootstrap.bundle.min.js"></script>
<!-- swiper js file -->
<script src="{{ asset('userarea') }}/Assets/swiper/swiper-bundle.min.js"></script>
<!-- main js file -->
<script src="{{ asset('userarea') }}/js/script.js"></script>
<script src="{{ asset('userarea') }}/js/input.js"></script>

<script>
    const alerts = document.querySelectorAll(".alert");
    for (const alert of alerts) {
        setTimeout(function() {
            alert.remove();
        }, 5000);
    }
</script>

{{-- For Aleart zoom in --}}
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script>
    AOS.init();
</script>

@yield('js')
@stack('js')


</body>

</html>
