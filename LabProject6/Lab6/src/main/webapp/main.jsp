<%-- 
    Document   : main
    Created on : May 21, 2024, 6:20:11 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@ page import="lab6.com.User" %>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            // Retrieve user object from session
            lab6.com.User user = (lab6.com.User) session.getAttribute("user");

            // Check if user object exists in session
            if (user != null) {
        %>
        <h1>Welcome, <%= user.getFirstname() %> <%= user.getLastname() %></h1>
        <p>Your username is: <%= user.getUsername() %></p>

        <!-- Add other content here -->

        <p><a href="logout.jsp">Logout</a></p>
        <%
            } else {
                // If user object does not exist in session, redirect to login page
                response.sendRedirect("login.jsp");
            }
        %>
    </body>
</html>
