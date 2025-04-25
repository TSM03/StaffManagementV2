<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Enter OTP</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link href="../CSS/OTP.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="container">
        <fieldset>
            <div class="header">
                <h1 style="text-align:center;">Enter OTP</h1>
                <img src="../ICON/lock.svg" alt="Lock">
                <br />
                <%
                    String message = (String) session.getAttribute("message");
                    if (message != null) {
                %>
                    <p class="text-success" style="text-align: center; margin-top: 10px;">
                        <%= message %>
                    </p>
                <%
                        session.removeAttribute("message");
                    }
                %>
            </div>
            <div class="body">
                <form action="/GlowyDays/ValidateOtp" autocomplete="off" method="post">
                    <div class="form-section">
                        <div class="input-group">
                            <img class="envelope" src="../ICON/envelope.svg">
                            <input id="otp" name="otp" placeholder="Enter OTP" type="text" required>
                        </div>
                    </div>
                    <input type="hidden" name="email" value="<%= session.getAttribute("email") %>">
                <button type="submit">Reset Password</button>
                </form>
            </div>
        </fieldset>
    </div>
</body>
</html>
