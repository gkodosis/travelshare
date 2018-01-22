<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page errorPage="ts_error.jsp"%>

<!DOCTYPE html>
<html lang="en">
	<head>

	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->	
    
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">   
    
    <!-- Custom styles for this template -->
	<link href="css/errorstyle.css" rel="stylesheet">
    
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

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
						<h3>Oops! The page you are looking for can't be found. Please visit <a href="ts_index.jsp">Home</a></h3>
					</div>

					<img src="http://ism.dmst.aueb.gr/ismgroup55/img/404.png" class="notfoundimage" alt="404 - Not found">

				</div>

			</div>

		</div>
		<!-- /container -->

		<%@ include file="common_pages/footer.jsp"  %>

	</body>
</html>

