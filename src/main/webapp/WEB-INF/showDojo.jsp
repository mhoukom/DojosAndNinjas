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
		<h3>${dojo.name} Location Ninjas:</h3>
		<div class="row">
			<h5 class="col">First Name:</h5>
			<h5 class="col">Last Name:</h5>
			<h5 class="col">Age:</h5>
		</div>
		<c:forEach var="ninja" items="${dojo.ninjas}">
			<div class="row">
				<div class="col">${ninja.firstName}</div>
				<div class="col">${ninja.lastName}</div>
				<div class="col">${ninja.age}</div>
			</div>
		</c:forEach>
		<a href="/">Go Back</a>
	</div>
</body>
</html>