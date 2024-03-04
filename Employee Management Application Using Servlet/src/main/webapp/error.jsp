<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Something Wrong..`</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="css/mystyle.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    .banner-background{
clip-path: polygon(0 95%, 0 0, 100% 0, 100% 100%, 83% 97%, 68% 99%, 43% 100%, 22% 98%);    }
    
    </style>
</head>
<body>

 
<div class="container text-center ">
  <img src="images/browser.png" class="img-fluid">
 <h3 class="display-3">Sorry..! Something Went Wrong</h3>
 <%= exception %>
 <a href="index.jsp" class="btn primary-background btn-lg text-white mt-3">Home</a>

</div>




</body>
</html>