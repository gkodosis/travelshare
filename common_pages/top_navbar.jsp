<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
User user = new User();
%>
<nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light fixed-top">
  <div class="container">
    <a class="navbar-brand" href="ts_index.html" style ="font-weight: bold; font-size: 1.38rem;">TravelShare</a>
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
        <li class="nav-item">
					<li class="<%= (request.getRequestURI().replace(request.getContextPath() + "/","").equals("ts_index.jsp") ? "active":"") %>">
          <a class="nav-link" href="ts_index.jsp">About</a>
        </li>
        <li class="nav-item">
					<li class="<%= (request.getRequestURI().replace(request.getContextPath() + "/","").equals("ts_explore.jsp") ? "active":"") %>">

          <a class="nav-link" href="ts_explore.jsp">Explore</a>
        </li>
        <li class="nav-item">
					<li class="<%= (request.getRequestURI().replace(request.getContextPath() + "/","").equals("ts_contact.jsp") ? "active":"") %>">

          <a class="nav-link" href="ts_contact.jsp">Contact</a>
        </li>
        <li class="nav-item">
					<li class="<%= (request.getRequestURI().replace(request.getContextPath() + "/","").equals("ts_register.jsp") ? "active":"") %>">

          <a class="nav-link" data-toggle="modal" data-target="#signUpModal">Sign up</a>
        </li>
        <li class="dropdown">
          <a id="user" class="dropdown-toggle" data-toggle="dropdown">
              <span class="glyphicon glyphicon-user"></span><%= user.getUsername() %><span class="caret"></span></a>
                <ul class="dropdown-menu">
									<li class="<%= (request.getRequestURI().replace(request.getContextPath() + "/","").equals("ts_logout.jsp") ? "active":"") %>">
                  <li><a href="ts_logout.jsp">Logout</a></li>
                </ul>
          </li>
      </ul>
    </div>
  </div>
  </nav>
  <!-- Post Modal-->
  <div class="modal fade" id="postModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Create A Post</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="form-group">

            <label for="exampleInputUser1">Destination</label>
            <input class="form-control" id="exampleInputDestiantion" type="destinantion" aria-describedby="userHelp" placeholder="What is your destination">

          </div>
          <div class="form-group">

            <label for="exampleInputPassword1">Date</label>
            <div class="input-daterange input-group" id="datepicker">
                <input type="text" class="input-sm form-control" name="from" placeholder="From date"/>
                <span class="input-group-addon">to</span>
                <input type="text" class="input-sm form-control" name="to" placeholder="To date"/>
            </div>

          </div>
          <div class="form-group">

            <label for="exampleInputPassword1">Luggage</label>
            <input class="form-control" id="exampleInputPassword1" type="password" placeholder="How much free space">
          </div>



        </div>
        <div class="modal-footer">
          <a class="btn btn-primary btn-block" href="ts_index.html">Post</a>
        </div>
      </div>
    </div>
  </div>
  <!-- SignUp Modal-->
  <div class="modal fade" id="signUpModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Sign Up</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputName">First name</label>
                <input class="form-control" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="Enter first name">
              </div>
              <div class="col-md-6">
                <label for="exampleInputLastName">Last name</label>
                <input class="form-control" id="exampleInputLastName" type="text" aria-describedby="nameHelp" placeholder="Enter last name">
              </div>
            </div>
          </div>
          <div class="form-group">
            <label for="exampleInputUser">Username</label>
            <input class="form-control" id="exampleInputUser" type="user" aria-describedby="userHelp" placeholder="Enter username">
          </div>
          <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp" placeholder="Enter email">
          </div>
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputPassword1">Password</label>
                <input class="form-control" id="exampleInputPassword1" type="password" placeholder="Password">
              </div>
              <div class="col-md-6">
                <label for="exampleConfirmPassword">Confirm password</label>
                <input class="form-control" id="exampleConfirmPassword" type="password" placeholder="Confirm password">
              </div>
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <a class="btn btn-primary btn-block" href="ts_login.html">Sign up</a>
        </div>
      </div>
    </div>
  </div>
  <!-- Logout Modal-->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="ts_login.html">Logout</a>
        </div>
      </div>
    </div>
  </div>
