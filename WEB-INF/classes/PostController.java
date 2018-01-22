import cl.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class PostController extends HttpServlet {

	public void doPost (HttpServletRequest request, HttpServletResponse response)
		throws IOException, ServletException {

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = new PrintWriter(response.getWriter(),true);
		String username = request.getParameter("username");
		String destination = request.getParameter("destination");
		String datepicker1 = request.getParameter("datepicker1");
		String datepicker2 = request.getParameter("datepicker2");
		String availability = request.getParameter("availability");

		DataValidation data = new DataValidation();

		try {

			out.println("<!DOCTYPE html>");
			out.println("<html lang='en'>");
			out.println("");
			out.println("<head>");
			out.println("	<style>");
			out.println("		body { ");
			out.println(" background: url(../img/sli.jpeg) no-repeat center center fixed; ");
			out.println(" -webkit-background-size: cover;");
			out.println(" -moz-background-size: cover;");
			out.println(" -o-background-size: cover;");
			out.println(" background-size: cover;");
			out.println(" padding-top: 30px;");
			out.println("	overflow-x: auto;");
			out.println("	overflow-y: auto;");
			out.println("	min-height: 100%;");
			out.println("    	height: auto;");
			out.println("    	margin: 0px;");
			out.println("}");
			out.println("");
			out.println("html {");
			out.println("    position: relative;");
			out.println("    min-height: 100%;");
			out.println("    height: 100%;");
			out.println("    overflow-x: hidden;");
			out.println("    overflow-y: scroll;");
			out.println("}");
			out.println("");
			out.println(".container {");
			out.println("    position: relative;");
			out.println("}");
			out.println("");
			out.println(".center {");
			out.println("    position: absolute;");
			out.println("    left: 0;");
			out.println("    top: 50%;");
			out.println("    width: 100%;");
			out.println("    text-align: center;");
			out.println("    font-size: 18px;");
			out.println("}");
			out.println("	");
			out.println("");
			out.println("</style>");
			out.println("<meta charset='utf-8'>");
			out.println("<meta http-equiv='X-UA-Compatible' content='IE=edge'>");
			out.println("<meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>");
			out.println("<meta name='description' content=''>");
			out.println("<meta name='author' content=''>");
			out.println("<title>TravelShare</title>");
			out.println("<!-- Bootstrap core CSS-->");
			out.println("<link href='../vendor/bootstrap/css/bootstrap.min.css' rel='stylesheet'>");
			out.println("<!-- Custom fonts for this template-->");
			out.println("<link href='../vendor/font-awesome/css/font-awesome.min.css' rel='stylesheet' type='text/css'>");
			out.println("<!-- Page level plugin CSS-->");
			out.println("<link href='../vendor/datatables/dataTables.bootstrap4.css' rel='stylesheet'>");
			out.println("<!-- Custom styles for this template-->");
			out.println("<link href='../css/sb-admin.css' rel='stylesheet'>");
			out.println("<link href='../css/full-slider.css' rel='stylesheet'>");
			out.println("");
			out.println("	");
			out.println("");
			out.println("</head>");
			out.println("");
			out.println("<body>");
			out.println("	<!-- Fixed navbar -->");
			out.println("  <nav class='navbar fixed-top navbar-expand-lg navbar-light bg-light fixed-top'>");
			out.println("    <div class='container'>");
			out.println("      <a class='navbar-brand' href='../ts_index.jsp' style ='font-weight: bold; font-size: 1.38rem;'>TravelShare</a>");
			out.println("      <button class='navbar-toggler navbar-toggler-right' type='button' data-toggle='collapse' data-target='#navbarResponsive' aria-controls='navbarResponsive' aria-expanded='false' aria-label='Toggle navigation'>");
			out.println("        <span class='navbar-toggler-icon'></span>");
			out.println("      </button>");
			out.println("      <div class='collapse navbar-collapse' id='navbarResponsive'>");
			out.println("        <ul class='navbar-nav ml-auto'>");
			out.println("          <li class='nav-item'>");
			out.println("            <form class='form-inline my-2 my-lg-0 mr-lg-2'>");
			out.println("              <div class='input-group'>");
			out.println("                <input class='form-control' type='text' placeholder='Search for...'>");
			out.println("                <span class='input-group-btn'>");
			out.println("                  <button class='btn btn-primary' type='button'>");
			out.println("                    <i class='fa fa-search'></i>");
			out.println("                  </button>");
			out.println("                </span>");
			out.println("              </div>");
			out.println("            </form>");
			out.println("          </li>");
			out.println("");
			out.println("            <a class='nav-link' href='../ts_index.jsp#about'>About</a>");
			out.println("            <a class='nav-link' href='../ts_explore.jsp'>Explore</a>");
			out.println("            <a class='nav-link' href='../ts_contact.jsp'>Contact</a>");
			out.println("	   </ul>");
			out.println("");
			out.println("	  </div>");
			out.println("");
			out.println("");
			out.println("	<!--/.nav-collapse -->");
			out.println("	</div>");
			out.println("	</nav>");
			out.println("");
			out.println("		  <p>&nbsp;</p>");

			out.println("");
			out.println("	<div class='container'>");
			if(data.isDestinationValid(destination) && data.isDateValid(datepicker1)  && data.isDateValid(datepicker2)) {




				PostDAO pdao = new PostDAO();
				Post post = new Post(username, destination, datepicker1, datepicker2, availability);
				pdao.savePost(post);

				out.println("			<div class='alert alert-success col-lg-12'><strong>You have sucessfully posted to TravelShare</strong>");
				out.println("			");
				out.println("			<ul class='list-unstyled'>");
				out.println("				<li>Travelling to "+destination+" at "+datepicker1+" until "+datepicker2+" </li>");
				out.println("				<li>Status : "+availability+" </li>");
				out.println("			</ul>");
				out.println("<p>You can see your post<a href='../ts_explore.jsp'> Here</a></p>");
				out.println("</div>");


			} else{

				/*out.println("                  <h3 class='media-heading'><small>&nbsp;"+data.isDestinationValid(destination)+"</small></h3>");
				out.println("                  <h3 class='media-heading'><small>&nbsp;"+data.isDateValid(datepicker1)+"</small></h3>");
				out.println("                  <h3 class='media-heading'><small>&nbsp;"+data.isDateValid(datepicker2)+"</small></h3>");*/
				out.println("			<div class='alert alert-warning col-lg-12'>");
				out.println("				<ol type='1'>");
				if(!data.isDestinationValid(destination)){
				out.println("					<li>The destination you chose is wrong. Please type it again.</li>");
				}
				if(!data.isDateValid(datepicker1)){
					out.println("					<li>Wrong date input. The correct input is yyyy\\mm\\dd");
				}
				if(!data.isDateValid(datepicker2)){
					out.println("					<li>Wrong date input. The correct input is yyyy\\mm\\dd");
				}
				/*if(!data.isDateValid(datepicker1)) {
				out.println("					<li>Wrong date input. The correct input is yyyy\\mm\\dd");
				}
				if(!data.isDateValid(datepicker2)) {
				out.println("					<li>Wrong date input. The correct input is yyyy\\mm\\dd");
				}*/

				out.println("				</ol>");
				out.println("			</div>");
				out.println("			<div class='form-group'>");
				out.println("				<div class='col-md-6 col-md-offset-5' >");
				out.println("					<a role='button' type='submit' class='btn btn-primary btn-lg' href='../ts_explore.jsp'><span class='glyphicon glyphicon-chevron-left'></span>Back to the form</a>");
				out.println("				</div>");
				out.println("			</div>");

			}

				out.println("		</div>");

				out.println("<!-- Footer -->");
				out.println("<footer class='py-5 bg-light'>");
				out.println(" <div class='container'>");
				out.println("	 <p class='m-0 text-center'>Copyright &copy; TravelShare 2017</p>");
				out.println(" </div>");
				out.println(" <!-- /.container -->");
				out.println("</footer>");
				out.println("");
				out.println("    <!-- Bootstrap core JavaScript");
				out.println("    ================================================== -->");
				out.println("    <!-- Placed at the end of the document so the pages load faster -->");
				out.println("    <script src='https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js'></script>");
				out.println("    <script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>");
				out.println("  ");
				out.println("");
				out.println("<!-- Bootstrap core JavaScript-->");
				out.println("<script src='../vendor/jquery/jquery.min.js'></script>");
				out.println("<script src='../vendor/bootstrap/js/bootstrap.bundle.min.js'></script>");
				out.println("<!-- Core plugin JavaScript-->");
				out.println("<script src='../vendor/jquery-easing/jquery.easing.min.js'></script>");



				out.println("	</body>");
				out.println("</html>");

			} catch (Exception ex) {
		  		out.println("Exception: " + ex.getMessage());
		   		out.println("</body>");
		   	 	out.println("</html>");
				}

	}
}
