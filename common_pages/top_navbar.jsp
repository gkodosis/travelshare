<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cl.*" %>
<%@ page errorPage="ts_error.jsp" %>

	
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
          <a class="nav-link" href="ts_index.jsp">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="ts_explore.jsp">Explore</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="ts_contact.jsp">Contact</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="ts_register.jsp">Sign up</a>
        </li>
        <li class="dropdown">
          <a id="user" class="dropdown-toggle" data-toggle="dropdown">
              <span class="glyphicon glyphicon-user"></span><%= user.getUsername() %><span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="ts_logout.jsp">Logout</a></li>
                </ul>
          </li>
      </ul>
    </div>
  </div>
  </nav>
