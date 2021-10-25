<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>auction page</title>
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
    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="/resources/plugins/fontawesome-free/css/all.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="/resources/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="/resources/dist/css/adminlte.min.css">

</head>
<style>
    * {
        font-family: '한컴 말랑말랑 Regular';
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
    .ondesk{
        color: whitesmoke;
        margin: 3px;
        text-shadow: -1px 0 whitesmoke, 0 1px whitesmoke, 1px 0 whitesmoke, 0 -1px whitesmoke;
    }

    .onbottom{
        color: white;
        text-shadow: -1px 0 whitesmoke, 0 1px whitesmoke, 1px 0 whitesmoke, 0 -1px whitesmoke;
    }
    .bidlist{
        float: right;
        width: 150px;
        height: 200px;
        margin-right: 30px;
    }

    .bidding{
        display: grid;
        grid-template-columns: 1fr 1fr;
        grid-template-rows: 100px 50px;
        grid-gap: 5px;
    }

    .bid-icon{
        grid-column: 1/3;
        grid-row: 1 ;
    }
    .bid-time{
        grid-column: 1/3;
        grid-row: 2;
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
                        <span class="text">Reverse Auction</span>
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
                <li class="nav-item active"><a href="/main" class="nav-link">Home</a></li>
                <!--	          <li class="nav-item dropdown">-->
                <!--              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Catalog</a>-->
                <!--              <div class="dropdown-menu" aria-labelledby="dropdown04">-->
                <!--              	<a class="dropdown-item" href="shop.html">Shop</a>-->
                <!--                <a class="dropdown-item" href="product-single.html">Single Product</a>-->
                <!--                <a class="dropdown-item" href="cart.html">Cart</a>-->
                <!--                <a class="dropdown-item" href="checkout.html">Checkout</a>-->
                <!--              </div>-->
                <!--            </li>-->
                <li class="nav-item"><a href="" class="nav-link">About</a></li>
                <li class="nav-item"><a href="/auction/list" class="nav-link">Matching</a></li>
                <li class="nav-item"><a href="" class="nav-link">Self Management</a></li>
                <li class="nav-item"><a href="/fboard/list" class="nav-link">FreeBoard</a></li>
                <sec:authorize access="isAnonymous()">
                    <li class="nav-item"><a href="/customLogin" class="nav-link">Login</a></li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li class="nav-item"><a href="/logout" class="nav-link">Logout</a></li>
                </sec:authorize>

            </ul>
        </div>
    </div>
</nav>
<!-- END nav -->

<div class="hero-wrap hero-bread" style="background-image: url('/resources/images/mainphoto.jpg');">
    <div class="container">
        <div class="row no-gutters slider-text align-items-center justify-content-center">
            <div class="col-md-9 ftco-animate text-center">
                <h1 class="mb-0 bread ondesk">FITNERS</h1>
                <h3 class="breadcrumbs"><span class="onbottom">Auction</span></h3>
            </div>
        </div>
    </div>
</div>