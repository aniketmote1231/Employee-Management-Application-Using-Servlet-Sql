<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
clip-path: polygon(0 95%, 0 0, 100% 0, 100% 100%, 83% 97%, 68% 99%, 43% 100%, 22% 98%);    
    }
    
    </style>
</head>
<body>
<%@include file="Navbar.jsp" %>
  <main class="primary-background p-5 banner-background" style="padding-bottom:80px;">

   <div class="container" >
  <div class="col-md-6 offset-md-3">
<div class="card">
           <div class="card-header text-center primary-background text-white">
           <span class="fa fa-3x fa-user-circle ">
           <p>Register</p></span>
        </div>
            <div class="card-body">
            <form id="reg-form"  action="./Register" method="Post">
   <div class="form-group">
    <label for="user_name">User Name</label>
    <input name="user_name" type="text" class="form-control" id="user_name">
  </div>
  
  
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input name="user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="user_password" class="form-control" id="exampleInputPassword1">
  </div> 
  
  <div class="form-group">
    <label for="gender">Gender</label>
      <br>
     <input type="radio" id="gender" name="gender" value="male">Male
     <input type="radio" id="gender" name="gender" value="female">Female
  </div>
  
  
  <div class="form-group">
  <textarea name="about" class="form-control"  cols="5" placeholder="Enter Something about youself"></textarea>
  
  </div>
  <div class="form-check">
    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Terms & Condition</label>
  </div>
<div class="container text-center" id="loader" style="display:none;">
  <span class="fa fa-refresh fa-spin fa-4x"></span>
  <h4>Please Wait...</h4>
  </div>
  <button id="submit-btn" type="submit" class="btn btn-primary">Submit</button>
</form>
         </div>
    <div class="footer">
    
     </div>
</div>

</div>

</div>

</main>



<script
  src="https://code.jquery.com/jquery-3.7.0.js"
  integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
  crossorigin="anonymous"></script>  
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js" integrity="sha512-AA1Bzp5Q0K1KanKKmvN/4d3IRKVlv9PYgwFPvm32nPO6QS8yH1HO7LbgB1pgiOxPtfeg5zEn2ba64MUcqJx6CA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>         
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script>
         $(document).ready(function(){
        	 
        	 alert("Loaded")
         })

</script>
<script>
        $(document).ready(function(){
            console.log("loaded...")
            
            $('#reg-form').on('submit',function (event) 
            		{
            	event.preventDefault();
            	
            	let form=new FormData(this);
            	
            	$("#submit-btn").hide();
            	$("#loader").show();
            	
            	
            	$.ajax({
            		url:"Register",
            		type:'Post',
            		data:form,
           success:function (data, textStatus, jqXHR) {
        	   console.log(data)
       	$("#submit-btn").show();
       	$("#loader").hide();
       	
       	if(data.trim()==="done")
       		{
       	
       	
       	
              	swal("Register Successfully..Redirecting to login page")
             	.then((value) => {
           	     window.location ="Login.jsp"
                 	});
       		}else{
         	   swal("Something Went Wrong")
 n
       		}
        	   
        	   
           },
           error:function (jqXHR, textStatus, errorThrown){
        		$("#submit-btn").show();
               	$("#loader").hide();
        	   swal("Something Went Wrong")
               
           },
           processData: false,
           contentType: false
           });
            })
            
        	})
        
        
 
</script>
</body>
</html>