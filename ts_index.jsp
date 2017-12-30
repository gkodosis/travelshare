<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cl.*" %>
<%@ page errorPage="ts_error.jsp" %>


<!DOCTYPE html>
<html lang="en">

<head>
  	<%@ include file="common_pages/page_head.html"  %>

</head>

<body>

  	<%@ include file="common_pages/navigation_menu.jsp"  %>

  <header>
        <div id="carousel" class="carousel slide carousel-" data-ride="carousel">
          <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox">
            <!-- Slide One - Set the background image for this slide in the line below -->
            <div class="carousel-item active" style="background-image: url('http://ism.dmst.aueb.gr/ismgroup55/ts/img/slide1.jpg') ">
              <div class="carousel-caption d-none d-md-block">
                <h3>Join TravelShare</h3>
                <p>Start getting items from travellers all over the world</p>
              </div>
            </div>
            <!-- Slide Two - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image: url('http://ism.dmst.aueb.gr/ismgroup55/ts/img/slide2.jpg') ">
              <div class="carousel-caption d-none d-md-block">
                <h3>Discover</h3>
                <p>We are trying our best to make your experience unique</p>
              </div>
            </div>
            <!-- Slide Three - Set the background image for this slide in the line below -->
            <div class="carousel-item" style="background-image:url('http://ism.dmst.aueb.gr/ismgroup55/ts/img//slide3.jpg') ">
              <div class="carousel-caption d-none d-md-block">
                <h3>Register Now</h3>
                <p>Take the opportunity that is given to you for free</p>
              </div>
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </header>
	  
	  <section id="about"></section>

      <p>&nbsp;</p>
      <section id="we">
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto text-center">
			&nbsp;
              <h2 class="section-heading">We've got what you need!</h2>
              <hr class="light">
              <p class="text-faded">TravelShare has a big amount of travellers all combined under one roof. To share their common passion by exchanging the requested items. Making possible for people to collect items that they couldn't before </p>
            </div>
          </div>
        </div>
      </section>

      <p>&nbsp;</p>
      <section id="services">
        <div class="container">
          <div class="row">
            <div class="col-lg-12 text-center">
              <h2 class="section-heading">At Your Service</h2>
              <hr class="primary">
            </div>
          </div>
        </div>
        <div class="container">
          <div class="row">
            <div class="col-lg-3 col-md-6 text-center">
              <div class="service-box">
                <i class="fa fa-4x fa-diamond text-primary sr-icons"></i>
                <h3>Trustful Users</h3>
                <p class="text-muted">We are doing our best to adopt only people we can trust.</p>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 text-center">
              <div class="service-box">
                <i class="fa fa-4x fa-paper-plane text-primary sr-icons"></i>
                <h3>Great to explore</h3>
                <p class="text-muted">You can easily search the travellers you are looking for!  </p>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 text-center">
              <div class="service-box">
                <i class="fa fa-4x fa-newspaper-o text-primary sr-icons"></i>
                <h3>Up to Date</h3>
                <p class="text-muted">Our news-feed is always updated.</p>
              </div>
            </div>
            <div class="col-lg-3 col-md-6 text-center">
              <div class="service-box">
                <i class="fa fa-4x fa-heart text-primary sr-icons"></i>
                <h3>Easy to use</h3>
                <p class="text-muted">You can instantly express your interest!</p>
              </div>
            </div>
          </div>
        </div>
      </section>

      <p>&nbsp;</p>
      <section id="contact">
        <div class="container">
          <div class="row">
            <div class="col-lg-8 mx-auto text-center">
              <h2 class="section-heading">Let's Get In Touch!</h2>
              <hr class="primary">
              <p>Whatever problem you are dealing with, it doesn't matter! Give us a call or send us an email and we will get back to you as soon as possible!</p>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-4 ml-auto text-center">
              <i class="fa fa-phone fa-3x sr-contact"></i>
              <p>210-6142693</p>
            </div>
            <div class="col-lg-4 mr-auto text-center">
              <i class="fa fa-envelope-o fa-3x sr-contact"></i>
              <p>
                <a href="mailto:your-email@your-domain.com">t8150203@dias.aueb.gr</a>
              </p>
            </div>
          </div>
        </div>
      </section>
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
            <a class="btn btn-primary" href="ts_login.jsp">Logout</a>
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
    <script src="js/gulpfile.js"></script>
	

  

  <%@ include file="common_pages/footer.jsp"  %>


</body>
</html>




