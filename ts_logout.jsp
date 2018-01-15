<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="ts_error.jsp"%>
<%@ page import="cl.*" %>

<%
User user = (User) session.getAttribute("user-object");
session.invalidate();
%>

<!DOCTYPE html>
<html lang="en">
  <head>
  <style>
		body { 
 background: url(img/slide.jpeg) no-repeat center center fixed; 
 -webkit-background-size: cover;
 -moz-background-size: cover;
 -o-background-size: cover;
 background-size: cover;
}
</style>

    <%@ include file="common_pages/page_head.html"  %>

    <meta http-equiv="refresh" content="3;url=ts_index.jsp" />
	
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
            <a class="nav-link" data-toggle="modal" data-target="#signUpModal">Sign up</a>
		</li>
		</li>
	   </ul>

	  </div>


	<!--/.nav-collapse -->
	</div>
	</nav>

	      <p>&nbsp;</p>
	      <p>&nbsp;</p>

	<div class="container theme-showcase" role="main">
		
			<div class="alert alert-warning text-center" role="alert">You have successfully logout out from your account!</div>
		
	</div>
	<!-- /container -->
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


