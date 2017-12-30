import cl.*;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class RegisterController extends HttpServlet {

	public void doPost(HttpServletRequest request,HttpServletResponse response)
       throws IOException, ServletException {

			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = new PrintWriter(response.getWriter(),true);

					String department = request.getParameter("department");
					String am = request.getParameter("am");
					String fullname = request.getParameter("fullname");
					String email = request.getParameter("email");
					String phone = request.getParameter("phone");
					String gender = request.getParameter("gender");

					HttpSession session = request.getSession(true);
					User user = (User) session.getAttribute("user");

					if(session.getAttribute("user-object") == null) {
    					request.setAttribute("message", "You are not authorized to access this resource. Please login.");
    					response.sendRedirect("../ts_login.jsp");
					} else {

					DataValidation a = new DataValidation();
					UserDAO udao = new UserDAO();
					DepartmentDAO depdao = new DepartmentDAO();

			try {

					 out.println("<!DOCTYPE html>");
					 out.println("<html lang='en'>");
					 out.println("	<head>");
					 out.println("	<meta charset='utf-8'>");
					 out.println("	<meta http-equiv='X-UA-Compatible' content='IE=edge'>");
					 out.println("	<meta name='viewport' content='width=device-width, initial-scale=1'>");
					 out.println("	<meta name='description' content='servlet_register'>");
					 out.println("	<meta name='author' content='gk3117@ic.ac.uk'>");
					 out.println("");
					 out.println("	<title>Servlet</title>");
					 out.println("");
					 out.println("	<link rel='stylesheet' href='../css/bootstrap.min.css'>");
					 out.println("	<link href='../css/theme_8XXXXXX.css' rel='stylesheet'>");
					 out.println("");
					 out.println("	</head>");
					 out.println("");
					 out.println("");
					 out.println("	<body>");
					 out.println("		<nav class='navbar navbar-inverse navbar-fixed-top'>");
					 out.println("			<div class='container'>");
					 out.println("				<div class='navbar-header'>");
					 out.println("					<button type='button' class='navbar-toggle collapsed' data-toggle='collapse' data-target='#navbar' aria-expanded='false' aria-controls='navbar'>");
					 out.println("						<span class='sr-only'>Toggle navigation</span>");
					 out.println("						<span class='icon-bar'></span> <span class='icon-bar'></span>");
					 out.println("						<span class='icon-bar'></span>");
					 out.println("					</button>");
					 out.println("					<a class='navbar-brand' href='#'>8150203</a>");
					 out.println("				</div>");
					 out.println("				<div id='navbar' class='navbar-collapse collapse'>");
					 out.println("					<ul class='nav navbar-nav'>");
					 out.println("						<li><a href='../ts_index.jsp'>Home</a></li>");
					 out.println("						<li class='active'><a href='../ts_register.jsp'>Register</a></li>");
					 out.println("						<li><a href='../ts_about.jsp'>About</a></li>");
					 out.println("					</ul>");
					 out.println("								<ul class='nav navbar-nav navbar-right'>");
					 out.println("									<li class='dropdown'>");
					 out.println("									<a id='user' class='dropdown-toggle' data-toggle='dropdown' >");
					 out.println("										<span class='glyphicon glyphicon-user'></span>" + user.getUsername() + "<span class='caret'></span></a>");
					 out.println("											<ul class='dropdown-menu'>");
					 out.println("												<li><a href='../ts_logout.jsp'>Logout</a></li>");
					 out.println("											</ul>");
					 out.println("									</li>");
					 out.println("								</ul>");
					 out.println("				</div>");
					 out.println("			</div>");
					 out.println("		</nav>");
					 out.println("");
					 out.println("		<div class='container theme-showcase' role='main'>");
					 out.println("");
					 out.println("			<div class='jumbotron'>");
					 out.println("				<h1>TravelShare</h1>");
					 out.println("			</div>");
					 out.println("");
					 out.println("			<div class='page-header'>");
					 out.println("				<h1>Register Student</h1>");
					 out.println("			</div>");
					 out.println("		</div>");
				     out.println("		<div class='container'>");



					String ePattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
					java.util.regex.Pattern p = java.util.regex.Pattern.compile(ePattern);
					java.util.regex.Matcher m = p.matcher(email);



					if( a.checkDepartment(department) &&
						a.isAmValid(am) &&
					 	a.isFullnameValid(fullname) &&
						a.isValidEmailAddress(email) &&
						a.isValidPhoneNumber(phone) &&
						a.isValidGender(gender) ) {

						DepartmentDAO dep = new DepartmentDAO();
						int num = Integer.valueOf(department);
						Department de = dep.getDepartmentByID(num);

						out.println("		<div class='alert alert-success col-lg-12'>The Student has been registered to the Database</div>");
						out.println("			 <ul class='list-unstyled'>");
						out.println("				<li><b>Department: </b>" + de.getName() + "</li>");
						out.println("				<li><b>AM: </b>" + am + "</li>");
						out.println("				<li><b>Fullname: </b>" + fullname + "</li>");
						out.println("				<li><b>Email: </b>" + email + "</li>");
						out.println("				<li><b>Phone: </b>" + phone + "</li>");
						out.println("				<li><b>Gender: </b>" + gender + "</li>");
						out.println("			 </ul>");

						StudentDAO studao = new StudentDAO();
						Student student = new Student(am, fullname, email, phone, gender, de);
						studao.saveStudent(student);

					} else {
								out.println("			<div class='alert alert-danger col-lg-12'>");
								out.println("				<ol type='1'>");

								if(!a.checkDepartment(department)){
									out.println("					<li>The Department is not valid</li>");
								}

								if(!a.isAmValid(am)) {
									out.println("					<li>The AM must be a 7-digit number</li>");
								}

								if(!a.isFullnameValid(fullname)) {
									out.println("					<li>The Fullname must be at least 5 characters long</li>");
								}

								if(!a.isValidEmailAddress(email)) {
									out.println("					<li>The Email is not a valid email address</li>");
								}

								if(!a.isValidPhoneNumber(phone)) {
									out.println("					<li>The Phone must be a 10-digit number</li>");
								}

								if(gender == null) 	{
							   	    out.println("					<li>The Gender field is not valid</li>");
								}

								out.println("				</ol>");
								out.println("			</div>");
								out.println("			<div class='form-group'>");
								out.println("				<div class='col-lg-6 col-lg-offset-5' >");
								out.println("					<a role='button' type='submit' class='btn btn-primary btn-lg' href='../register.jsp'><span class='glyphicon glyphicon-chevron-left'></span>Back to the form</a>");
								out.println("				</div>");
								out.println("			</div>");
								out.println("		</div>");
								out.println("		</div>");
						}
								out.println("	</div>");
								out.println("		</div>");


							out.println("		<footer class='navbar-inverse'>");
							out.println("			<div class='container'>");
							out.println("				<div class='row'>");
							out.println("					<div class='col-xs-12'>");
							out.println("						<p class='text-center'>&copy; Copyright 2017 by ismgroup55</p>");
							out.println("					</div>");
							out.println("				</div>");
							out.println("			</div>");
							out.println("		</footer>");
							out.println("");
							out.println("		<script src='../jquery.min.js'></script>");
							out.println("		<script	src='../bootstrap.js'></script>");
							out.println("		<script src='../jquery.min.js'></script>");
							out.println("		<script	src='../npm.js'></script>");
							out.println("	</body>");
							out.println("</html>");
							out.println("");

				} catch (Exception ex) {
				  out.println("Exception: " + ex.getMessage());
				  out.println("</body>");
				  out.println("</html>");
				}
			}
	}

}
