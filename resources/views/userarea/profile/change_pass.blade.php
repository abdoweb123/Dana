@extends('userarea.layout')
@section('content')
    <section class="account-info py-5">
        <div class="container">
            <div class="d-flex justify-content-start align-items-center">
                <h4 class="mx-1 fw-bold">الصفحة الرئيسية</h4>
                <h6 class="mx-1 fw-semibold text-secondary">/ حسابي الشخصي </h6>
            </div>

            <!-- start taps -->
            <div class="row">
                <div class="col-sm-3">
                    <ul class="nav nav-pills mb-3 d-flex flex-column mt-3" id="pills-tab" role="tablist">
                        <a href="{{ route('my_profile') }}" class="text-decoration-none">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link fw-semibold m-2 rounded-0 text-black">حسابي الشخصي</button>
                            </li>
                        </a>
                        <a class="text-decoration-none">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link fw-semibold m-2 text-black rounded-0">طلباتي</button>
                            </li>
                        </a>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link fw-semibold active m-2 text-black rounded-0">تغيير كلمة
                                المرور</button>
                        </li>
                    </ul>
                </div>
                <div class="col-sm-9">
                    <div class="tab-content mt-3" id="pills-tabContent">
                        <x-alert></x-alert>
                        <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                            aria-labelledby="pills-home-tab" tabindex="0">
                            <form action="{{ route('change_password_post') }}" method="post">
                                @csrf
                                <div class="d-flex flex-column">
                                    <div class="form-outline mb-4">
                                        <input name="password" type="password" id="password-field" class="form-control "
                                            placeholder="كلمة المرور الحالية" />
                                        <span toggle="#password-field"
                                            class="bi bi-eye bi-eye-slash field-icon toggle-password float-left"></span>
                                    </div>
                                    <div class="form-outline mb-4">
                                        <input name="new_password" type="password" id="password-field" class="form-control "
                                            placeholder=" كلمة المرور الجديدة" />
                                        <span toggle="#password-field"
                                            class="bi bi-eye bi-eye-slash field-icon toggle-password float-left"></span>
                                    </div>
                                    <div class="form-outline mb-4">
                                        <input name="new_password_confirmation" type="password" id="password-field" class="form-control "
                                            placeholder=" تأكيد كلمة المرور الجديدة" />
                                        <span toggle="#password-field"
                                            class="bi bi-eye bi-eye-slash field-icon toggle-password float-left"></span>
                                    </div>
    
                                    <div class="d-flex mt-4 align-items-center">
                                        <button type="submit" class="btn btn-primary text-white rounded-2 py-1 px-5">حفظ</button>
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
