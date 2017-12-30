<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="ts_error.jsp"%>
<%@ page import="cl.*" %>

<%@ include file="common_pages/control_access.jsp"  %>

<!DOCTYPE html>
<html lang="en">
  <head>

    <%@ include file="common_pages/page_head.html"  %>

    <meta http-equiv="refresh" content="3;url=ts_login.jsp" />

	<meta name="description" content=" ">
    <meta name="author" content=" ">

  </head>
<body>

	<%@ include file="common_pages/navigation_menu.jsp"  %>

<%

session.invalidate();

%>

	<div class="container theme-showcase" role="main">

		<div class="alert alert-success text-center" role="alert">Η έξοδος πραγματοποιηθηκε με επιτυχία!</div>

	</div>
	<!-- /container -->

	<%@ include file="common_pages/footer.jsp"  %>

</body>
</html>
