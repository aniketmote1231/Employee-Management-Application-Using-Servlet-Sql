<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

   <style>
    .banner-background{
   clip-path: polygon(30% 0%, 70% 0%, 100% 0, 99% 85%, 70% 100%, 29% 79%, 0 100%, 0 0);
    }
    
    </style>
</head>
<body>
<%--  <%@include file="Navbar.jsp" %> 
 --%>
<div class="container-fluid p-0 m-o">
<div class="jumbotron primary-background text-white" >
<div class="container">
<h3 class="display-3"> Welcome...</h3>
<h3> back..</h3>
<p>Welcome to the website. using JSP ,Servlet ,JSTL ,HTTP, </p>
<button class="btn btn-outline-light"><span class="fa fa-flag"></span> Start...!  </button>
<a href="Login.jsp" class="btn btn-outline-light"> <span class="fa fa-user-circle"></span> Login...!  </a>
<a href="Register.jsp" class="btn btn-outline-light"> <span class="fa fa-user-plus"></span> Register...!  </a>

<a href='./ShowEmpServlet'class="btn btn-outline-light"> <span class="fa fa-bars"></span> Employee List</a>
<a href="NewFile.jsp" class="btn btn-outline-light"> <span class="fa fa-cloud"></span> Employee Document</a>
<a href="NewFile.jsp" class="btn btn-outline-light"> <span class="fa fa-cloud"></span> Delete Employee Details</a>

</div>
</div>
</div>

<sql:setDataSource var="dn" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:orcl" user="aniket"  password="aniket"/>
<sql:query dataSource="${dn}" var="xy">Select * from emp</sql:query>
<div class="container">
<table class="table">
<tr>
<td>user id</td>
<td>sname</td>
<td> sal</td>
</tr>

<c:forEach items="${xy.rows}" var="row">
<tr>  
<td><c:out value="${row.id}"/></td>  
<td><c:out value="${row.sname}"/></td>  
<td><c:out value="${row.esal}"/></td>  
</tr>

</c:forEach>

</table>
</div>





  <script
  src="https://code.jquery.com/jquery-3.7.0.js"
  integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
  crossorigin="anonymous"></script>           
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
         $(document).ready(function(){
        	 
        	 alert("Loaded")
         })

</script>

</body>
</html>