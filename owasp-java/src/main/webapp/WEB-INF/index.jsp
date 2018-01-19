<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sports Bank of India</title>
</head>
<body>
<h2>Sports Bank of India</h2>
 
<table border="1">
<tr>
<th>SBI Headers</th><th>Header Value(s)</th>
</tr>
<%
	HttpSession SBI = request.getSession(); 
	out.print("<tr><td>Session Name is </td><td>" +SBI+ "</td.></tr>");
	Locale SBI_locale = request.getLocale ();
	out.print("<tr><td>Locale Name is</td><td>" +SBI_locale + "</td></tr>");
	String servername = request.getServerName(); 
	out.print("<tr><td>Server Name is </td><td>" +servername+ "</td></tr>");
	int portname = request.getServerPort(); 
	out.print("<tr><td>Server Port is </td><td>" +portname+ "</td></tr>");
	Enumeration<String> hnames = request.getHeaderNames();
	while(hnames.hasMoreElements()) { 
		String paramName = (String)hnames.nextElement();
		out.print ("<tr><td>" + paramName + "</td>" );
		
		String paramValue = request.getHeader(paramName);
		out.println("<td> " + paramValue + "</td></tr>");
	}
%>
</table>
