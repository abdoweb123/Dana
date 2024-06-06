@extends('userarea.layout')
@section('content')

<section class="verifide-page py-5 bg-white">
    <div class="container">
      <div class="row d-flex justify-content-center align-items-center">
        <div class="col-12 col-md-8 col-lg-6 col-xl-5">
          <div class="card border-0">
            <div class="card-body py-4">
              <div class=" text-center row d-flex justify-content-center">
                <div class="col-sm-5 col-4">
                  <img src="{{ asset('userarea') }}/images/Verified.png" alt="" class="w-100">
                </div>
              <div class="col-sm-10 ms-2 mt-3"> <h4 class="text-black fw-semibold text-decoration-none">تم توثيق حسابك بنجاح</h4> </div>
  
              <div class="row d-flex flex-column justify-content-center align-items-center g-3">
                <div class="col-sm-12">
                  <a href="{{ route('home') }}" class="btn py-1 px-6 text-white btn-primary rounded-2">  أنتقل الي الصفحة الرئيسية</a></a>
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