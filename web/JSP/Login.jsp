<%-- 
    Document   : Login
    Created on : Apr 17, 2025, 10:15:02 PM
    Author     : tsm11
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="model.Login" %>
<jsp:useBean id="login" class="model.Login" scope="session" />
<jsp:setProperty name="login" property="email" param="email" />
<jsp:setProperty name="login" property="password" param="password" />

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css">
    
    <link href="../CSS/home.css?v=2" rel="stylesheet" type="text/css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <section id="header" class="header">   
             <a href="GuestHome.jsp"><h2 style="font-weight: bolder; font-size: 3rem; color: black;">GLOWY DAYS</h2></a>
               <div class="navbar">
                    <a href="">Home</a>
                    <div class="dropdown">
                        <a href="#">Product</a>
                        <div class="dropdown-content">
                            <a href="#">Skincare</a>
                            <a href="#">Makeup</a>
                            <a href="#">Hair Care</a>
                            <a href="#">Body Care</a>
                            <a href="#">Fragrance</a>
                            <a href="#">Tools</a>
                            <a href="#">Men's Care</a>
                            <a href="#">Sets & Gifts</a>
                        </div>
                    </div>
                    <a href="">About Us</a>               
                    <a href="">Contact Us</a>                             
               </div>
               <div class="icons">
                    <div class="search-wrapper">
                        <i class="fa-solid fa-magnifying-glass" id="search-icon"></i>
                        <input type="text" id="search-box" placeholder="Search..." />
                    </div>
                    <a href="" class="fa-solid fa-cart-shopping"></a>    
                    <a href="UserRegister.jsp" class="fa-regular fa-user"></a>
               </div>
        </section>
        <br />
        <h1>Log in</h1>
        <p style="font-size:20px; text-align: center; margin-top: 5px; margin-bottom:5px;">Please fill in the fields below</p>
        <hr>
        
        <form id="loginForm" method="post">
            <fieldset>  
                <div class="label">
                    <label for="emailInput">Email:</label>
                </div>
                <div class="input">
                    <input type="email" id="email" name="email" placeholder="Email" required><br/>   
                    <div id="emailValidation"></div>
                </div>
                
                <div class="label">
                    <label for="passwordInput">Password:</label>
                </div>
                <div class="input">
                    <input type="password" id="password" name="password" placeholder="Password" 
                           pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required><br/>
                    <div id="passwordValidation"></div> 
                </div>
                
                <a style="float:right; color:grey; font-size: 18px; margin-right: 27px; text-decoration: none;" 
                   href="../JSP/ForgotPassword.jsp" 
                   onmouseover="this.style.fontWeight='bold'; this.style.textDecoration='underline'" 
                   onmouseout="this.style.fontWeight='normal'; this.style.textDecoration='none'">
                   Forgot Password
                </a>
                <div style="clear: both;"></div>
                
                <div class="login-home" style="text-align:center">
                    <br />
                    <p>Not yet have a account? <a href="../JSP/Register.jsp">Register Now</a></p>
                </div>
                
                <button type="submit" style="border-radius:10px; float: right;">Login</button>
            </fieldset>
        </form>
    </div>

<section class="footer">
        <div class="box-container">

          <div class="box">
            <h3>Quick Links</h3>
            <a href="#"><i class="fas fa-angle-right"></i> Home</a>
            <a href="#"><i class="fas fa-angle-right"></i> Product</a>
            <a href="#"><i class="fas fa-angle-right"></i> About Us</a>
            <a href="#"><i class="fas fa-angle-right"></i> Contact Us</a>
          </div>

          <div class="box">
            <h3>Extra Links</h3>
            <a href="#"><i class="fas fa-angle-right"></i> My Favorite</a>
            <a href="#"><i class="fas fa-angle-right"></i> My Orders</a>
            <a href="#"><i class="fas fa-angle-right"></i> Wishlist</a>
            <a href="#"><i class="fas fa-angle-right"></i> Terms of Use</a>
          </div>

          <div class="box">
            <h3>Contact Info</h3>
            <a href="#"><i class="fas fa-phone"></i> +6018-9064828</a>
            <a href="#"><i class="fas fa-phone"></i> +6012-3456789</a>
            <a href="#"><i class="fas fa-envelope"></i> tansm-wm23@student.tarc.edu.my</a>
            <a href="#"><i class="fas fa-map-marker-alt"></i> Kuala Lumpur, Malaysia</a>

            <div class="share">
              <a href="#" class="fab fa-facebook-f"></a>
              <a href="#" class="fab fa-instagram"></a>
              <a href="#" class="fab fa-twitter"></a>
            </div>
          </div>

          <div class="box">
            <h3>Newsletter</h3>
            <p>Subscribe for Latest Updates</p>
            <form action="">
              <input type="email" placeholder="Enter your email" class="email">
              <input type="submit" value="Subscribe" class="btn">
            </form>
          </div>

        </div>
     </section>

     <!-- Email validation (Check the email address has been registered or not)-->
    <script>
        $(document).ready(function(){
            $('#email').on('keyup', function(){
                var email = $(this).val().trim();
                var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

                if (email.length > 0) {
                    if (!emailRegex.test(email)) {
                        $('#emailValidation').html('<span style="color:red; font-size:13px;">Invalid email format! Please enter a valid email address.</span>');
                        $('button[type="submit"]').prop('disabled', true);
                    } else {
                        $.ajax({
                            type: 'POST',
                            url: '/LoginEmail',
                            data: { email: email },
                            success: function(response){
                                if (response.trim() === "Not registered") {
                                    $('#emailValidation').html('<span style="color:red; font-size:13px;">This email is not registered. Please sign up first.</span>');
                                    $('button[type="submit"]').prop('disabled', true);
                                } else {
                                    $('#emailValidation').html(''); 
                                    $('button[type="submit"]').prop('disabled', false);
                                }
                            },
                            error: function(){
                                $('#emailValidation').html('<span style="color:red;">Error checking email.</span>');
                                $('button[type="submit"]').prop('disabled', true);
                            }
                        });
                    }
                } else {
                    $('#emailValidation').html('');
                    $('button[type="submit"]').prop('disabled', true);
                }
            });
        });
    </script>
    <!-- End of email validation (Check the email address has been registered or not)-->
    
    <!-- Password validation (Check the email address and password)-->
    <script>
        $(document).ready(function () {
            $('#signup form').on('submit', function (e) {
                e.preventDefault();

                var email = $('#email').val().trim();
                var password = $('#password').val().trim();
                var isValid = true;

                // 清空之前的错误
                $('#emailValidation').html('');
                $('#passwordValidation').html('');

                // 简单前端校验
                if (password.length === 0) {
                    $('#passwordValidation').html('<span style="color:red; font-size:13px;">Password is required.</span>');
                    isValid = false;
                }

                if (!isValid) return;

                // AJAX 调用后台 LoginPassword servlet 进行验证
                $.ajax({
                    type: 'POST',
                    url: '/LoginPassword',
                    data: { email: email, password: password },
                    success: function (response) {
                        if (response.trim() === "Not login") {
                            $('#passwordValidation').html('<span style="color:red; font-size:13px;">Invalid password! Please try again!</span>');
                            $('#password').val('');
                        } else {
                            window.location.href = '/JSP/UserHome.jsp'; // 可替换为你的首页
                        }
                    },
                    error: function () {
                        $('#passwordValidation').html('<span style="color:red;">Server error. Please try again later.</span>');
                    }
                });
            });
        });
    </script>
    <!-- End of password validation (Check the email address and password)-->
    <script src="../JavaScript/main.js"></script>
     </body>
</html>