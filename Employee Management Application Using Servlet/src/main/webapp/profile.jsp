<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="com.tech.blog.entities.User2"%>
    <%@page errorPage="error.jsp" %>
    <%
  User2 user=(User2)session.getAttribute("CurrentUser");
    if (user==null)
    {
    	response.sendRedirect("Login.jsp");
    } 
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="css/mystyle.css " rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

   <style>
    .banner-background{
clip-path: polygon(0 95%, 0 0, 100% 0, 100% 100%, 83% 97%, 68% 99%, 43% 100%, 22% 98%);    }
    
    </style>
</head>
<body>


   <nav class="navbar navbar-expand-lg navbar-dark primary-background">
  <a class="navbar-brand" href="index.jsp"><span class="fa fa-asterisk"></span>Navbar</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"><span class="fa fa-bank"></span>Learn <span class="sr-only">(current)</span></a>
      </li>
     
      
      <li class="nav-item">
        <a class="nav-link" href="#"><span class="fa fa-phone"></span>Contact</a>
      </li>
     
      
    </ul>
    <ul class="navbar-nav mr-right">
    <li class="nav-item">
        <a class="nav-link" href="Register.jsp"><span class="fa fa-user-o spin-3"></span><%=user.getName() %></a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="Logout"><span class="fa fa-user-times"></span>Logout</a>
      </li>
    </ul>
  </div>
</nav>
    
    
    
    
</body>
</html>