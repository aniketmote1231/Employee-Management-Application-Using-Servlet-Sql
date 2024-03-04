<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<sql:setDataSource var="db" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:orcl" user="aniket"  password="aniket"/>

<c:set var="eno" value="191"/>  
<sql:update dataSource="${db}" var="count">  
DELETE FROM EMP WHERE id = ?  
 <sql:param value="${eno}" />  
</sql:update>  

<sql:query dataSource="${db}" var="rs">  
SELECT * from emp  
</sql:query>  

<table border="2" width="100%">  
<tr>  
<th>Emp ID</th>  
<th>Emp Name</th>  
<th>Emp Salary</th>  
</tr>  
<c:forEach var="table" items="${rs.rows}">  
<tr>  
<td><c:out value="${table.id}"/></td>  
<td><c:out value="${table.sname}"/></td>  
<td><c:out value="${table.esal}"/></td>  
</tr>  
</c:forEach>  
</table>  
</body>
</html>