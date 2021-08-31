<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%!int data=50; %>
<%="Value of the variable is:"+data %>
<%out.print("<br> decalre method in declaration tag"); %>
<%!
int cube(int n){
	
	return n*n*n;
}
%>
<%="Cube Of 3 is:"+cube(3) %>

<% out.print("<br> String declare and getting:"); %>
<%! String name="usha vishwnath more" ;%>
<%="welcome :"+name %>

<%!
int fact(int  n)
{
	if(n == 0)
		return 1;
	   return n*fact(n-1);
}
%>
<%=  "factorial of 8 is:"+fact(8) %>
</body>
</html>