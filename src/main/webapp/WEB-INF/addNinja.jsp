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
<title>New Ninja</title>
</head>
<body>
	<div class="container p-5">
	<h1>New Ninja</h1>
		<form:form action="/ninjas/add" method="post" modelAttribute="ninja" class="form-control">
		<div>
			<form:label path="dojo" class="form-label">Dojo:</form:label>
			<form:select path="dojo" class="form-select">
				<c:forEach var="eachDojo" items="${dojos}">
					<form:option value="${eachDojo.id}">${eachDojo.name}</form:option>
				</c:forEach>
			</form:select>
		</div>
   		<div>
   			<form:label path="firstName" class="form-label">First Name:</form:label>
   			<form:input path="firstName" type="text" class="form-control" />
   			<form:errors path="firstName" class="text-danger" />
   		</div>
   		<div>
   			<form:label path="lastName" class="form-label">Last Name:</form:label>
   			<form:input path="lastName" type="text" class="form-control" />
   			<form:errors path="lastName" class="text-danger" />
   		</div>
   		<div>
   			<form:label path="age" class="form-label">Age:</form:label>
   			<form:input path="age" type="number" class="form-control" />
   			<form:errors path="age" class="text-danger" />
   		</div>
   		<button class="btn btn-secondary mt-3">Create</button>
   		</form:form>
	</div>
</body>
</html>