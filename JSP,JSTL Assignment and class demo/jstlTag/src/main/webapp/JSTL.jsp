<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>allJSTLtag</title>
</head>
<body>
	<!-- c:out core tag   -->
	<c:out value="${'Welcome to jstl'}" />
	<c:set var="number" scope="session" value="${1000}" />
	<c:out value="${number }" />

	<!-- c:if core tag   -->
	<c:if test="${number<=20000 }">
		<p>
			number is
			<c:out value="${number}" />
		</p>
	</c:if>

	<!-- c:choose,c:when core tag for imp switch case   -->
	<c:choose>
		<c:when test="${number <= 10000 }">
        Number is less than 10000
        </c:when>

		<c:when test="${number <= 10000 }">
        Number is greater than 10000
        </c:when>
		<c:otherwise>
        Invalid data
        </c:otherwise>
	</c:choose>

	<!-- c:forEach core tag   -->
	<c:forEach var="i" begin="1" end="10">
		<br>
       Integers <c:out value="${i}" />
	</c:forEach>

	<!-- c:remove core tag   -->
	<c:remove var="number" />
	<p>
		After Remove number is:
		<c:out value="${number}" />
	</p>

	<!-- c:set core tag use for scope    -->
	<c:set var="name" value="hello welcome to JSTL" />
	<p>
		the name is:
		<c:out value="${name}" />
	</p>

	<!-- fn use for function tag  -->
	<c:if test="${fn:containsIgnoreCase(name,'Welcome')}">
		<p>welcome is found</p>
	</c:if>
	
	<c:if test="${fn:endsWith(name,'JSTL')}">
		<p>msg End with JSTL </p>
	</c:if>

	<!-- impliment format  tag   -->
	<c:set var="date" value="<%=new java.util.Date()%>" />
	<c:out value="${date}" />
	<br>
	<fmt:formatDate value="${date}" />
	<br>
	<fmt:formatDate type="both" dateStyle="medium" value="${date}" />

   <!-- catch exception -->
	<c:catch var="catchtheException">
		<%
		int x = 10 / 0;
		%>
	</c:catch>

	<c:if test="${catchtheException != null}">
		<p>
			The type of exception is : ${catchtheException} <br /> There is an
			exception: ${catchtheException.message}
		</p>
	</c:if>

</body>
</html>