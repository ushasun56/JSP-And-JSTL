<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sql Tag</title>
</head>
<body>
           <!--database connection  -->
	<sql:setDataSource var="yashmysql" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/yashmysql" user="root"
		password="root" />
	<c:out value="${'database Connected........................ '}" />
	<br>

  <sql:update dataSource="${yashmysql}" var="count">  
       INSERT INTO users VALUES ('sona','sona@123',10,'sona@gmail.com');  
      </sql:update>
    <c:out value="${'value inserted........................ '}" />   
    
    
          <!-- sql select query  -->
	<sql:query dataSource="${yashmysql}" var="rs">  
     SELECT * from users;  
     </sql:query>
     
  

	<table border="2" width="100%">

		<tr>
			<th>username</th>
			<th>password</th>
			<th>enabled</th>
			<th>email</th>
		</tr>

		<c:forEach var="table" items="${rs.rows}">
			<tr>
				<td><c:out value="${table.username}" /></td>
				<td><c:out value="${table.password}" /></td>
				<td><c:out value="${table.enabled}" /></td>
				<td><c:out value="${table.email}" /></td>
			</tr>
		</c:forEach>
	</table>
	 
    
	
</body>
</html>