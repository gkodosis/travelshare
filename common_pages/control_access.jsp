<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%
	User user = (User) session.getAttribute("user-object");
	if( session.getAttribute("user-object") == null ) {
		request.setAttribute("message", "You are not authorized! Please login.");
%>
		<jsp:forward page="ts_login.jsp"/>
<%
} else {
				UserDAO udao = new UserDAO();
%>
