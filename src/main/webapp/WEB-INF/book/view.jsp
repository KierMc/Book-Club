<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="test/css" href="/static/css/style.css"/>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>View Book</title>
</head>
<body>
	<h1>Title: <c:out value="${book.title}"/></h1>
	<h3>Author: <c:out value="${book.author}"/></h3>
	<h6>My Thoughts: <c:out value="${book.thoughts}"/></h6>
	<a href="/" class="btn btn-primary">Back to Dashboard</a>
</body>
</html>