<%@ page import = "javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% out.print("Welcome To JSP"); %>
<%
String name=request.getParameter("username");
out.print("Welcome  :"+name);
%>
</body>
</html>