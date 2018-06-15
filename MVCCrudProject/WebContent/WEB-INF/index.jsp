
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
<title>Welcome Page</title>
</head>
<body>
	<div>
		hello
		<form action="playerDetails.do" method="GET">
			<input type="text" name="playerId" /> <input type="submit"
				value="Find Player" />
		</form>
		<form action="addPlayer.do" method="POST">
			Add Player <input type="submit" value="Add Player" />
		</form>
	

		<%-- <c:forEach items="${films}" var="film">
			<td>Film ID: </span> <c:out value="${film.id}" /></td>
			<td><span class="headings">Title: </span> <a
				href="getFilm.do?fid=${film.id }"><c:out value="${film.title}" /></a></td>
			<br>
		</c:forEach> --%>
	</div>
</body>
</html>

