<%--
  Created by IntelliJ IDEA.
  User: mohammedaldini
  Date: 1/29/21
  Time: 8:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <meta name="author" content="MOhammed ALDINI" />
    <title>Home - Shop</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Stylesheets============================================= -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,400i,700|Poppins:300,400,500,600,700|PT+Serif:400,400i&display=swap" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="<c:url value='resources/css/bootstrap.css'/>" type="text/css" />
    <link rel="stylesheet" href="<c:url value='resources/style.css'/>" type="text/css" />
    <link rel="stylesheet" href="<c:url value='resources/css/dark.css'/>" type="text/css" />
    <link rel="stylesheet" href="<c:url value='resources/css/font-icons.css'/>" type="text/css" />
    <link rel="stylesheet" href="<c:url value='resources/css/animate.css'/>" type="text/css" />
    <link rel="stylesheet" href="<c:url value='resources/css/magnific-popup.css'/>" type="text/css" />
    <link rel="stylesheet" href="<c:url value='resources/css/custom.css'/>" type="text/css" />
</head>
<body class="stretched">

<!-- Document Wrapper
============================================= -->
<div id="wrapper" class="clearfix">

    <!-- Top Bar
    ============================================= -->
    <div id="top-bar">
        <div class="container">

            <div class="row justify-content-between align-items-center">
                <div class="col-12 col-md-auto">
                    <p class="mb-0 py-2 text-center text-md-left"><strong>Call:</strong> +1 (641) 819-1091 | <strong>Email:</strong> mhaldini@miu.edu</p>
                </div>

                <div class="col-12 col-md-auto">

                    <!-- Top Links
                    ============================================= -->
                    <div class="top-links on-click">
                        <ul class="top-links-container">
                            <li class="top-links-item"><a href="#">Login</a>
                                <div class="top-links-section">
                                    <form id="top-login" autocomplete="off" method="post" action="loginController">
                                        <div class="form-group">
                                            <label>Username</label>
                                            <input type="text" name="inputUsername" class="form-control" placeholder="Username">
                                        </div>
                                        <div class="form-group">
                                            <label>Password</label>
                                            <input type="password" name="inputPassword" class="form-control" placeholder="Password" required="">
                                        </div>
                                        <div class="form-group form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="top-login-checkbox">
                                            <label class="form-check-label" for="top-login-checkbox">Remember Me</label>
                                        </div>
                                        <button class="btn btn-danger btn-block" type="submit">Sign in</button>
                                    </form>
                                </div>
                            </li>
                        </ul>
                    </div><!-- .top-links end -->

                </div>
            </div>

        </div>
    </div><!-- #top-bar end -->

    <!-- Header
    ============================================= -->
    <header id="header">
        <div id="header-wrap">
            <div class="container">
                <div class="header-row">

                    <!-- Logo
                    ============================================= -->
                    <div id="logo">
                        <a href="index.jsp" class="standard-logo">LOGO</a>
                    </div><!-- #logo end -->

                    <div class="header-misc">

                        <!-- Top Search
                        ============================================= -->
                        <div id="top-search" class="header-misc-icon">
                            <a href="#" id="top-search-trigger"><i class="icon-line-search"></i><i class="icon-line-cross"></i></a>
                        </div><!-- #top-search end -->

                        <!-- Top Cart
                        ============================================= -->
                        <div id="top-cart" class="header-misc-icon d-none d-sm-block">
                            <a href="#" id="top-cart-trigger"><i class="icon-line-bag"></i><span class="top-cart-number">0</span></a>
                            <div class="top-cart-content">
                                <div class="top-cart-title">
                                    <h4>Shopping Cart</h4>
                                </div>
                                <div class="top-cart-items">
                                    <div class="top-cart-item" style="display: none">
                                        <div class="top-cart-item-image">
                                            <a href="#"><img src="<c:url value='resources/images/shop/pants/1-1.jpg'/>" alt="Blue Round-Neck Tshirt" /></a>
                                        </div>
                                        <div class="top-cart-item-desc">
                                            <div class="top-cart-item-desc-title">
                                                <a href="#">Blue Round-Neck Tshirt with a Button</a>
                                                <span class="top-cart-item-price d-block">$19.99</span>
                                            </div>
                                            <div class="top-cart-item-quantity">x 2</div>
                                        </div>
                                    </div>

                                </div>
                                <div class="top-cart-action">
                                    <span class="top-checkout-price">$ 0</span>
                                    <a href="#" class="button button-3d button-small m-0">View Cart</a>
                                </div>
                            </div>
                        </div><!-- #top-cart end -->

                    </div>

                    <div id="primary-menu-trigger">
                        <svg class="svg-trigger" viewBox="0 0 100 100"><path d="m 30,33 h 40 c 3.722839,0 7.5,3.126468 7.5,8.578427 0,5.451959 -2.727029,8.421573 -7.5,8.421573 h -20"></path><path d="m 30,50 h 40"></path><path d="m 70,67 h -40 c 0,0 -7.5,-0.802118 -7.5,-8.365747 0,-7.563629 7.5,-8.634253 7.5,-8.634253 h 20"></path></svg>
                    </div>

                    <!-- Primary Navigation
                    ============================================= -->
                    <nav class="primary-menu">

                        <ul class="menu-container">
                            <li class="menu-item current"><a class="menu-link" href="index.jsp"><div>Home</div></a></li>
                        </ul>

                    </nav><!-- #primary-menu end -->
                </div>
            </div>
        </div>
        <div class="header-wrap-clone"></div>
    </header><!-- #header end -->
