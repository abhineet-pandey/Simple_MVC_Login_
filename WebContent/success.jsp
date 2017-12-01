<link rel="stylesheet" href="style.css">
<%@page import="model.user"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<div class="error-page">
	<title></title>
</head>
<body>
	<div class=".container:before">
		<%
			user user = (user) request.getAttribute("user");
			//out.println(user.getUsername());
			//System.out.println("Welcome "+user.getPassword() );
			java.util.Date d = new java.util.Date();

			out.println("Welcome " + user.getRole() + " " + user.getUsername() + "!");
			out.println("Current Time And Date is " + d.toString());
		%>
	
</body>
</div>
</div>
</html>