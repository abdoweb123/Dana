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
                        <li class="nav-item" role="presentation">
                            <button class="nav-link fw-semibold m-2 active rounded-0 text-black">حسابي الشخصي</button>
                        </li>
                        <a class="text-decoration-none">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link fw-semibold m-2 text-black rounded-0">طلباتي</button>
                            </li>
                        </a>
                        <a href="{{ route('change_password') }}" class="text-decoration-none">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link fw-semibold m-2 text-black rounded-0">تغيير كلمة المرور</button>
                            </li>
                        </a>
                    </ul>
                </div>
                <div class="col-sm-9">
                    <x-alert></x-alert>
                    <div class="tab-content mt-3" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-home" role="tabpanel"
                            aria-labelledby="pills-home-tab" tabindex="0">
                            <form action="{{ route('change_profile') }}" method="POST">
                                @csrf
                                <div class="d-flex flex-column">
                                    <input type="text" name="name" value="{{ $user->name }}" class="form-control rounded-2 mt-3" required>
                                    <input type="email" name="email"  value="{{ $user->email }}" class="form-control rounded-2 mt-3" required>
                                    <input type="number" name="phone"  value="{{ $user->phone }}" class="form-control rounded-2 mt-3" required>
                                    <div class="d-flex mt-4 align-items-center">
                                        <button type="submit" class="btn btn-primary text-white rounded-2 py-1 px-5">حفظ</button>
                                    </div>
                                </div>    
                            </form>
                        </div>
                        <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab"
                            tabindex="0">
                            <div class="card mt-3">
                                <div class="card-body d-flex flex-row justify-content-between row">
                                    <div class="d-flex flex-column col-sm-2">
                                        <h5 class="card-title text-change-password fw-normal fs-6">رقم الطلب</h5>
                                        <p class="card-text fw-semibold"> 44536564634</p>
                                    </div>
                                    <div class="d-flex flex-column col-sm-2">
                                        <h5 class="card-title text-change-password fw-normal fs-6">العناصر</h5>
                                        <p class="card-text fw-semibold">1.</p>
                                    </div>
                                    <div class="d-flex flex-column col-sm-2">
                                        <h5 class="card-title text-change-password fw-normal fs-6">تاريخ الشراء</h5>
                                        <p class="card-text fw-semibold">12 أكتوبر 2023</p>
                                    </div>
                                    <div class="d-flex flex-column col-sm-2">
                                        <h5 class="card-title text-change-password fw-normal fs-6">إجمالي الدفع</h5>
                                        <p class="card-text fw-semibold">37 د.ب</p>
                                    </div>
                                    <div class="d-flex flex-column col-sm-3">
                                        <a href="order-details.html"
                                            class="btn btn-outline-primary py-1 px-0 fw-semibold">عرض التفاصيل</a>
                                    </div>
                                </div>
                            </div>
                            <div class="card mt-3">
                                <div class="card-body d-flex flex-row justify-content-between row">
                                    <div class="d-flex flex-column col-sm-2">
                                        <h5 class="card-title text-change-password fw-normal fs-6">رقم الطلب</h5>
                                        <p class="card-text fw-semibold"> 44536564634</p>
                                    </div>
                                    <div class="d-flex flex-column col-sm-2">
                                        <h5 class="card-title text-change-password fw-normal fs-6">العناصر</h5>
                                        <p class="card-text fw-semibold">1.</p>
                                    </div>
                                    <div class="d-flex flex-column col-sm-2">
                                        <h5 class="card-title text-change-password fw-normal fs-6">تاريخ الشراء</h5>
                                        <p class="card-text fw-semibold">12 أكتوبر 2023</p>
                                    </div>
                                    <div class="d-flex flex-column col-sm-2">
                                        <h5 class="card-title text-change-password fw-normal fs-6">إجمالي الدفع</h5>
                                        <p class="card-text fw-semibold">37 د.ب</p>
                                    </div>
                                    <div class="d-flex flex-column col-sm-3">
                                        <a href="order-details.html"
                                            class="btn btn-outline-primary py-1 px-0 fw-semibold">عرض التفاصيل</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
