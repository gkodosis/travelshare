<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cl.*" %>
<%@ page errorPage="ts_error.jsp" %>



	<!-- Fixed navbar -->
  <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
      <a class="navbar-brand" href="ts_index.jsp" style ="font-weight: bold; font-size: 1.38rem;">TravelShare</a>
      <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbar">
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
          
			<ul class="nav navbar-nav navbar-right">

			<li class="dropdown" style="color: rgba(0,0,0,.5);display: block;padding: .5rem 1rem;padding-top: 0.5rem;padding-right: 1rem;padding-bottom: 0.5rem;padding-left: 1rem;">
  				<a id="user" class="dropdown-toggle" data-toggle="dropdown">
  				    <span class="glyphicon glyphicon-user"></span><%= user.getUsername() %><span class="caret"></span>
				</a>
         		<ul class="dropdown-menu">
					<li><a href="ts_logout.jsp">Logout</a></li>
		      	</ul>
         	</li>
			</ul>
			</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</nav>
	<!-- /.Fixed navbar -->

  
 