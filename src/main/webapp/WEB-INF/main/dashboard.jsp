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
<title>Dashboard</title>
</head>
<body>
	<nav class="navbar navbar-light bg-light justify-content-between">
		<h1 class="navbar-brand">Welcome, <c:out value="${loggedInUser.userName}"/>!</h1>
		<a href="/users/logout" class="form-inline btn btn-info">Logout</a>
	</nav>
	<div class="d-flex justify-content-between">
		<p>Books from everyone's shelves:</p>
		<a href="/books/create">+ Add a Book to my shelf</a>
	</div>
	<table class="table table-dark">
		<thead>
			<tr>
				<th scope="col"> Title </th>
				<th scope="col"> Author </th>
				<th scope="col"> Posted By </th>
				<th scope="col"> Actions </th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="book" items="${allBooks}">
				<tr>
					<td><a href="/books/view/${book.id}"><c:out value="${book.title}"/></a></td>
					<td><c:out value="${book.author}"/></td>
					<td><c:out value="${book.reader.userName}"/></td>
					<td>
						<a class="btn btn-warning" href="/books/edit/${book.id}"> Edit </a>
						<form action="/books/delete/${book.id}" method="post">
							<input type="hidden" value="delete" name="_method"/>
							<input class="btn btn-danger" type="submit" value="Delete Book"/>
						</form>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>