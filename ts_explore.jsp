<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cl.*" %>
<%@ page import="java.util.List" %>
<%@ page errorPage="ts_error.jsp" %>

<%
User user = (User) session.getAttribute("user-object");
if(session.getAttribute("user-object") == null) {
	request.setAttribute("message", "You are not authorized to access this resource. Please login.");
%>

<!DOCTYPE html>
<html lang="en">

<head>
  	<%@ include file="common_pages/page_head.html"  %>
	  <link href="css/buttonmech.css" rel="stylesheet">
  	<%@ include file="common_pages/post_head.html"  %>


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

         	<!-- Card Columns Example Social Feed-->
          <div class="mb-0 mt-4">
            <i class="fa fa-newspaper-o"></i> News Feed</div>
          <hr class="mt-2">
          <div class="card-columns">

<%
PostDAO pdao = new PostDAO();
List<Post> posts = pdao.getPosts();
Post ps = null;

for(int i=0; i < posts.size(); i++) {
	ps = posts.get(i);
%>
            <!-- Example Social Card-->
            <div class="card mb-3">
              <div class="media">
        				<div class="media-left media-top">
        					<img src="http://ism.dmst.aueb.gr/ismgroup55/img/member1.png" class="media-object thumbnail" alt="member1">
        				</div>
        				<div class="media-body">
        					<h3 class="media-heading"><small>&nbsp;<%= ps.getUsername()%></small></h3>
        					<p>&nbsp;&nbsp;Travelling to <%= ps.getDest() %> at <%= ps.getDate1()%> until <%= ps.getDate2()%>.&nbsp;<font color="green">#<%= ps.getAvailability() %></font><p>
        				</div>
        			</div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#interestedModal"  data-toggle="modal" data-target="#interestedModal">
                  <i class="fa fa-fw fa-thumbs-up"></i>Interested</a>
                <a class="mr-3 d-inline-block" href="#">
                  <i class="fa fa-fw fa-comment"></i>Message</a>
              </div>
              <div class="card-footer small text-muted">Posted some minutes ago</div>
            </div>
<%
}
%>


    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->


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
  </div>
   	<%@ include file="common_pages/footer.jsp"  %>

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
	  <link href="css/buttonmech.css" rel="stylesheet">



</head>

<body>

  	<%@ include file="common_pages/navigation_menu.jsp"  %>
	<!-- Card Columns Example Social Feed-->
          <div class="mb-0 mt-4">
            <i class="fa fa-newspaper-o"></i> News Feed</div>
          <hr class="mt-2">
          <div class="card-columns">

<%
PostDAO pdao = new PostDAO();
List<Post> posts = pdao.getPosts();
Post ps = null;

for(int i=0; i < posts.size(); i++) {
	ps = posts.get(i);
%>
            <!-- Example Social Card-->
            <div class="card mb-3">
              <div class="media">
        				<div class="media-left media-top">
        					<img src="http://ism.dmst.aueb.gr/ismgroup55/img/member1.png" class="media-object thumbnail" alt="member1">
        				</div>
        				<div class="media-body">
        					<h3 class="media-heading"><small>&nbsp;<%= ps.getUsername()%></small></h3>
        					<p>&nbsp;&nbsp;Travelling to <%= ps.getDest() %> at <%= ps.getDate1()%> until <%= ps.getDate2()%>.&nbsp;<font color="green">#<%= ps.getAvailability() %></font><p>
        				</div>
        			</div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#interestedModal"  data-toggle="modal" data-target="#interestedModal">
                  <i class="fa fa-fw fa-thumbs-up"></i>Interested</a>
                <a class="mr-3 d-inline-block" href="#">
                  <i class="fa fa-fw fa-comment"></i>Message</a>
              </div>
              <div class="card-footer small text-muted">Posted some minutes ago</div>
            </div>
<%
}
%>

          <!-- /Card Columns-->
					<div class="col-lg-4">
	          <nav class="navbar fixed-bottom navbar-light bg-light" style="background-color:  #000;">
	                <a class="btn icon-btn btn-primary btn pull-right" data-toggle="modal" data-target="#postModal">
	                <span class="glyphicon glyphicon-pencil"></span>
	                Create a Post
	                </a>
	              <p></p>
	              <p></p>
	              <p></p>

	          </nav>

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

								  	<%@ include file="ts_post_1.jsp"  %>
	        </div>
	      </div>
	    </div>
		</div>
		<div class="modal fade" id="interestedModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	      <div class="modal-dialog" role="document">
	        <div class="modal-content">
	          <div class="modal-header">
	            <h5 class="modal-title" id="exampleModalLabel">Interested</h5>
	            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
	              <span aria-hidden="true">×</span>
	            </button>
	          </div>
	          <div class="modal-body">
							The user will be informed that you are interested in his post.
	        </div>
					<div class="modal-footer">
	          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	        </div>
	      </div>
	    </div>
		</div>
        </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->


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
  </div>
  <!-- Footer -->
  <footer class="py-5 bg-light">
    <div class="container">
      <p class="m-0 text-center">Copyright &copy; TravelShare 2017</p>
    </div>
    <!-- /.container -->
  </footer>
</body>
</html>

<%
}
%>
