<%-- 
    Document   : login
    Created on : Sep 26, 2022, 5:53:11 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >
    <head>
        <meta charset="UTF-8">
        <title>Login</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- mobile metas -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="viewport" content="initial-scale=1, maximum-scale=1">
        <!-- site metas -->
        <title>Ebutler</title>
        <meta name="keywords" content="">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- bootstrap css -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <!-- style css -->
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <!-- Responsive-->
        <link rel="stylesheet" href="css/responsive.css">
        <!-- fevicon -->
        <link rel="icon" href="images/fevicon.png" type="image/gif" />
        <!-- Scrollbar Custom CSS -->
        <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
        <!-- Tweaks for older IEs-->
        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
        <!-- fonts -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
        <!-- owl stylesheets --> 
        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
        <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
        <link rel="stylesheet" href="./style_login.css">

    </head>
    <body>
        <!-- header section start -->
        <div class="header_section haeder_main">
            <div class="container-fluid">
                <nav class="navbar navbar-light bg-light justify-content-between">
                    <div id="mySidenav" class="sidenav">
                        <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                        <a href="ShowHomeGeneralController">Home</a>
                        <a href="ShowService">Product List</a>
                        <!--                  <a href="computers.html"></a>-->

                        <a href="contact.jsp">Contact</a>
                    </div>
                    <span style="font-size:30px;cursor:pointer; color: #fff;" onclick="openNav()"><img src="images/toggle-icon.png"></span>
                    <a class="navbar-brand" href="ShowHomeGeneralController">E-Butler</a></a>
                    <form class="form-inline ">
                        <div class="login_text">
                            <ul>
                                <li><a href="login.jsp"><img src="images/user-icon.png"></a></li>
                                <li><a href="#"><img src="images/trolly-icon.png"></a></li>
<!--                                <li><a href="#"><img src="images/search-icon.png"></a></li>-->
<!--                                <li><a href="#"><img src="images/logout.png" width = "21" height = "20"></a></li>-->
                            </ul>
                        </div>
                    </form>
                </nav>
            </div>
        </div>
        <!-- header section end -->
        <!-- partial:index.partial.html -->
        <div id="login-form-wrap">
            <h2>Login</h2>
            <form id="login-form" action="LoginController" method="POST">
                <p>
                    <input type="text" id="username" name="txtUsername" value="${param.txtUsername}" placeholder="Username" required="true" autofocus="true"><i class="validation"><span></span><span></span></i>
                </p>
                <p>
                    <input type="password" id="password" name="txtPassword" placeholder="Password" required><i class="validation"><span></span><span></span></i>
                </p>
                <p>
                    <input type="submit" id="login" value="Login">
                </p>
            </form>
            <a style="color: red">${ERRORLOGIN}</a>
            <div id="create-account-wrap">
                <p>Not a member? <a href="register.jsp">Create Account</a>
                    <a> / Forgot your password <a href="forgot_password.jsp">Click here</a></a>
                    <p>
                    
                    
            </div>
            
            <!--create-account-wrap-->
        </div><!--login-form-wrap-->
        <!-- partial -->
        <!-- footer section start -->
         <div class="footer_section layout_padding margin_top_90">
            <div class="container">
                <div class="footer_logo_main">
                    <div class="adderss_text" style="font-size: 70px"><a href="index.html">Ebutler</a></div>
                    <div class="social_icon">
                        <ul>
                            <li><a href="#"><img src="images/fb-icon.png"></a></li>
                            <li><a href="#"><img src="images/twitter-icon.png"></a></li>
                            <li><a href="#"><img src="images/linkedin-icon.png"></a></li>
                            <li><a href="#"><img src="images/instagram-icon.png"></a></li>
                            <li><a href="#"><img src="images/youtub-icon.png"></a></li>
                        </ul>
                    </div>
                </div>
                <div class="footer_section_2">
                    <div class="row">
                        <div class="col-lg-3 col-sm-6">
                            <h4 class="adderss_text">About</h4>
                            <p class="ipsum_text">EButler is a website that helps you with butler services such as: electrical repair, rice, gas supply, ...</p>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <h4 class="adderss_text">Menu</h4>
                            <div class="footer_menu">
                                <ul>
                                    <li><a href="index.html">Home</a></li>
                                    <!--                                    <li><a href="computers.html">Computers</a></li>
                                                                        <li><a href="Mans_clothes.html">Mans Clothes</a></li>
                                                                        <li><a href="womans_clothes.html">Womans Clothes</a></li>-->
                                    <li><a href="contact.jsp">Contact Us</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <h4 class="adderss_text">Useful Link</h4>
                            <div class="footer_menu">
                                <ul>
                                    <li><a href="#">Facebook</a></li>
                                    <li><a href="#">Instagram</a></li>
                                    <li><a href="#">Youtube</a></li>
                                    <li><a href="#">Twitter</a></li>
                                    <li><a href="#">License</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-3 col-sm-6">
                            <h4 class="adderss_text">Contact</h4>
                            <div class="call_text"><img src="images/map-icon.png"><span class="paddlin_left_0"><a href="#">FPT University, TP.HCM</a></span></div>
                            <div class="call_text"><img src="images/call-icon.png"><span class="paddlin_left_0"><a href="#">+09887766</a></span></div>
                            <div class="call_text"><img src="images/mail-icon.png"><span class="paddlin_left_0"><a href="#">ebutler@gmail.com</a></span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- footer section end -->
        <!-- copyright section end -->
        <!-- Javascript files-->
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery-3.0.0.min.js"></script>
        <script src="js/plugin.js"></script>
        <!-- sidebar -->
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/custom.js"></script>
        <!-- javascript --> 
        <script src="js/owl.carousel.js"></script>
        <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>  
        <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
        <script>
                   function openNav() {
                       document.getElementById("mySidenav").style.width = "100%";
                   }

                   function closeNav() {
                       document.getElementById("mySidenav").style.width = "0";
                   }
        </script> 
    </body>
</html>

