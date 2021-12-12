<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container mb-3 pt-5 ps-5">
		<a href="/dojos/add" class="me-5">Add a Dojo</a>
		<a href="/ninjas/add">Add a Ninja</a>
	</div>
	<div class="container ps-5">
		<div class="row">
			<h3 class="col mb-3">Dojo Name:</h3>
		</div>
		<c:forEach var="dojo" items="${dojos}">
			<div class="row mb-3">
				<div class="col"><a href="/dojos/${dojo.id}">${dojo.name}</a></div>
			</div>
		</c:forEach>
	</div>
</body>
</html>