<div>
    <div class="header bg-secondary py-1 flex-column flex-md-row">

        <div class=" container d-flex justify-content-between flex-md-row">
            <div class="d-flex text-warning">
                <div>
                    <a href="{{route('lang', 'ar')}}" class="header-contact-item {{lang() == 'ar' ? 'fw-semibold text-warning' : 'fw-medium text-light'}}  mx-3 text-decoration-none">
                        العربية
                    </a>
                </div>
                <div>
                    <i class="fa-solid fa-grip-lines-vertical text-light"></i>
                    <a href="{{route('lang', 'en')}}" class="header-contact-item {{lang() == 'en' ? 'fw-semibold text-warning' : 'fw-medium text-light'}} text-light mx-3 text-decoration-none">
                        English
                    </a>
                </div>
            </div>

            <div class="me-auto text-warning Header-icon">

                <a href="{{setting('facebook')}}" class="text-warning link-primary" target="_blank">
                    <i class="bi bi-facebook ms-3 fs-5"></i></a>
                <a href="{{setting('twitter')}}" class="text-warning link-primary" target="_blank">
                    <i class="bi bi-twitter ms-3 fs-5"></i></a>
                <a href="{{setting('instagram')}}" class="text-warning link-primary" target="_blank">
                    <i class="bi bi-instagram ms-3 fs-5"></i></a>
                <a href="{{setting('snapchat')}}" class="text-warning link-primary" target="_blank">
                    <i class="bi bi-snapchat ms-3 fs-5"></i></a>
                <a href="{{setting('linkedin')}}" class="text-warning link-primary" target="_blank">
                    <i class="bi bi-linkedin ms-3 fs-5"></i>
                </a>
            </div>
        </div>
    </div>

    <nav class="navbar navbar-expand-lg navbar-light bg-white">
        <div class="container">
            <button class="navbar-toggler rounded-3 py-2" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasRight" aria-controls="offcanvasRight" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div href="{{ route('home') }}">
                <a href="{{ route('home') }}">
                    <img src="{{ asset('userarea') }}/images/logo.png" alt="logo" class="nav-img mx-4" />
                </a>
            </div>
            <div class="collapse navbar-collapse" id="navbarNav">
                <form class="form-inline w-75">
                    <div class="input-group d-flex justify-content-start align-items-center gap-5 position-relative">
                        <input type="text" class="form-control bg-secondary rounded-2 w-100 py-2 px-5 fw-medium"
                               placeholder="@lang('front.find_your_cards')" aria-label="@lang('front.find_your_cards')"
                               aria-describedby="basic-addon2" />
                        <i class='bi bi-search position-absolute px-3 fw-bold fs-5 text-warning'></i>
                    </div>
                </form>
                <div class="d-flex text-warning me-auto  media-navbar-text">

                    <div class="link-primary text-warning mx-2">
                        @guest
                            <a href="{{ route('login.index') }}"
                               class="header-contact-item fw-semibold link-primary text-warning mx-2 text-decoration-none  media-navbar">
                                <i class="bi bi-person fs-5 link-primary text-warning cursor-pointer"></i>
                                @lang('front.login')
                            </a>
                        @else
                            <a href="{{ route('my_profile') }}"
                               class="header-contact-item fw-semibold link-primary text-warning mx-2 text-decoration-none  media-navbar">
                                <i class="bi bi-person fs-5 link-primary text-warning cursor-pointer"></i>
                                @lang('front.my_account')
                            </a>
                        @endguest
                    </div>

                    @auth
                        <div class="link-primary text-warning ">
                            <a href="{{ route('cart.index') }}" class="header-contact-item fw-semibold text-warning mx-2 link-primary text-decoration-none  media-navbar">
                                <i class="bi bi-cart3 fs-5 link-primary text-warning cursor-pointer"></i>
                                @lang('front.cart')
                            </a>
                        </div>
                    @endauth

                </div>
            </div>
        </div>
        <hr>
    </nav>

    <div class="border-top"></div>
    <div class="d-flex justify-content-between container py-2 media-navbar">
        <div class="link-primary text-warning d-none d-md-block">
            <i class="bi bi-list mx-2 link-primary"></i>
            <a href="#"
               class="header-contact-item fw-semibold link-primary text-black mx-2 text-decoration-none  media-navbar">
                @lang('front.categories')
            </a>
            <div class="dropdown dropdown-nav">
                <ul class="dropdown-menu">
                    <div class="flex-column d-flex">
                        @foreach ($categories as $category)
                            <li class="list-unstyled fw-medium text-black d-flex justify-content-start float-end"><a
                                    href="{{ route('category', ['category_id'=>$category->id, 'category_name'=>$category['title_'.lang()]]) }}"
                                    class="text-decoration-none link-primary text-black">{{ $category['title_'.lang()] }}</a></li>
                        @endforeach
                    </div>
                </ul>
            </div>
        </div>

        @foreach ($groups as $group)
            <a  href="{{ route('group', $group->id) }}" class="text-decoration-none hover-a text-footer fw-semibold d-none d-md-block"
            >{{ $group['title_'.lang()] }}
            </a>
        @endforeach
    </div>
    <!--========= start sidebar nav  =========-->
    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight"
         aria-labelledby="offcanvasWithBothOptionsLabel">
        <div class="offcanvas-header bg-secondary">
            <h5 class="offcanvas-title text-warning fw-semibold" id="offcanvasWithBothOptionsLabel">
                القائمة الرئيسية </h5>
            <button type="button" class="btn-close text-white" data-bs-dismiss="offcanvas"
                    aria-label="Close"></button>
        </div>
        <div class="offcanvas-body bg-secondary">
            <a target="_blank" href="todays-offers.html"
               class="text-decoration-none text-warning link-primary text-footer fw-semibold m-2 d-block">عروض
                اليوم</a>
            <a target="_blank" href="savingsgroup.html"
               class="text-decoration-none text-warning link-primary text-footer fw-semibold m-2 d-block">مجموعات
                التوفير</a>
            <a target="_blank" href="bestseller.html"
               class="text-decoration-none text-warning link-primary text-footer fw-semibold m-2 d-block">البطاقات
                الأكثر مبيعاً</a>
            <a target="_blank" href="new-cards.html"
               class="text-decoration-none text-warning link-primary text-footer fw-semibold m-2 d-block">البطاقات
                الجديدة</a>
            <a target="_blank" href="giftsandoffers.html"
               class="text-decoration-none text-warning link-primary text-footer fw-semibold m-2 d-block">الهدايا
                والعروض</a>
            <a target="_blank" href="aboutus.html"
               class="text-decoration-none text-warning link-primary text-footer fw-semibold m-2 d-block">حول بطاقات
                الدانة</a>

            <div class="mt-5">
                <h4 class="offcanvas-title" id="offcanvasLeftLabel"> <a
                        href=""class="text-decoration-none  text-warning fw-semibold mt-5"><i
                            class="bi bi-list mx-2 link-primary text-warning"></i>الأقسام</a></h4>
            </div>
            <ul class="mt-4">
                <li class="list-unstyled fw-semibold"><a href="playstation.html"
                                                         class="text-decoration-none link-primary m-2 text-warning">بلايستيشن</a></li>
                <li class="list-unstyled fw-semibold"><a href="itunes-category.html"
                                                         class="text-decoration-none link-primary m-2 text-warning">آيتونز</a></li>
                <li class="list-unstyled fw-semibold"><a href=""
                                                         class="text-decoration-none link-primary m-2 text-warning">جوجل بلاي</a></li>
                <li class="list-unstyled fw-semibold"><a href=""
                                                         class="text-decoration-none link-primary m-2 text-warning"> خدمات الجوال والإنترنت</a></li>
                <li class="list-unstyled fw-semibold"><a href=""
                                                         class="text-decoration-none link-primary m-2 text-warning"> ألعاب أون لاين</a></li>
                <li class="list-unstyled fw-semibold"><a href=""
                                                         class="text-decoration-none link-primary m-2 text-warning"> ألعاب فيديو منزلية </a></li>
                <li class="list-unstyled fw-semibold"><a href=""
                                                         class="text-decoration-none link-primary m-2 text-warning">ألعاب كمبيوتر </a></li>
            </ul>
        </div>
    </div>
    <!--========= end sidebar nav  =========-->

</div>
