<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>

<%
User user = (User) session.getAttribute("user-object");
if(session.getAttribute("user-object") == null) {
	request.setAttribute("message", "You are not authorized to access this resource. Please login.");
%>

<!DOCTYPE html>
<html lang="en">

<head>
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

		<div class="container theme-showcase" role="main">

			<p>&nbsp;</p>
			<p>&nbsp;</p>
			
			<div class="page-header">
				<h1>Σφάλμα</h1>
			</div>

			<div class="alert alert-danger" role="alert"><%= exception.getMessage() %></div>
		</div>
		<!-- /container -->

	</body>
</html>

<%
} else {
	UserDAO udao = new UserDAO();
%>

<!DOCTYPE html>
<html lang="en">

<head>
  	<%@ include file="common_pages/page_head.html"  %>


</head>

<body>

  	<%@ include file="common_pages/navigation_menu.jsp"  %>
	
	<div class="container theme-showcase" role="main">

			&nbsp;
			&nbsp;
			&nbsp;
			&nbsp;
			<div class="page-header">
				<h1>Σφάλμα</h1>
			</div>

			<div class="alert alert-danger" role="alert"><%= exception.getMessage() %></div>
		</div>
		<!-- /container -->


	</body>
</html>

<%
}
%>
	

