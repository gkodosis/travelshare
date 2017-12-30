<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html lang="en">
	<head>

		<%@ include file="common_pages/page_head.html"  %>

		<meta name="description" content="">
		<meta name="author" content="">

		<title>Error.jsp</title>

	</head>
	<body>

		<%@ include file="common_pages/navigation_menu.jsp"%>

		<div class="container theme-showcase" role="main">

			<div class="page-header">
				<h1>Σφάλμα</h1>
			</div>

			<div class="alert alert-danger" role="alert"><%= exception.getMessage() %></div>
		</div>
		<!-- /container -->

		<%@ include file="common_pages/footer.jsp"  %>

	</body>
</html>
