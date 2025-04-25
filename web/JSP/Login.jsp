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
    <link href="../CSS/register.css" rel="stylesheet" type="text/css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
    <section id="header">
        <div class="header-left">
            <a href="../JSP/GuestHome.jsp"><img src="../IMG/logo.jpg" alt="Index" width="180" height="70"></a>
        </div>
        <div class="header-right">
            <input type="text" placeholder="Search.."><img src="../ICON/search.svg" width="30" height="30">
            <a href="../JSP/cart.jsp"><img src="../ICON/cart.svg" alt="Cart" width="45" height="45"></a>
            <a href="../JSP/Register.jsp"><img src="../ICON/avatar.svg" alt="Login" width="40" height="40"></a>
        </div>
    </section>
    
    <div id="signup">
        <br />
        <h1>Log in</h1>
        <p style="font-size:20px; text-align: center; margin-top: 5px; margin-bottom:5px;">Please fill in the fields below</p>
        <hr>
        
        <form action="/GlowyDays/UserLogin" method="post">
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
                            url: '/GlowyDays/LoginEmail',
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
                    url: '/GlowyDays/LoginPassword',
                    data: { email: email, password: password },
                    success: function (response) {
                        if (response.trim() === "Not login") {
                            $('#passwordValidation').html('<span style="color:red; font-size:13px;">Invalid password! Please try again!</span>');
                            $('#password').val('');
                        } else {
                            break;
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
      
</body>
</html>