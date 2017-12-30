<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
  	<%@ include file="common_pages/page_head.html"  %>
</head>

  <div class="container theme-showcase" role="main">
    <% if(request.getAttribute("message") != null) { %>
      <div class="alert alert-danger text-center" role="alert"><%=(String)request.getAttribute("message") %></div>
    <% } %>

    <div class="card card-login mx-auto mt-5">
      <div class="card-header">Login</div>
      <div class="card-body">
        <form>
          <div class="form-group">
            <label for="exampleInputUser1">Username</label>
            <input class="form-control" id="exampleInputusername" type="username" aria-describedby="userHelp" placeholder="Enter username">
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input class="form-control" id="exampleInputPassword1" type="password" placeholder="Password">
          </div>
          <div class="form-group">
            <div class="form-check">
              <label class="form-check-label">
                <input class="form-check-input" type="checkbox"> Remember Password</label>
            </div>
          </div>
          <a class="btn btn-primary btn-block" href="ts_index.jsp">Login</a>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="ts_register.jsp">Register an Account</a>
          <a class="d-block small" href="ts_forgot-password.jsp">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
