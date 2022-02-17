<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show book</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/css/style.css">
<script type="text/javascript" src="js/app.js"></script>
</head>
<body>
	<div class="container justify-content-center mx-auto text-center">
		<ul>
			<li>Title: <c:out value="${book.getTitle()}"/> </li>
			<li>Description: <c:out value="${book.getDescription()}"/> </li>
			<li>Language: <c:out value="${book.getLanguage()}"/> </li>
			<li>Number of pages: <c:out value="${book.getNumberOfPages()}"/> </li>
			<li>Created at: <c:out value="${book.getCreatedAt()}"/> </li>
			<li>Updated at: <c:out value="${book.getUpdatedAt()}"/> </li>
		</ul>		
	</div>
</body>
</html>