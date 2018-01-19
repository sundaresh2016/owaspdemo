<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sports Bank of India</title>
    </head>
    <body>
        <%
        session.removeAttribute("user");
        session.removeAttribute("password");
        session.invalidate();
        %>
        <h3>Successfully logged out!!!</h3>
        <h4>Click here to login again - <a href="login.jsp">Login to SBI</a></h4>
    </body>
</html>
