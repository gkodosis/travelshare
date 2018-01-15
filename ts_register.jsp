<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cl.*" %>
<%@ page errorPage="ts_error.jsp" %>


<!DOCTYPE html>
<html lang="en">

<head>
	<style>
		body { 
 background: url(img/sli.jpeg) no-repeat center center fixed; 
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
 padding-top: 30px;
	overflow-x: auto;
	overflow-y: auto;
	min-height: 100%;
    	height: auto;
    	margin: 0px;
}

html {
    position: relative;
    min-height: 100%;
    height: 100%;
    overflow-x: hidden;
    overflow-y: scroll;
}

.container {
    position: relative;
}

.center {
    position: absolute;
    left: 0;
    top: 50%;
    width: 100%;
    text-align: center;
    font-size: 18px;
}
	

</style>
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
		</li>
	   </ul>

	  </div>


	<!--/.nav-collapse -->
	</div>
	</nav>

		  <p>&nbsp;</p>
	     
		  

  <div class="container">
	
		<form class="form-horizontal" method="POST" action="servlet/RegisterController">
			<div class="form-group">
				<label class="control-label col-lg-4 col-md-4 col-sm-4" for="inputUsername">Username:</label>
					<div class="col-lg-4 col-md-4 col-sm-4">
						<input type="text" class="form-control" id="inputUsername" name="username" placeholder="Username">
					</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-4 col-md-4 col-sm-4" for="inputPsw">Password:</label>
					<div class="col-lg-4 col-md-4 col-sm-4">
						<input type="password" class="form-control" id="inputPsw" name="password" placeholder="New Password">
					</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-4 col-md-4 col-sm-4" for="inputPsw2">Password Confirmation:</label>
					<div class="col-lg-4 col-md-4 col-sm-4">
						<input type="password" class="form-control" id="inputPsw2" name="passwordval" placeholder="Insert your password again">
					</div>
			</div>
			<div class="form-group">
				<label class="control-label col-lg-4 col-md-4 col-sm-4" for="inputEmail">Email:</label>
					<div class="col-lg-4 col-md-4 col-sm-4">
						<input type="email" class="form-control" id="inputEmail" name="email" placeholder="Email">
					</div>
			</div>
			<div class="form-group">
				<div class="col-lg-4 col-md-4 col-sm-4">
					<button type="submit" class="btn btn-default btn-lg btn-custom">Sign Up</button>
				</div>
			</div>
			</form>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
