@extends('userarea.layout')
@section('css')
    <link rel="stylesheet" href="https://unpkg.com/intl-tel-input@17.0.3/build/css/intlTelInput.css">
    <style>
        .tel_input {
            padding-left: 94px;
            height: 46px;
            width: -moz-available;
        }

        .iti {
            width: 100%
        }
    </style>

    <!-- phone input  -->
    {{-- <link href="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/11.0.9/css/intlTelInput.css" rel="stylesheet"
        media="screen">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/11.0.9/js/intlTelInput.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/11.0.9/js/intlTelInput.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/intl-tel-input/11.0.9/js/utils.js"></script> --}}
@endsection
@section('content')
    <section class="sign-in py-5 bg-white">
        <div class="container">
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card shadow-lg border-0">
                        <div class="card-body py-5">
                            <h3 class="mb-5 text-footer fw-semibold text-center">إنشاء حساب</h3>
                            <x-alert></x-alert>
                            <form action="{{ route('register.post') }}" method="POST">
                                @csrf
                                <div class=" text-center row d-flex justify-content-center">
                                    <div class="form-outline mb-4 col-sm-10">
                                        <input name="name" type="text" value="{{ old('name') }}" class="form-control form-control-lg"
                                            placeholder="الأسم بالكامل " />
                                    </div>

                                    <div class="form-outline mb-4 col-sm-10">
                                        <input name="email" type="email" value="{{ old('email') }}" id="typeEmailX-2" class="form-control form-control-lg"
                                            placeholder="البريد الألكتروني" />
                                    </div>
                                    <div class="form-outline mb-4 col-sm-10">
                                        <input required type="text" name="phone" value="{{ old('phone') }}" class="form-control form-control-lg tel_input" id="phone">
                                        <input hidden type="text" name="country_code" value="973"
                                            class="country_code">
                                    </div>
                                    <div class="form-outline mb-4 col-sm-10">
                                        <input name="password" type="password"  id="password-field" class="form-control form-control-lg"
                                            placeholder="كلمة المرور" />
                                        <span toggle="#password-field"
                                            class="bi bi-eye bi-eye-slash field-icon toggle-password float-left"></span>
                                    </div>
                                    <div class="form-outline mb-4 col-sm-10">
                                        <input name="password_confirmation" type="password" id="password-field" class="form-control form-control-lg"
                                            placeholder="كلمة المرور" />
                                        <span toggle="#password-field"
                                            class="bi bi-eye bi-eye-slash field-icon toggle-password float-left"></span>
                                    </div>

                                    <div class="col-sm-10 ms-2 text-start"> <a href="reset-password.html"
                                            class="text-warning fw-semibold text-decoration-none">هل نسيت كلمة المرور؟</a>
                                    </div>

                                    <div class="row d-flex flex-column justify-content-center align-items-center g-3">
                                        <div class="col-sm-10">
                                            <button class="btn text-white btn-primary rounded-2" type="submit"
                                                style="width: -webkit-fill-available!important;">إنشاء حساب</button>
                                        </div>

                                        <div class="col-sm-10 ms-2"> <a href=""
                                                class="text-warning text-decoration-none">هل لديك حساب؟ <a
                                                    href="{{ route('login.index') }}" class="text-primary text-decoration-none">تسجيل
                                                    الدخول</a></a> </div>

                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection


@push('js')
    <script src="https://unpkg.com/flowbite@1.4.4/dist/flowbite.js"></script>
    <script src="{{ asset('jquery/jquery-3.7.0.min.js') }}"></script>

    <script src="https://unpkg.com/intl-tel-input@17.0.3/build/js/intlTelInput.js"></script>
    <script>
        var countries = @json($countries);
        length = @json($countries->first()->length);
        $('#phone').attr("minlength", length);
        $('#phone').attr("maxlength", length);
        $('#phone').attr("size", length);
        var iti = window.intlTelInput(document.querySelector("#phone"), {
            separateDialCode: true,
            onlyCountries: @json($countries->pluck('country_code')->toarray()),
            utilsScript: "https://unpkg.com/intl-tel-input@17.0.3/build/js/utils.js"
        });
        window.iti = iti;
        document.querySelector("#phone").addEventListener("countrychange", function() {
            $('#phone').val('');
            dialCode = iti.getSelectedCountryData().dialCode;
            $.each(@json($countries), function(key, element) {
                if (element.phone_code.includes(dialCode)) {
                    length = element.length;
                }
            });
            $('#phone').attr("minlength", length);
            $('#phone').attr("maxlength", length);
            $('#phone').attr("size", length);

            const countryData = iti.getSelectedCountryData();
            const phone = iti.getNumber();

            $('.country_code').val(countryData.dialCode);
            console.log('here');
        })
    </script>

<script>
    document.addEventListener('DOMContentLoaded', function() {
      var numericInput = document.getElementById('phone');

      numericInput.addEventListener('input', function(event) {
        // Get the input value and remove any non-numeric characters
        var inputValue = event.target.value.replace(/[^0-9]/g, '');

        // Update the input field with the cleaned value
        numericInput.value = inputValue;
      });
    });
  </script>
@endpush
