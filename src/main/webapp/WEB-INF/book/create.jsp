<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="test/css" href="/static/css/style.css"/>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Add a Book</title>
</head>
<body>
	<h1>Add a Book</h1>
	<form:form action="/books/create" modelAttribute="book" method="post">
	<form:input type="hidden" value="${user_id}" path="reader" />
		<div class="form-group">
			<label>Title</label>
			<form:input type="text" path="title" class="form-control"/>
			<form:errors path="title" class="text-danger"/>
		</div>
		<div class="form-group">
			<label>Author</label>
			<form:input type="text" path="author" class="form-control"/>
			<form:errors path="author" class="text-danger"/>
		</div>
		<div class="form-group">
			<label>My Thoughts</label>
			<form:input type="text" path="thoughts" class="form-control"/>
			<form:errors path="thoughts" class="text-danger"/>
		</div>
		<br/>
		<input type="submit" value="Add Book" class="btn btn-success"/>
		<a class="btn btn-secondary" href="/">Back</a>
	</form:form>
</body>
</html>