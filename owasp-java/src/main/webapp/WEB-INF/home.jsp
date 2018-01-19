<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sports Bank of India</title>
     </head>
	
    <body background="img/SBI_opq.jpg">   
   		<div style="color:#0000cc" align="left">
   		<br/>
   		<br/>
   		<br/>
        <h3>
         <% 
	         Enumeration<String> sessionAttrs = session.getAttributeNames();
         		while(sessionAttrs.hasMoreElements()) {
	       		String paramName = (String)sessionAttrs.nextElement();
	       		String paramValue = (String)session.getAttribute(paramName);
	       		if (paramName.equals("user")) { 
	       			out.println("Welcome " + paramValue + "");
	       		} 
    		}
		%></h3>
        <div style="color:#0000cc" align="left">
		<%
			Date dt = new Date();
        	out.println("Logged in time: " +dt.toString() + "\n");
		%>
		</div></div>
        <br/>
        <br/>
    <a href="logout.jsp">Logout</a>
    </body>
</html>
