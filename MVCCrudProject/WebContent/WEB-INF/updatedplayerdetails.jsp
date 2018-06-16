
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- TODO: Add the @taglib for form -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/index.css">
<title>Player Details</title>
</head>
<body>
	<div class="container">
		<span class = "headings">Player ID: </span><c:out value="${playerupdated.id}" /><br>
		<span class = "headings">First Name: </span><c:out value="${playerupdated.firstName}" /><br>
		<span class = "headings">Last Name: </span><c:out value="${playerupdated.lastName}" /><br>
		<span class = "headings">Team: </span><c:out value="${playerupdated.team}" /><br>
		<span class = "headings">Age: </span><c:out value="${playerupdated.age}" /><br>
		<span class = "headings">Shirt Number: </span><c:out value="${playerupdated.shirtNumber}" /><br>
		<span class = "headings">Position: </span><c:out value="${playerupdated.position}" /><br>
		<form action="index.do" method="GET">
			<button type="submit" class="btn btn-dark">Back</button>
		</form>
	</div>
</body>
</html>
