<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!int a=10 , b=20 ;%>
Current Time:<%=java.util.Calendar.getInstance().getTime() %>
<% out.print("<br> sum of two number :"); %>

<%=a+b %>
<%out.print("<br> no declaration datatype for addition * miltipication 2+5*4 result is:::"); %>
<%= 2+4*5 %>
<%
out.print("<br> othet expression in jsp");
int a1=10;
int b1=20;
int c1=30;
%>
<%= a1+b1+c1 %>

<% out.print("<br> get value through getAttribute method using Expression::");%>
<% application.setAttribute("myName", "name is JSPDemo"); %>
<a  href="display.jsp">Click Me For Disply</a>

</body>
</html>