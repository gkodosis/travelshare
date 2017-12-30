<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cl.*" %>
<%@ page errorPage="ts_error.jsp" %>

<%
User user = (User) session.getAttribute("user-object");
%>

<!DOCTYPE html>
<html lang="en">

<head>
  	<%@ include file="common_pages/page_head.html"  %>
</head>

<body>

  	<%@ include file="common_pages/navigation_menu.jsp"  %>
		
		
	<%
	if(session.getAttribute("user-object") == null) {
	%>
          <!-- Card Columns Example Social Feed-->
          <div class="mb-0 mt-4">
            <i class="fa fa-newspaper-o"></i> News Feed</div>
          <hr class="mt-2">
          <div class="card-columns">
            <!-- Example Social Card-->
            <div class="card mb-3">
              <div class="media">
        				<div class="media-left media-top">
        					<img src="http://ism.dmst.aueb.gr/ismgroup55/ts/img/g.jpg" class="media-object thumbnail" alt="member1">
        				</div>
        				<div class="media-body">
        					<h3 class="media-heading"><small>&nbsp;George Gerrard</small></h3>
        					<p>&nbsp;&nbsp;Travelling to London, United Kindom at 20/12/2017.&nbsp;<font color="green">#available</font><p>
        				</div>
        			</div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#">
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
        					<img src="http://ism.dmst.aueb.gr/ismgroup55/ts/img/n.jpg" class="media-object thumbnail" alt="member2">
        				</div>
        				<div class="media-body">
        					<h3 class="media-heading"><small>&nbsp;Jason Stoke</small></h3>
        					<p>&nbsp;&nbsp;Travelling to Berlin, Germany at 27/12/2017.&nbsp;<font color="green">#available</font><p>
        				</div>
        			</div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#">
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
                  <img src="http://ism.dmst.aueb.gr/ismgroup55/ts/img/w.jpg" class="media-object thumbnail" alt="member2">
                </div>
                <div class="media-body">
                  <h3 class="media-heading"><small>&nbsp;Sophia Fischer</small></h3>
                  <p>&nbsp;&nbsp;Travelling to Athens, Greece at 15/03/2018.&nbsp;<font color="green">#available</font><p>
                </div>
              </div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#">
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
        					<img src="http://ism.dmst.aueb.gr/ismgroup55/ts/img/a.jpg" class="media-object thumbnail" alt="member1">
        				</div>
        				<div class="media-body">
        					<h3 class="media-heading"><small>&nbsp;Christine Evans</small></h3>
        					<p>&nbsp;&nbsp;Travelling to Lisbon, Portugal at 09/04/2018.&nbsp;<font color="red">#unavailable</font><p>
        				</div>
        			</div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#">
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
        					<img src="http://ism.dmst.aueb.gr/ismgroup55/ts/img/cc.jpg" class="media-object thumbnail" alt="member1">
        				</div>
        				<div class="media-body">
        					<h3 class="media-heading"><small>&nbsp;John Shelby</small></h3>
        					<p>&nbsp;&nbsp;Currently at Barcelona, Spain.&nbsp;<font color="green">#available</font><p>
        				</div>
        			</div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#">
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
                  <img src="http://ism.dmst.aueb.gr/ismgroup55/ts/img/t.jpg" class="media-object thumbnail" alt="member2">
                </div>
                <div class="media-body">
                  <h3 class="media-heading"><small>&nbsp;Frank Milner</small></h3>
                  <p>&nbsp;&nbsp;Travelling to Athens, Greece at 15/03/2018.&nbsp;<font color="blue">#partly_available</font><p>
                </div>
              </div>
              <hr class="my-0">
              <div class="card-body py-2 small">
                <a class="mr-3 d-inline-block" href="#">
                  <i class="fa fa-fw fa-thumbs-up"></i>Interested</a>
                <a class="mr-3 d-inline-block" href="#">
                  <i class="fa fa-fw fa-comment"></i>Message</a>
              </div>
              <div class="card-footer small text-muted">Posted 1 hr ago</div>
            </div>
          <!-- /Card Columns-->
        </div>
	<%
	} else {	  	
	%>
		<%@ include file="ts_post.jsp"  %>
        
	<%
	}
	%>

    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->

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
  <%@ include file="common_pages/footer.jsp"  %>
</body>

</html>
