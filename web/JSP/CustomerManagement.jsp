<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Home</title>
    <link href="../CSS/style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <section id="header">
        <div class="header-left">
            <a href="../JSP/UserHome.jsp"><img src="../IMG/logo.png" alt="Index" width="180" height="70"></a>
        </div>
        <div class="header-right">
            <input type="text" placeholder="Search.."><img src="../ICON/search.svg" width="30" height="30">
            <a href="../JSP/cart.jsp"><img src="../ICON/cart.svg" alt="Cart" width="45" height="45"></a>
            <div class="avatar-container">
                <img src="../ICON/avatar.svg" alt="Login" width="40" height="40">
                <div class="dropdown-menu">
                    <%
                        Long userID = (Long) session.getAttribute("userID");
                        String username = (String) session.getAttribute("username");
                    %>
                    <a style="pointer-events: none;">Username: <%= username %></a>
                    <a href="../JSP/UserProfile.jsp">User Profile</a>
                    <a href="<%= request.getContextPath() %>/LogoutServlet" >Log Out</a>
                </div>
            </div>
        </div>
    </section>
        <%
            String driverName = "org.apache.derby.jdbc.ClientDriver";
            String connectionUrl = "jdbc:derby://localhost:1527/Client";
            String userId = "nbuser";
            String password = "nbuser";

            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;

            try {
                Class.forName(driverName);
                connection = DriverManager.getConnection(connectionUrl, userId, password);
                statement = connection.createStatement();
                String sql = "SELECT * FROM \"USER\" WHERE \"role\" = 'customer'";
                resultSet = statement.executeQuery(sql);
        %>
        <h2 align="center"><strong>Retrieve data from database in JSP</strong></h2>
        <table align="center" cellpadding="5" cellspacing="5" border="1">
            <tr bgcolor="#A52A2A">
                <td><b>ID</b></td>
                <td><b>Name</b></td>
                <td><b>Username</b></td>
                <td><b>Birth</b></td>
                <td><b>Email</b></td>
                <td><b>Mobile No</b></td>
                <td><b>Role</b></td>
                <td><b>Actions</b></td>
            </tr>
            <%
                while (resultSet.next()) {
            %>
            <tr bgcolor="#DEB887">
                <td><%= resultSet.getString("user_id") %></td>
                <td><%= resultSet.getString("name") %></td>
                <td><%= resultSet.getString("username") %></td>
                <td><%= resultSet.getString("birth") %></td>
                <td><%= resultSet.getString("email") %></td>
                <td><%= resultSet.getString("mobileNo") %></td>
                <td><%= resultSet.getString("role") %></td>
                <td>
                    <a href="EditUserDetails.jsp?id=<%= resultSet.getString("user_id") %>">Edit</a> |
                    <a href="<%= request.getContextPath() %>/RemoveUserServlet?id=<%= resultSet.getString("user_id") %>" onclick="return confirm('Are you sure you want to delete this user?');">Remove</a>
                </td>
            </tr>
            <%
                }
            } catch (Exception e) {
                out.println("Database error: " + e.getMessage());
                e.printStackTrace();
            } finally {
                try {
                    if (resultSet != null) resultSet.close();
                    if (statement != null) statement.close();
                    if (connection != null) connection.close();
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
            %>
        </table>
        
        <p id="message" style="color: gray; font-size: 14px; text-align: center;">Add New User? <a href="/GlowyDays/JSP/AddNewUser.jsp">Click Here</a></p>
    </body>
</html>