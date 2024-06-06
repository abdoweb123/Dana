@extends('userarea.layout')
@section('content')
    <section class="verifide-account py-5 bg-white">
        <div class="container">
            <div class="row d-flex justify-content-center align-items-center">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card shadow-lg border-0">
                        <div class="card-body py-5">
                            <h3 class="text-footer fw-semibold">تحقق </h3>
                            <!-- <p class="text-light">أدخل بريدك الألكتروني لإستعادة كلمة المرور </p> -->
                            <x-alert></x-alert>

                            <form action="{{ route('check_otp_post') }}" method="POST">
                                @csrf
                                <div class=" text-center row d-flex justify-content-center">
                                    <div class="form-outline mb-4 col-sm-10">
                                        <input type="text" name="otp" id="typeEmailX-2"
                                            class="form-control form-control-lg" placeholder="رمز التحقق " />
                                    </div>

                                    <div class="col-sm-10 ms-2 text-start"> <a href=""
                                            class="text-warning fw-semibold text-decoration-none" type="button"
                                            data-bs-toggle="modal" data-bs-target="#staticBackdrop">أعادة إرسال كود
                                            التحقق</a>
                                    </div>

                                    <div class="col-sm-10 mt-5">
                                        <button class="btn py-1 px-8 text-white btn-primary rounded-2 " type="submit">
                                            تحقق</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <div class="row d-flex justify-content-center align-items-center">
        <!-- Modal -->
        <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false"
            tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header border-0">
                        <button type="button"
                            class="btn-close p-2 border-black rounded-5 border-2 d-flex justify-content-end align-items-end border"
                            data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <h4 class="fw-bold">أعادة إرسال رمز التحقق</h4>
                        <p class="footer-text fw-semibold">سوف يتم إرسال رمز التحقق علي الواتساب الخاص بك
                            {{ auth()->user()->phone }}</p>
                    </div>
                    <div class="modal-footer border-0 d-flex justify-content-center">
                        <button onclick="document.getElementById('send_again').submit();" type="button"
                            class="btn btn-primary text-white py-1 rounded-2" data-bs-dismiss="modal">أعادة
                            الإرسال</button>
                        <button type="button" class="btn btn-outline-primary py-1 rounded-2">تم
                            الإرسال</button>
                    </div>
                    <form id="send_again" action="{{ route('send_otp_again') }}" method="POST">
                        @csrf
                    </form>
                </div>
            </div>
        </div>
        <!-- end modal  -->
    </div>
@endsection
