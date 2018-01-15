<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cl.*" %>
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
            <!-- Example Social Card-->
            <div class="card mb-3">
              <div class="media">
        				<div class="media-left media-top">
        					<img src="http://ism.dmst.aueb.gr/ismgroup55/img/g.jpg" class="media-object thumbnail" alt="member1">
        				</div>
        				<div class="media-body">
        					<h3 class="media-heading"><small>&nbsp;George Gerrard</small></h3>
        					<p>&nbsp;&nbsp;Travelling to London, United Kindom at 20/12/2017.&nbsp;<font color="green">#available</font><p>
        				</div>
        			</div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#interested">
                  <i class="fa fa-fw fa-thumbs-up"></i>Interested</a>
                <a class="mr-3 d-inline-block" href="#">
                  <i class="fa fa-fw fa-comment"></i>Message</a>
              </div>
              <div class="card-footer small text-muted">Posted 32 mins ago</div>
            </div>
            <!-- Example Social Card-->
            <div class="card mb-3">
              <div class="media">
        				<div class="media-left media-top">
        					<img src="http://ism.dmst.aueb.gr/ismgroup55/img/n.jpg" class="media-object thumbnail" alt="member2">
        				</div>
        				<div class="media-body">
        					<h3 class="media-heading"><small>&nbsp;Jason Stoke</small></h3>
        					<p>&nbsp;&nbsp;Travelling to Berlin, Germany at 27/12/2017.&nbsp;<font color="green">#available</font><p>
        				</div>
        			</div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#interested">
                  <i class="fa fa-fw fa-thumbs-up"></i>Interested</a>
                <a class="mr-3 d-inline-block" href="#">
                  <i class="fa fa-fw fa-comment"></i>Message</a>
              </div>
              <div class="card-footer small text-muted">Posted 46 mins ago</div>
            </div>
            <!-- Example Social Card-->
            <div class="card mb-3">
              <div class="media">
                <div class="media-left media-top">
                  <img src="http://ism.dmst.aueb.gr/ismgroup55/img/w.jpg" class="media-object thumbnail" alt="member2">
                </div>
                <div class="media-body">
                  <h3 class="media-heading"><small>&nbsp;Sophia Fischer</small></h3>
                  <p>&nbsp;&nbsp;Travelling to Athens, Greece at 15/03/2018.&nbsp;<font color="green">#available</font><p>
                </div>
              </div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#interested">
                  <i class="fa fa-fw fa-thumbs-up"></i>Interested</a>
                <a class="mr-3 d-inline-block" href="#">
                  <i class="fa fa-fw fa-comment"></i>Message</a>
              </div>
              <div class="card-footer small text-muted">Posted 1 hr ago</div>
            </div>
            <!-- Example Social Card-->
            <div class="card mb-3">
              <div class="media">
        				<div class="media-left media-top">
        					<img src="http://ism.dmst.aueb.gr/ismgroup55/img/a.jpg" class="media-object thumbnail" alt="member1">
        				</div>
        				<div class="media-body">
        					<h3 class="media-heading"><small>&nbsp;Christine Evans</small></h3>
        					<p>&nbsp;&nbsp;Travelling to Lisbon, Portugal at 09/04/2018.&nbsp;<font color="red">#unavailable</font><p>
        				</div>
        			</div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#interested">
                  <i class="fa fa-fw fa-thumbs-up"></i>Interested</a>
                <a class="mr-3 d-inline-block" href="#">
                  <i class="fa fa-fw fa-comment"></i>Message</a>
              </div>
              <div class="card-footer small text-muted">Posted 32 mins ago</div>
            </div>

            <!-- Example Social Card-->
            <div class="card mb-3">
              <div class="media">
        				<div class="media-left media-top">
        					<img src="http://ism.dmst.aueb.gr/ismgroup55/img/cc.jpg" class="media-object thumbnail" alt="member1">
        				</div>
        				<div class="media-body">
        					<h3 class="media-heading"><small>&nbsp;John Shelby</small></h3>
        					<p>&nbsp;&nbsp;Currently at Barcelona, Spain.&nbsp;<font color="green">#available</font><p>
        				</div>
        			</div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#interested">
                  <i class="fa fa-fw fa-thumbs-up"></i>Interested</a>
                <a class="mr-3 d-inline-block" href="#">
                  <i class="fa fa-fw fa-comment"></i>Message</a>
              </div>
              <div class="card-footer small text-muted">Posted 32 mins ago</div>
            </div>
            <!-- Example Social Card-->
            <div class="card mb-3">
              <div class="media">
                <div class="media-left media-top">
                  <img src="http://ism.dmst.aueb.gr/ismgroup55/img/t.jpg" class="media-object thumbnail" alt="member2">
                </div>
                <div class="media-body">
                  <h3 class="media-heading"><small>&nbsp;Frank Milner</small></h3>
                  <p>&nbsp;&nbsp;Travelling to Athens, Greece at 15/03/2018.&nbsp;<font color="blue">#partly_available</font><p>
                </div>
              </div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#interested">
                  <i class="fa fa-fw fa-thumbs-up"></i>Interested</a>
                <a class="mr-3 d-inline-block" href="#">
                  <i class="fa fa-fw fa-comment"></i>Message</a>
              </div>
              <div class="card-footer small text-muted">Posted 1 hr ago</div>
            </div>
          <!-- /Card Columns-->
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
            <!-- Example Social Card-->
            <div class="card mb-3">
              <div class="media">
        				<div class="media-left media-top">
        					<img src="http://ism.dmst.aueb.gr/ismgroup55/img/g.jpg" class="media-object thumbnail" alt="member1">
        				</div>
        				<div class="media-body">
        					<h3 class="media-heading"><small>&nbsp;George Gerrard</small></h3>
        					<p>&nbsp;&nbsp;Travelling to London, United Kindom at 20/12/2017.&nbsp;<font color="green">#available</font><p>
        				</div>
        			</div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#interested">
                  <i class="fa fa-fw fa-thumbs-up"></i>Interested</a>
                <a class="mr-3 d-inline-block" href="#">
                  <i class="fa fa-fw fa-comment"></i>Message</a>
              </div>
              <div class="card-footer small text-muted">Posted 32 mins ago</div>
            </div>
            <!-- Example Social Card-->
            <div class="card mb-3">
              <div class="media">
        				<div class="media-left media-top">
        					<img src="http://ism.dmst.aueb.gr/ismgroup55/img/n.jpg" class="media-object thumbnail" alt="member2">
        				</div>
        				<div class="media-body">
        					<h3 class="media-heading"><small>&nbsp;Jason Stoke</small></h3>
        					<p>&nbsp;&nbsp;Travelling to Berlin, Germany at 27/12/2017.&nbsp;<font color="green">#available</font><p>
        				</div>
        			</div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#interested">
                  <i class="fa fa-fw fa-thumbs-up"></i>Interested</a>
                <a class="mr-3 d-inline-block" href="#">
                  <i class="fa fa-fw fa-comment"></i>Message</a>
              </div>
              <div class="card-footer small text-muted">Posted 46 mins ago</div>
            </div>
            <!-- Example Social Card-->
            <div class="card mb-3">
              <div class="media">
                <div class="media-left media-top">
                  <img src="http://ism.dmst.aueb.gr/ismgroup55/img/w.jpg" class="media-object thumbnail" alt="member2">
                </div>
                <div class="media-body">
                  <h3 class="media-heading"><small>&nbsp;Sophia Fischer</small></h3>
                  <p>&nbsp;&nbsp;Travelling to Athens, Greece at 15/03/2018.&nbsp;<font color="green">#available</font><p>
                </div>
              </div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#interested">
                  <i class="fa fa-fw fa-thumbs-up"></i>Interested</a>
                <a class="mr-3 d-inline-block" href="#">
                  <i class="fa fa-fw fa-comment"></i>Message</a>
              </div>
              <div class="card-footer small text-muted">Posted 1 hr ago</div>
            </div>
            <!-- Example Social Card-->
            <div class="card mb-3">
              <div class="media">
        				<div class="media-left media-top">
        					<img src="http://ism.dmst.aueb.gr/ismgroup55/img/a.jpg" class="media-object thumbnail" alt="member1">
        				</div>
        				<div class="media-body">
        					<h3 class="media-heading"><small>&nbsp;Christine Evans</small></h3>
        					<p>&nbsp;&nbsp;Travelling to Lisbon, Portugal at 09/04/2018.&nbsp;<font color="red">#unavailable</font><p>
        				</div>
        			</div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#interested">
                  <i class="fa fa-fw fa-thumbs-up"></i>Interested</a>
                <a class="mr-3 d-inline-block" href="#">
                  <i class="fa fa-fw fa-comment"></i>Message</a>
              </div>
              <div class="card-footer small text-muted">Posted 32 mins ago</div>
            </div>
            <!-- Example Social Card-->
            <div class="card mb-3">
              <div class="media">
        				<div class="media-left media-top">
        					<img src="http://ism.dmst.aueb.gr/ismgroup55/img/cc.jpg" class="media-object thumbnail" alt="member1">
        				</div>
        				<div class="media-body">
        					<h3 class="media-heading"><small>&nbsp;John Shelby</small></h3>
        					<p>&nbsp;&nbsp;Currently at Barcelona, Spain.&nbsp;<font color="green">#available</font><p>
        				</div>
        			</div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#interested">
                  <i class="fa fa-fw fa-thumbs-up"></i>Interested</a>
                <a class="mr-3 d-inline-block" href="#">
                  <i class="fa fa-fw fa-comment"></i>Message</a>
              </div>
              <div class="card-footer small text-muted">Posted 32 mins ago</div>
            </div>

            <!-- Example Social Card-->
            <div class="card mb-3">
              <div class="media">
                <div class="media-left media-top">
                  <img src="http://ism.dmst.aueb.gr/ismgroup55/img/t.jpg" class="media-object thumbnail" alt="member2">
                </div>
                <div class="media-body">
                  <h3 class="media-heading"><small>&nbsp;Frank Milner</small></h3>
                  <p>&nbsp;&nbsp;Travelling to Athens, Greece at 15/03/2018.&nbsp;<font color="blue">#partly_available</font><p>
                </div>
              </div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#interested">
                  <i class="fa fa-fw fa-thumbs-up"></i>Interested</a>
                <a class="mr-3 d-inline-block" href="#">
                  <i class="fa fa-fw fa-comment"></i>Message</a>
              </div>
              <div class="card-footer small text-muted">Posted 1 hr ago</div>
            </div>
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
		<div class="modal fade" id="#interested" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	      <div class="modal-dialog" role="document">
	        <div class="modal-content">
	          <div class="modal-header">
	            <h5 class="modal-title" id="exampleModalLabel">Interested</h5>
	            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
	              <span aria-hidden="true">×</span>
	            </button>
	          </div>
	          <div class="modal-body">
							The user was just informed that you are interested for his post.
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
