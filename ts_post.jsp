<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cl.*" %>
<%@ page errorPage="ts_error.jsp" %>

<!--
User user = (User) session.getAttribute("user-object");
if(session.getAttribute("user-object") == null) {
    request.setAttribute("message", "You are not authorized to access this resource. Please login or register");
%>
  <jsp: forward page="ts_login.jsp"/>

} else {
  UserDao udao = new UserDao();
-->

<!DOCTYPE html>
<html lang="en">

<head>
  	<%@ include file="common_pages/page_head.html"  %>
</head>

<body class="bg-dark">

  <!--<div class="container">
    <div class="row">
      Date formats: yyyy-mm-dd, yyyymmdd, dd-mm-yyyy, dd/mm/yyyy, ddmmyyyyy
    </div>
    <br />
      <div class="row">
          <div class='col-sm-3'>
              <div class="form-group">
                  <div class='input-group date' id='datetimepicker1'>
                      <input type='text' class="form-control" />
                      <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span>
                      </span>
                  </div>
              </div>
          </div>
      </div>
  </div> -->

  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Create A Post</div>
      <div class="card-body">
        <form>
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

          <a class="btn btn-primary btn-block" href="ts_explore.jsp">Post</a>
        </form>

    </div>
  </div>
    <%@ include file="common_pages/footer.jsp"  %>

</body>

</html>
