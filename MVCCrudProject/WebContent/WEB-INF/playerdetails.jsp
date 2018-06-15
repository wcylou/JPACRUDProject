
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
<link rel="stylesheet" type="text/css" href="intro.css">
<title>Player Details</title>
</head>
<body>
	<div class="container">
<span class = "headings">Player ID: </span><c:out value="${player.id}" /><br>
<span class = "headings">First Name: </span><c:out value="${player.firstName}" /><br>
<span class = "headings">Last Name: </span><c:out value="${player.lastName}" /><br>
<span class = "headings">Team: </span><c:out value="${player.team}" /><br>
<span class = "headings">DOB: </span><c:out value="${player.dateOfBirth}" /><br>
<span class = "headings">Shirt Number: </span><c:out value="${player.shirtNumber}" /><br>
<span class = "headings">Position: </span><c:out value="${player.position}" /><br>
	</div>

	<form:form action="updatePlayer.do" method="GET">
		<input type="hidden" name="playerId" value="${player.id}" />
		<input type="submit" value="Update" />
	</form:form>
	<form:form action="deletePlayer.do" method="GET">
		<input type="hidden" name="playerId" value="${player.id}" />
		<input type="submit" value="Delete" />
		</form:form>
</body>
</html>
