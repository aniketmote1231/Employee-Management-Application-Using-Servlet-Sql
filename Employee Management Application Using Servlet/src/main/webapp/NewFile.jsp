<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="css/mystyle.css " rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
<main class="d-flex align-items-center primary-background banner-background" style="height:80vh">
  <div class="container center">
  <div class="row">
  <div class="col-md-8 offset-md-2 center">
  <div class="card">
  <div class="card-header primary-background text-center">



<div class="card-body">
<div class="form-group">
        <h2><p class="font-weight-bold">Document Upload</p></h2>
        <form action="FileUploadServlet" method="POST" enctype="multipart/form-data">
            
            <label for="photo">Upload Photo (Image):</label>
            <input type="file" id="photo" name="photo" accept="image/*" required>
            <div class="container text-center"> 
            <input type="submit" value="Submit">
            </div>
            </form>
            <form action="DeleteImagesServlet" method="post">
            Image Paths (comma-separated): <input type="text" name="imagePaths" required>
             <input type="submit" value="Delete Images">
    </form>
            
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>
            </main>
            
            
        </form>
    </div>
</body>
</html>