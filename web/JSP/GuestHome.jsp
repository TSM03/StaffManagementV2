<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Guest Home</title>
        <link href="../CSS/style.css?v=2" rel="stylesheet" type="text/css">
    </head>
    <body>
        <section id="header">
            <div class="header-left">
               <a href="../JSP/GuestHome.jsp"><img src="../IMG/logo.jpg" alt="Index" width="180" height="70"></a>
            </div>
            <div class="header-right">
               <input type="text" placeholder="Search.."><img src="../ICON/search.svg" width="30" height="30">
               <a href="../JSP/cart.jsp"><img src="../ICON/cart.svg" alt="Cart" width="45" height="45"></a>
               <div class="avatar-container">
                    <img src="../ICON/avatar.svg" alt="Login" width="40" height="40">
                    <div class="dropdown-menu">
                        <a href="../JSP/Register.jsp">Register</a>
                        <a href="../JSP/Login.jsp">Login</a>
                    </div>
              </div>
            </div>
        </section>
    </body>
</html>