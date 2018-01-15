<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cl.*" %>
<%@ page errorPage="ts_error.jsp" %>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="travelshare">

	<style>
		body { 
 background: url(img/sl.jpeg) no-repeat center center fixed; 
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
}

.panel-default {
 opacity: 0.9;
 margin-top:30px;
}
.form-group.last {
 margin-bottom:0px;
}
.form-signin {
  max-width: 330px;
  padding: 15px;
  margin: 0 auto;
}
.form-signin .form-signin-heading,
.form-signin .checkbox {
  margin-bottom: 10px;
}
.form-signin .form-control {
  position: relative;
  height: auto;
  -webkit-box-sizing: border-box;
     -moz-box-sizing: border-box;
          box-sizing: border-box;
  padding: 10px;
  font-size: 16px;
}
.form-signin .form-control:focus {
  z-index: 2;
}
.form-signin input[type="text"] {
  margin-bottom: 10px;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
  
}
.form-signin input[type="password"] {
  margin-bottom: 10px;
  border-top-left-radius: 0;
  border-top-right-radius: 0;
}

	</style>

	<title>Login</title>

	  	<%@ include file="common_pages/page_head.html"  %>

</head>

<body>
	<!-- Fixed navbar -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
      <a class="navbar-brand" href="ts_index.jsp" style ="font-weight: bold; font-size: 1.38rem;">TravelShare</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <form class="form-inline my-2 my-lg-0 mr-lg-2">
              <div class="input-group">
                <input class="form-control" type="text" placeholder="Search for...">
                <span class="input-group-btn">
                  <button class="btn btn-primary" type="button">
                    <i class="fa fa-search"></i>
                  </button>
                </span>
              </div>
            </form>
          </li>

		<li class="<%= ( request.getRequestURI().replace(request.getContextPath() + "/","").equals("ts_index.jsp")
			|| request.getRequestURI().replace(request.getContextPath() + "/","").equals("about") ? "active":"") %>">
            <a class="nav-link" href="ts_index.jsp#about">About</a>
		</li>
		<li class="<%= (request.getRequestURI().replace(request.getContextPath() + "/","").equals("ts_explore.jsp") ? "active":"") %>">
            <a class="nav-link" href="ts_explore.jsp">Explore</a>
		</li>
          <li class="<%= (request.getRequestURI().replace(request.getContextPath() + "/","").equals("ts_contact.jsp") ? "active":"") %>">
            <a class="nav-link" href="ts_contact.jsp">Contact</a>
		  </li>
          <li class="<%= (request.getRequestURI().replace(request.getContextPath() + "/","").equals("ts_register.jsp") ? "active":"") %>">
            <a class="nav-link" href="ts_register.jsp">Sign up</a>
		  </li>
		  <li class="<%= (request.getRequestURI().replace(request.getContextPath() + "/","").equals("ts_login.jsp") ? "active":"") %>">
            <a class="nav-link" href="ts_login.jsp">Login</a>
		  </li>
	   </ul>

	  </div>


	<!--/.nav-collapse -->
	</div>
	</nav>
	<!-- /.Fixed navbar -->
	
	  
	      <p>&nbsp;</p>
          <p>&nbsp;</p>
		  <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          

<div class="container theme-showcase" role="main">	

		<form class="form-signin" method="post" action="ts_loginController.jsp">
			<h2 class="form-signin-heading text-center" style="color:white;">Sign in</h2>
			<label for="inputusername" class="sr-only">Username</label> 
			<input type="text" name="username" id="inputusername" class="form-control" placeholder="username" required>
			<label for="inputpassword" class="sr-only">Password</label>
			<input name="password" type="password" id="inputpassword" class="form-control" placeholder="password" required>

			<button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>
		</form>

	</div>
	<!-- /container -->
		
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>    
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
    <!-- Custom scripts for this page-->
    <script src="js/sb-admin-datatables.min.js"></script>
    <script src="js/sb-admin-charts.min.js"></script>
    <script src="js/gulpfile.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
