<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page errorPage="ts_error.jsp"%>

<!DOCTYPE html>
<html lang="en">
	<head>

		<%@ include file="common_pages/page_head.html"  %>

		<meta name="description" content="">
		<meta name="author" content="">

		<title>error404.jsp</title>

	</head>
	<body>



		<div class="container theme-showcase" role="main">

			<div class="page-header">
				<h1><span class="glyphicon glyphicon-warning-sign"></span> Page not found</h1>
			</div>

			<div class="row">

				<div class="col-xs-12 text-center">

					<div class="alert alert-danger" role="alert">
						<h3>Oops! The page you are looking for can't be found. Please visit <a href="ts_index">Home</a></h3>
					</div>

					<img src="http://ism.dmst.aueb.gr/ismgroup55/ts/img/400.png" class="notfoundimage" alt="404 - Not found">

				</div>

			</div>

		</div>
		<!-- /container -->

		<%@ include file="common_pages/footer.jsp"  %>

	</body>
</html>
