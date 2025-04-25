<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ page import="model.Login" %>
<jsp:useBean id="login" class="model.Login" scope="session" />
<jsp:setProperty name="login" property="email" param="email" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link href="../CSS/forgotPW.css" rel="stylesheet" type="text/css">
    </head>
    <body oncontextmenu='return false' class='snippet-body'>
        <div class="ForgotPassword">
            <div class="forgot">
                <h1>Reset password</h1>
                <hr>
                <ol class="list-unstyled">
                    <li>Enter your email address below.</li>
                    <li>Our system will send you an OTP to your email</li>
                    <li>Enter the OTP on the next page</li>
                </ol>
                <hr />
                <hr />
            </div>
            <form class="card mt-4" action="/GlowyDays/ForgotPassword" method="post">
                <fieldset>
                    <div class="card-body">
                        <div class="label">
                            <label for="emailInput">Email:</label>
                        </div>
                        <div class="input">
                            <input type="email" id="email" name="email" placeholder="Email" required><br/>   
                            <div id="emailValidation"></div>
                        </div>
                    </div>

                    <button class="login" onclick="document.location='/GlowyDays/JSP/Login.jsp'">Back to Login</button>
                    <button type="submit">Submit</button>
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

    </body>
</html>