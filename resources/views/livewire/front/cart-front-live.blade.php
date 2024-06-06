<div>
    @if (count($cart_items) > 0)
        <section class="cart py-5 bg-white">
            <div class="container">
                <div class="d-flex justify-content-between align-items-center">
                    <div class="d-flex align-items-center">

                        <a href="" class="text-decoration-none text-black">
                            <h4 class="mx-1 fw-semibold text-black"> السلة</h4>
                        </a>

                    </div>
                </div>
                <x-alert></x-alert>
                <div class="d-flex g-3 justify-content-center  row" wire:loading.class='opacity-25 disabled'>
                    <div class="col-12 col-md-7 col-lg-7 col-xl-7">
                        <div class="card mt-3">
                            <div class="card-body">
                                <div class="col-sm-12 mt-3  flex-row flex-sm-row justify-content-between">
                                    <div class="row">
                                        @foreach ($cart_items as $item)
                                            <div class="col-sm-9 d-flex flex-row mb-3">
                                                <div class="d-flex">
                                                    <img style="width: 50px" src="{{ asset($item->card->image) }}"
                                                        class="home-cards rounded-3 mx-auto object-fit-cover"
                                                        alt="...">
                                                </div>
                                                <div>
                                                    <h6 class="fw-semibold text-black mx-3">{{ $item->card['title_'.lang()] }}</h6>
                                                    <span class="input-wrapper border-0">
                                                        <button wire:click='plus({{ $item->id }})' class="mx-2 bg-primary text-white rounded-end">+</button>
                                                        <input disabled type="number" value="{{ $item->quantity }}" class="fw-semibold border" />
                                                        <button wire:click='minus({{ $item->id }})' class="mx-2 bg-primary text-white rounded-start">-</button>
                                                        <i role="button" wire:click='remove({{ $item->id }})' class="bi bi-trash text-primary fs-5"></i>
                                                    </span>
                                                </div>

                                            </div>
                                            <div class="col-sm-3">
                                                <h6 class="fw-semibold text-black">BD {{ amount_format($item->card->price) }}</h6>
                                            </div>
                                        @endforeach
                                    </div>
                                </div>
                            </div>
                            <a href="{{ route('home') }}" class="card-footer text-primary bg-white fw-semibold d-flex justify-content-end text-decoration-none">
                                الرجوع الي التسوق
                                <i class="bi bi-arrow-left fs-5 mx-1"></i>
                            </a>
                        </div>
                    </div>
                    <div class="col-12 col-md-4 col-lg-4 col-xl-4">
                        <div class="card mt-3">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <h6 class="text-black fw-semibold">{{ __('dash.sub_total') }}</h6>
                                    <h6 class="text-black fw-semibold">{{ $data['sub_total'] }}</h6>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <h6 class="text-black fw-semibold">{{ __('dash.tax') }}</h6>
                                    <h6 class="text-black fw-semibold">{{ $data['tax'] }}</h6>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <h6 class="text-black fw-semibold">{{ __('dash.net_total') }}</h6>
                                    <h6 class="text-black fw-semibold">{{ $data['net_total'] }}</h6>
                                </div>
                                <div class="btn btn-primary text-white rounded-2 d-flex justify-content-center">متابعة عملية
                                    الدفع</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    @else
        <section class="empty-cart py-5">
            <div class="container">
                <h4 class="fw-semibold text-black"> السلة </h4>
                <div class="text-center">
                    <img src="{{ asset('userarea') }}/images/cart.png" alt="" class="img-fluid object-fit-contain h-100">
                </div>
            </div>
        </section>
    @endif
</div>
