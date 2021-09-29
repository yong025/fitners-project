<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Minishop - Free Bootstrap 4 Template by Colorlib</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet">

    <link rel="stylesheet" href="/resources/dist/css/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="/resources/dist/css/animate.css">

    <link rel="stylesheet" href="/resources/dist/css/owl.carousel.min.css">
    <link rel="stylesheet" href="/resources/dist/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="/resources/dist/css/magnific-popup.css">

    <link rel="stylesheet" href="/resources/dist/css/aos.css">

    <link rel="stylesheet" href="/resources/dist/css/ionicons.min.css">

    <link rel="stylesheet" href="/resources/dist/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="/resources/dist/css/jquery.timepicker.css">


    <link rel="stylesheet" href="/resources/dist/css/flaticon.css">
    <link rel="stylesheet" href="/resources/dist/css/icomoon.css">
    <link rel="stylesheet" href="/resources/dist/css/style.css">
</head>
<style>
    * {
        font-family: 'G마켓 산스 TTF Medium';
    }
    .about{
        font-size: 16px;
        font-weight: 400;
        margin-top: 20px;
        margin-bottom: 20px;
    }
    .iconA{
        max-width: 30%;
        height: auto;
    }
    .btn-customA{
        color: #fff;
        background: #fdc10c;
        padding: 10px 20px;
    }

</style>
<body class="goto-here">
<div class="py-1 bg-black">
    <div class="container">
        <div class="row no-gutters d-flex align-items-start align-items-center px-md-0">
            <div class="col-lg-12 d-block">
                <div class="row d-flex">
                    <div class="col-md pr-4 d-flex topper align-items-center">
                        <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-phone2"></span></div>
                        <span class="text">+ 1235 2355 98</span>
                    </div>
                    <div class="col-md pr-4 d-flex topper align-items-center">
                        <div class="icon mr-2 d-flex justify-content-center align-items-center"><span class="icon-paper-plane"></span></div>
                        <span class="text">fitnersofficial@email.com</span>
                    </div>
                    <div class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
                        <span class="text">Reverse Auction &amp; Fundings</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="/index.jsp">FITNERS</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="/index.jsp" class="nav-link">Home</a></li>
                <!--	          <li class="nav-item dropdown">-->
                <!--              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Catalog</a>-->
                <!--              <div class="dropdown-menu" aria-labelledby="dropdown04">-->
                <!--              	<a class="dropdown-item" href="shop.html">Shop</a>-->
                <!--                <a class="dropdown-item" href="product-single.html">Single Product</a>-->
                <!--                <a class="dropdown-item" href="cart.html">Cart</a>-->
                <!--                <a class="dropdown-item" href="checkout.html">Checkout</a>-->
                <!--              </div>-->
                <!--            </li>-->
                <li class="nav-item"><a href="/about.jsp" class="nav-link">About</a></li>
                <li class="nav-item"><a href="" class="nav-link">Matching</a></li>
                <li class="nav-item"><a href="" class="nav-link">Self Management</a></li>
                <li class="nav-item"><a href="" class="nav-link">FreeBoard</a></li>
                <li class="nav-item"><a href="" class="nav-link">Login</a></li>

            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->

<div class="hero-wrap hero-bread" style="background-image: url('/resources/images/bg456.jpg');">
    <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
                <h1 class="mb-0 bread">FITNERS</h1>
                <h3 class="breadcrumbs"><span>about</span></h3>
            </div>
        </div>
    </div>
</div>


<div class="row no-gutters ftco-services">
    <div class="col-lg-4 text-center d-flex align-self-stretch ftco-animate">
        <div class="media block-6 services p-4 py-md-5">
            <div class="icon d-flex justify-content-center align-items-center mb-4">
                <!--            		<span class="flaticon-bag"></span>-->
                <span><img class="iconA" src="resources/images/health1.png"></span>
            </div>
            <div class="media-body">
                <h3 class="heading">건강한 운동습관</h3>
                <p>트레이닝 분야 전문가들과의 커뮤니케이션으로 건강한 운동 루틴 생성</p>
            </div>
        </div>
    </div>
    <div class="col-lg-4 text-center d-flex align-self-stretch ftco-animate">
        <div class="media block-6 services p-4 py-md-5">
            <div class="icon d-flex justify-content-center align-items-center mb-4">
                <!--            		<span class="flaticon-customer-service"></span>-->
                <span><img class="iconA" src="resources/images/health2.png"></span>
            </div>
            <div class="media-body">
                <h3 class="heading">역경매를 통한 퍼스널 트레이너 매칭</h3>
                <p>퍼스널트레이너의 체계적인 영양관리 노하우와 운동 레슨 노하우를 역경매 방식을 통해 저렴한 가격에 이용</p>
            </div>
        </div>
    </div>
    <div class="col-lg-4 text-center d-flex align-self-stretch ftco-animate">
        <div class="media block-6 services p-4 py-md-5">
            <div class="icon d-flex justify-content-center align-items-center mb-4">
                <!--            		<span class="flaticon-payment-security"></span>-->
                <span><img class="iconA" src="resources/images/health3.png"></span>
            </div>
            <div class="media-body">
                <h3 class="heading">셀프 매니지먼트</h3>
                <p>셀프 매니지먼트 기능을 통한 효율적인 운동 관리.</p>
            </div>
        </div>
    </div>
</div>


<div class="hero-wrap hero-bread" style="background-image: url('/resources/images/bg456.jpg');">
    <div class="container">
        <div class="row no-gutters slider-text">
            <div class="col-md-9 ftco-animate">
                <h1 class="mb-0 bread">FITNERS</h1>
                <h3 class="breadcrumbs"><span>about</span></h3>
            </div>
        </div>
    </div>
</div>



<%--<section class="ftco-section ftco-no-pb ftco-no-pt bg-light">--%>
<%--    <div class="p-3 container">--%>
<%--        <div class="row">--%>
<%--            <div class="col-md-5 p-md-5 img img-5 d-flex justify-content-center align-items-center" style="background-image: url(/resources/images/process.jpg);">--%>
<%--            </div>--%>
<%--            <div class="col-md-7 py-md-5 wrap-about pb-md-5 ftco-animate">--%>
<%--                <div class="heading-section-bold mb-4 mt-md-5">--%>
<%--                    <div class="ml-md-0">--%>
<%--                        <h2 class="mb-4">Auction Flow</h2>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <div class="pb-md-5 pb-4">--%>
<%--                    <p>But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her, made her drunk with Longe and Parole and dragged her into their agency, where they abused her for their.</p>--%>
<%--                    <p>But nothing the copy said could convince her and so it didn’t take long until a few insidious Copy Writers ambushed her.</p>--%>

<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</section>--%>



<footer class="ftco-footer ftco-section">
    <div class="container">
        <div class="row">
            <div class="mouse">
                <a href="#" class="mouse-icon">
                    <div class="mouse-wheel"><span class="ion-ios-arrow-up"></span></div>
                </a>
            </div>
        </div>
        <div class="row mb-5">
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">FITNERS</h2>
                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia.</p>
                    <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                        <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                        <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4 ml-md-5">
                    <h2 class="ftco-heading-2">Menu</h2>
                    <ul class="list-unstyled">
                        <li><a href="#" class="py-2 d-block">About</a></li>
                        <li><a href="#" class="py-2 d-block">Contact Us</a></li>
                        <li><a href="#" class="py-2 d-block">Funding</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Help</h2>
                    <div class="d-flex">
                        <ul class="list-unstyled mr-l-5 pr-l-3 mr-4">
                            <li><a href="#" class="py-2 d-block">Shipping Information</a></li>
                            <li><a href="#" class="py-2 d-block">Returns &amp; Exchange</a></li>
                            <li><a href="#" class="py-2 d-block">Terms &amp; Conditions</a></li>
                            <li><a href="#" class="py-2 d-block">Privacy Policy</a></li>
                        </ul>
                        <ul class="list-unstyled">
                            <li><a href="#" class="py-2 d-block">FAQs</a></li>
                            <li><a href="#" class="py-2 d-block">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md">
                <div class="ftco-footer-widget mb-4">
                    <h2 class="ftco-heading-2">Have a Questions?</h2>
                    <div class="block-23 mb-3">
                        <ul>
                            <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
                            <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
                            <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12 text-center">

                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This service is made by <a href="index.html" >fitners</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                </p>
            </div>
        </div>
    </div>
</footer>



<!-- loader -->
<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


<script src="/resources/dist/js/jquery.min.js"></script>
<script src="/resources/dist/js/jquery-migrate-3.0.1.min.js"></script>
<script src="/resources/dist/js/popper.min.js"></script>
<script src="/resources/dist/js/bootstrap.min.js"></script>
<script src="/resources/dist/js/jquery.easing.1.3.js"></script>
<script src="/resources/dist/js/jquery.waypoints.min.js"></script>
<script src="/resources/dist/js/jquery.stellar.min.js"></script>
<script src="/resources/dist/js/owl.carousel.min.js"></script>
<script src="/resources/dist/js/jquery.magnific-popup.min.js"></script>
<script src="/resources/dist/js/aos.js"></script>
<script src="/resources/dist/js/jquery.animateNumber.min.js"></script>
<script src="/resources/dist/js/bootstrap-datepicker.js"></script>
<script src="/resources/dist/js/scrollax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
<script src="/resources/dist/js/google-map.js"></script>
<script src="/resources/dist/js/main.js"></script>


</body>
</html>
