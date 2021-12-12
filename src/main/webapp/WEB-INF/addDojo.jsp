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
<title>New Dojo</title>
</head>
<body>
	<div class="container p-5">
	<h1>New Dojo</h1>
		<form:form action="/dojos/add" method="post" modelAttribute="dojo" class="form-control">
   		<div>
   			<form:label path="name" class="form-label">Name:</form:label>
   			<form:input path="name" type="text" class="form-control" />
   			<form:errors path="name" class="text-danger" />
   		</div>
   		<button class="btn btn-secondary mt-3">Create</button>
   		</form:form>
	</div>
</body>
</html>