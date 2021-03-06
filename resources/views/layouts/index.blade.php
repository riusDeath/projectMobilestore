<!DOCTYPE html>

<html lang="en">

<!-- Mirrored from htmlmystore.justthemevalley.com/shop_grid.html by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 03 May 2018 18:39:19 GMT -->
<head>
<!-- Basic page needs -->
<meta charset="utf-8">
<!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <![endif]-->
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>MyStore</title>

<!-- Mobile specific metas  -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Favicon  -->
<link rel="shortcut icon" type="image/x-icon" href="favicon.ico">

<!-- Google Fonts -->


<!-- CSS Style -->

<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css" href="{{asset('public/css/display/bootstrap.min.css')}}">

<!-- font-awesome & simple line icons CSS -->
<!-- <link rel="stylesheet" type="text/css" href="{{asset('public/css/display/font-awesome.css')}}" media="all"> -->
<link rel="stylesheet" type="text/css" href="{{asset('public/css/display/simple-line-icons.css')}}" media="all">

<!-- owl.carousel CSS -->
<link rel="stylesheet" type="text/css" href="{{asset('public/css/display/owl.carousel.css')}}">
<link rel="stylesheet" type="text/css" href="{{asset('public/css/display/owl.theme.css')}}">

<!-- animate CSS  -->
<link rel="stylesheet" type="text/css" href="{{asset('public/css/display/animate.css')}}" media="all">

<!-- flexslider CSS -->
<link rel="stylesheet" type="text/css" href="{{asset('public/css/display/flexslider.css')}}" >

<!-- jquery-ui.min CSS  -->
<link rel="stylesheet" type="text/css" href="{{asset('public/css/display/jquery-ui.css')}}">

<!-- Revolution Slider CSS -->
<link rel="stylesheet" type="text/css" href="{{asset('public/css/display/revolution-slider.css')}}">


<!-- style CSS -->
<link rel="stylesheet" type="text/css" href="{{asset('public/css/display/style.css')}}" media="all">
<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="{{asset('public/css/font-awesome.min.css')}}">
<link rel="stylesheet" href="{{asset('public/css/my.css')}}">                                  

@yield('link')

</head>

<body class="shop_grid_page">

<div id="page"> 
  <!-- Header -->
<header>
    <div class="header-container">
        <div class="header-top">
            <div class="container">
            <div class="row">
            <div class="col-lg-4 col-sm-4 hidden-xs"> 
              <!-- Default Welcome Message -->
                <div class="welcome-msg ">Xin chào khách hàng</div>
                <span class="phone hidden-sm">Phone: +123.456.789</span> </div>
            
            <!-- top links -->
                <div class="headerlinkmenu col-lg-8 col-md-7 col-sm-8 col-xs-12">
                <div class="links">
                <div class="myaccount">
                    <a title="My Account" href="#"><i class="fa fa-user"></i>
                    <span class="hidden-xs">
                    @if(Auth::check())
                        <a href="{{route('home-lich-su-mua-hang',['id' => $user_login->id])}}" title="Lịch sử mua hàng">{{$user_login->name}} tài khoản</a>
                    @else
                        Tên tài khoản
                    @endif
                    </span>
                    </a>
                </div>
                <div class="wishlist">
                    <a title="My Wishlist" href="">
                        <i class="fa fa-heart"></i><span class="hidden-xs">Thích trang</span>
                    </a>
                </div>
                <div class="blog">
                    <a title="Blog" href="{{route('dang-ky')}}">
                        <i class="fa fa-rss"></i><span class="hidden-xs">Đăng ký</span>
                    </a>
                </div>               
                @if(isset($user_login))
                <div class="login">
                    <a href="{{route('dang-xuat-user')}}">
                        <i class="fa fa-unlock-alt"></i><span class="hidden-xs">Đăng xuất</span>
                    </a>
                </div>
                @else
                <div class="login">
                    <a href="{{route('dang-nhap')}}">
                        <i class="fa fa-unlock-alt"></i><span class="hidden-xs">Đăng nhập</span>
                    </a>
                </div>
                @endif
                <div class="login">
                    <a href="{{route('dang-nhap-Admin')}}">
                        <i class="fa fa-unlock-alt"></i><span class="hidden-xs">Admin</span>
                    </a>
                </div>
                </div>        
            </div>
            </div>
            </div>
        </div>
        <div class="container">
        <div class="row">
            <div class="col-sm-3 col-md-3 col-xs-12"> 
            <!-- Header Logo -->
            <div class="logo">
                <a title="e-commerce" href=""><img alt="e-commerce" src="{{asset('uploads/logo.png')}}"></a> 
            </div>
            <!-- End Header Logo --> 
            </div>
            <div class="col-xs-9 col-sm-6 col-md-6"> 
            <!-- Search -->            
            <div class="top-search">
                <div id="search">
                    <form method="post" action="">
                    <div class="input-group">
                     <!--    <select class="cate-dropdown hidden-xs" name="category_id">
                            <option selected=""  value="0">Tất cả danh mục</option>
                            @foreach($parent_categories as $parent)
                            <option value="$parent->id">{{$parent->name}}</option>
                            @foreach($categories as $category)
                            @if($category->parent == $parent->id)
                            <option value="{{$category->id}}">&nbsp;&nbsp;&nbsp;{{$category->name}}</option>
                            @endif
                            @endforeach
                            @endforeach
                        </select> -->
                        <input type="hidden" value="<?php echo csrf_token() ?>" name ="_token">
                        <input type="text" class="form-control" placeholder="Tìm kiếm theo tên sản phẩm" name="search">
                        <button class="btn-search" type="submit"><i class="fa fa-search"></i></button>
                    </div>
                    </form>
                </div>
            </div>           
            <!-- End Search --> 
            </div>
            <!-- top cart -->
            <div id="mini-cart-list1">           
            <div class="col-lg-3 col-xs-3 top-cart">
            <div class="top-cart-contain">
            <div class="mini-cart">
            <div data-toggle="dropdown" data-hover="dropdown" class="basket dropdown-toggle"> 
                    <a href="{{route('xem-don-hang')}}">
                    <div class="cart-icon"><i class="fa fa-shopping-cart"></i></div>
                    <div class="shoppingcart-inner hidden-xs"><span class="cart-title">Giỏ hàng</span> 
                    @if(Cart::count() !=0)
                    <span class="cart-total">{{Cart::count()}} sản phẩm: {{Cart::total()}} VNĐ</span>
                    @endif
                    </div>
                    </a>
            </div>
                @if(Cart::count() !=0)
                <div class="top-cart-content">
                <div class="block-subtitle hidden-xs">Sản phẩm trong giỏ hàng</div>
                <ul id="cart-sidebar" class="mini-products-list">
                        @foreach(Cart::content() as $cart)
                        <li class="item odd"> 
                            <a href="{{route('home-chi-tiet-san-pham',['id' => $cart->id])}}" title="{{$cart->name}}" class="product-image">
                                <img src="{{asset('uploads/'.$cart->options['image'])}}" alt="Lorem ipsum dolor" width="65">
                            </a>
                            <div class="product-details"> 
                                <a href="{{route('xoa-san-pham-gio-hang',['rowId' => $cart->rowId])}}" title="Xóa sản phẩm ra khỏi giỏ hàng" class="" onclick="confirm('Bạn muốn xóa sản phẩm {{$cart->name}} ra khỏi giỏ hàng?')">
                                    <i class="fa fa-trash-o"></i>
                                </a>
                                <p class="product-name"><a href="#">{{$cart->name}}</a> </p>
                                <strong>{{$cart->qty}}</strong> x 
                                <span class="price">{{number_format($cart->price)}}</span> 
                            </div>
                        </li>
                        @endforeach
                </ul>
                <div class="top-subtotal">Tổng: <span class="price">{{Cart::subtotal()}} VNĐ</span></div>
                <div class="actions">
                        <a class="btn-checkout" href="{{route('thanh-toan')}}">
                            <i class="fa fa-check"></i><span>Đặt hàng</span>
                        </a>
                        <a class="view-cart" href="{{route('xem-don-hang')}}">
                            <i class="fa fa-shopping-cart"></i> <span>Xem đơn hàng</span>
                        </a>
                </div>
                </div>
                @endif
            </div>
            </div>
            </div>
            </div>         
            </div>
        </div>
        </div>
</header>
  <!-- end header --><!-- Navbar -->
<nav>
    <div class="container">
        <div class="row">
        <div class="col-md-3 col-sm-4">
            <div class="mm-toggle-wrap">
            <div class="mm-toggle"> <i class="fa fa-align-justify"></i> </div>
            <span class="mm-label">Danh mục</span> </div>
            <div class="mega-container visible-lg visible-md visible-sm">
            <div class="navleft-container">
                <div class="mega-menu-title">
                    <h3>Danh mục</h3>
                </div>
                <div class="mega-menu-category">
                    <ul class="nav">
                    @foreach($parent_categories as $parent)
                    <li> 
                        <a href="#"><i class="icon fa fa-camera fa-fw"></i> {{$parent->name}}</a>
                        <div class="wrap-popup">
                        <div class="popup">
                        <div class="row">
                            <div class="col-md-3 col-sm-6">
                            <ul class="nav">
                                @foreach($categories as $category)
                                @if($category->parent == $parent->id)
                                <li><a href="{{route('san-pham-danh-muc',['category_id' => $category->id])}}"><span>{{$category->name}}</span></a></li>
                                @endif
                                @endforeach
                            </ul>
                            </div>
                        </div>
                        </div>
                        </div>
                        </li>
                    @endforeach
                    </ul>
                </div>
            </div>
            </div>
        </div>
        <div class="col-md-9 col-sm-8">
            <div class="mtmegamenu">
            <ul>
                <li class="mt-root demo_custom_link_cms">
                <div class="mt-root-item">
                    <a href="{{route('home')}}">
                    <div class="title title_font"><span class="title-text">Trang chủ</span></div>
                    </a>
                </div>              
                </li>
                <li class="mt-root">
                <div class="mt-root-item">
                    <a href="#">
                        <div class="title title_font"><span class="title-text">Thương hiệu</span></div>
                    </a>
                </div>
                <ul class="menu-items col-xs-4">
                    <li class="menu-item depth-1 menucol-1-3 ">
                    <ul class="submenu">
                        @foreach($brands as $brand)
                        <li class="menu-item">
                        <div class="title"> <a href="{{route('san-pham-thuong-hieu',['brand_id' => $brand->id])}}"> {{$brand->name}}</a></div>
                        </li>
                        @endforeach
                    </ul>
                    </li>
                </ul>
                </li>
                <li class="mt-root">
                <div class="mt-root-item">
                    <a >
                        <div class="title title_font"><span class="title-text">Liên hệ</span> </div>
                    </a>
                </div>
                </li>
                <li class="mt-root">
                <div class="mt-root-item">
                    <a >
                        <div class="title title_font"><span class="title-text">Các chức năng</span></div>
                    </a>
                </div>
                </li>
                <li class="mt-root demo_custom_link_cms">
                <div class="mt-root-item">
                    <a >
                    <div class="title title_font"><span class="title-text">Blog</span></div>
                    </a>
                </div>
          
                </li>
                <li class="mt-root">
                <div class="mt-root-item">
                    <div class="title title_font"><span class="title-text">Hots</span></div>
                </div>
                <ul class="menu-items col-xs-12">
                    @foreach($product_hot as $pro_hot)
                    <li class="menu-item depth-1 product menucol-1-3 withimage">
                    <div class="product-item">
                        <div class="item-inner">
                        <div class="product-thumbnail">
                            @if($pro_hot->price_sale !=0 )
                            <div class="icon-sale-label sale-left">Sale</div>
                            @endif
                            <div class="pr-img-area"> 
                                <a title="Ipsums Dolors Untra" href="{{route('home-chi-tiet-san-pham',['id' => $pro_hot->id])}}">
                                <figure> 
                                    <img class="first-img" src="{{asset('uploads/'.$pro_hot->image)}}" alt=""> 
                                </figure>
                                </a>
                                <a href="" class="add-to-cart-mt"> 
                                    <i class="fa fa-shopping-cart"></i><span> Thêm vào giỏ hàng</span> 
                                </a>
                            </div>
                            <div class="pr-info-area">
                            <div class="pr-button">
                                <div class="rating"> 
                                    <div class="rate-star">
                                        <div class="rated-star" style="width:{{($pro_hot->rate_avg1()!=0)?($pro_hot->rate_avg1()/5*100):0}}%;">&nbsp;
                                    </div>
                                    <div class="">{{$pro_hot->rate_avg1()}}/5 rate</div>
                                </div>
                                </div>
                            </div>
                            </div>
                        </div>
                        <div class="item-info">
                            <div class="info-inner">
                            <div class="item-title"> <a title="Ipsums Dolors Untra" href="{{route('home-chi-tiet-san-pham',['id' => $pro_hot->id])}}">{{$pro_hot->name}} </a> </div>
                            <div class="item-content">
                                <div class="rating"> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> <i class="fa fa-star-o"></i> </div>
                                <div class="item-price">
                                    <div class="price-box">
                                    @if($pro_hot->price_sale != 0)
                                    <p class="special-price"> 
                                        <span class="price-label">Giá sale:</span> 
                                        <span class="price"> {{number_format($pro_hot->price_sale)}}  VNĐ</span> 
                                    </p>
                                    <p class="old-price"> 
                                        <span class="price-label">Giá gốc:</span> 
                                        <span class="price">{{number_format($pro_hot->price)}}  VNĐ </span> 
                                    </p>
                                    @else
                                    <p class="special-price"> 
                                        <span class="price-label">Giá: </span> 
                                        <span class="price"> {{number_format($pro_hot->price)}}  VNĐ  </span> 
                                    </p>
                                    @endif
                                    </div>
                                </div>
                            </div>
                            </div>
                        </div>
                    </div>
                    </div>
                    </li>
                    @endforeach
                </ul>
                </li>
                </ul>
            </div>
        </div>
        </div>
    </div>
</nav>
  <!-- end nav --> 
 
  <!-- Main Container -->
  @yield('main')
  <!-- Main Container End --> 
  <!-- Footer -->
  
<footer>
    <div class="footer-newsletter">
        <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-7">
            <form id="newsletter-validate-detail" method="post" action="#">
                <h3 class="hidden-sm">Sign up for newsletter</h3>
                <div class="newsletter-inner">
                    <input class="newsletter-email" name='Email' placeholder='Enter Your Email'/>
                    <button class="button subscribe" type="submit" title="Subscribe">Subscribe</button>
                </div>
            </form>
            </div>
            <div class="social col-md-4 col-sm-5">
                <ul class="inline-mode">
                    <li class="social-network fb">
                        <a title="Connect us on Facebook" target="_blank" href="https://www.facebook.com/">
                            <i class="fa fa-facebook"></i>
                        </a>
                    </li>
                    <li class="social-network googleplus">
                        <a title="Connect us on Google+" target="_blank" href="https://plus.google.com/">
                            <i class="fa fa-google-plus"></i>
                        </a>
                    </li>
                    <li class="social-network tw">
                        <a title="Connect us on Twitter" target="_blank" href="https://twitter.com/">
                            <i class="fa fa-twitter"></i>
                        </a>
                    </li>
                    <li class="social-network linkedin">
                        <a title="Connect us on Linkedin" target="_blank" href="https://www.pinterest.com/">
                            <i class="fa fa-linkedin"></i>
                        </a>
                    </li>
                    <li class="social-network rss">
                        <a title="Connect us on Instagram" target="_blank" href="https://instagram.com/">
                            <i class="fa fa-rss"></i>
                        </a>
                    </li>
                    <li class="social-network instagram">
                        <a title="Connect us on Instagram" target="_blank" href="https://instagram.com/">
                            <i class="fa fa-instagram"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
        <div class="col-sm-6 col-md-4 col-xs-12 col-lg-3">
            <div class="footer-logo">
                <a href=""><img src="{{asset('uploads/logo.png')}}" alt="fotter logo"></a> 
            </div>
            <p>Lorem Ipsum is simply dummy text of the print and typesetting industry.</p>
            <div class="footer-content">
                <div class="email"> <i class="fa fa-envelope"></i>
                    <p>Support@themes.com</p>
                </div>
                <div class="phone"> <i class="fa fa-phone"></i>
                    <p>(800) 0123 456 789</p>
                </div>
                <div class="address"> <i class="fa fa-map-marker"></i>
                    <p> My Company, 12/34 - West 21st Street, New York, USA</p>
                </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-3 col-xs-12 col-lg-3 collapsed-block">
            <div class="footer-links">
            <h3 class="links-title">Danh mục<a class="expander visible-xs" href="">+</a></h3>
            <div class="tabBlock" id="TabBlock-1">
                <ul class="list-links list-unstyled">
                    @foreach($parent_categories as $parent)
                    <li>
                        <a href="{{route('san-pham-danh-muc',['category_id' => $parent->id])}}">{{$parent->name}}</a>
                    </li>
                    @endforeach
                </ul>
            </div>
            </div>
        </div>
        <div class="col-sm-6 col-md-3 col-xs-12 col-lg-3 collapsed-block">
            <div class="footer-links">
            <h3 class="links-title">Thương hiệu<a class="expander visible-xs" href="">+</a></h3>
            <div class="tabBlock" id="TabBlock-3">
                <ul class="list-links list-unstyled">
                    @foreach($brands as $brand)
                    <li> 
                        <a href="{{route('san-pham-thuong-hieu',['brand_id' => $brand->id])}}">{{$brand->name}}</a> 
                    </li>
                    @endforeach
                </ul>
            </div>
        </div>
        </div>
        <div class="col-sm-6 col-md-2 col-xs-12 col-lg-3 collapsed-block">
            <div class="footer-links">
            <h3 class="links-title">Dịch vụ<a class="expander visible-xs" href="">+</a></h3>
            <div class="tabBlock" id="TabBlock-4">
                <ul class="list-links list-unstyled">
                    @if(Auth::check())
                    <li> <a href="{{route('xem-don-hang')}}">Giỏ hàng của bạn</a> </li>
                    <li> <a href="{{route('home-lich-su-mua-hang',['id' => $user_login->id])}}">Lịch sử mua hàng</a> </li>
                    @endif
                    <li> <a href="">Các tiện ích</a> </li>
                    <li> <a href="#">Phương thức thanh toán</a> </li>
                    <li> <a href="#">Phương thức giao hàng</a> </li>
                </ul>
            </div>
            </div>
        </div>
        </div>
    </div>
    <div class="footer-coppyright">
        <div class="container">
        <div class="row">
            <div class="col-sm-6 col-xs-12 coppyright"> </div>
            <div class="col-sm-6 col-xs-12">
            <div class="payment">
                <ul>
                    <li><a href="#">
                        <img title="Visa" alt="Visa" src="{{asset('uploads/visa.png')}}">
                    </a></li>
                    <li><a href="#">
                        <img title="Paypal" alt="Paypal" src="{{asset('uploads/paypal.png')}}">
                    </a></li>
                    <li><a href="#">
                        <img title="Discover" alt="Discover" src="{{asset('uploads/discover.png')}}">
                    </a></li>
                    <li><a href="#">
                        <img title="Master Card" alt="Master Card" src="{{asset('uploads/master-card.png')}}">
                    </a></li>
                </ul>
            </div>
            </div>
        </div>
        </div>
    </div>
</footer>
<a href="#" class="totop"> </a> 
</div>

 


<!-- End Footer --> 
<!-- JS --> 

<!-- jquery js --> 
<script type="text/javascript" src="{{asset('public/js/display/jquery.min.js')}}"></script> 

<!-- bootstrap js --> 
<script type="text/javascript" src="{{asset('public/js/display/bootstrap.min.js')}}"></script> 

<!-- owl.carousel.min js --> 
<script type="text/javascript" src="{{asset('public/js/display/owl.carousel.min.js')}}"></script> 

<!-- bxslider js --> 
<script type="text/javascript" src="{{asset('public/js/display/jquery.bxslider.js')}}"></script> 


<!-- megamenu js --> 
<script type="text/javascript" src="{{asset('public/js/display/megamenu.js')}}"></script> 
<script type="text/javascript">
        /* <![CDATA[ */   
        var mega_menu = '0';
        
        /* ]]> */
        </script> 

<!-- jquery.mobile-menu js --> 
<script type="text/javascript" src="{{asset('public/js/display/mobile-menu.js')}}"></script> 


<!--jquery-ui.min js --> 
<script type="text/javascript" src="{{asset('public/js/display/jquery-ui.js')}}"></script> 

<!-- main js --> 
<script type="text/javascript" src="{{asset('public/js/display/main.js')}}"></script>
@yield('script')
</body>

<!-- Mirrored from htmlmystore.justthemevalley.com/shop_grid by HTTrack Website Copier/3.x [XR&CO'2014], Thu, 03 May 2018 18:39:45 GMT -->
</html>
