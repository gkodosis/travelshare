<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="cl.*" %>
<%@ page errorPage="ts_error.jsp"%>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");

UserDAO udao = new UserDAO();

try {
	udao.authenticate(username, password);
} catch(Exception e) {

	request.setAttribute("message", e.getMessage());
%>
	<jsp:forward page="ts_login.jsp"/>
<%
}

session.setAttribute( "user-object", udao.findUser( username) );

%>
<jsp:forward page="ts_index.jsp"/>
