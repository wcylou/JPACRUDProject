
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
<body class = "teamselector">
	<div class="container d-flex flex-row-reverse selectteam">
		<form action="createTeam.do" method="GET">
			Team Name: <br><input type="text" name="teamName" /><br>
			<select name='st1'>
				<option>ST</option>
				<c:forEach var="striker" items="${strikers}">
					<option value="${striker.id}">${striker.lastName}</option>
				</c:forEach>
			</select> <br>
			<select name='st2'>
				<option>ST</option>
				<c:forEach var="striker" items="${strikers}">
					<option value="${striker.id}">${striker.lastName}</option>
				</c:forEach>
			</select> <br> <br>
			<select name='lm'>
				<option>LM</option>
				<c:forEach var="midfielder" items="${midfielders}">
					<option value="${midfielder.id}">${midfielder.lastName}</option>
				</c:forEach>
			</select> <br>
			<select name='cm1'>
				<option>CM</option>
				<c:forEach var="midfielder" items="${midfielders}">
					<option value="${midfielder.id}">${midfielder.lastName}</option>
				</c:forEach>
			</select> <br>
			<select name='cm2'>
				<option>CM</option>
				<c:forEach var="midfielder" items="${midfielders}">
					<option value="${midfielder.id}">${midfielder.lastName}</option>
				</c:forEach>
			</select> <br>
			<select name='rm'>
				<option>RM</option>
				<c:forEach var="midfielder" items="${midfielders}">
					<option value="${midfielder.id}">${midfielder.lastName}</option>
				</c:forEach>
			</select> <br> <br>
			<select name='lb'>
				<option>LB</option>
				<c:forEach var="defender" items="${defenders}">
					<option value="${defender.id}">${defender.lastName}</option>
				</c:forEach>
			</select> <br>
			<select name='cb1'>
				<option>CB</option>
				<c:forEach var="defender" items="${defenders}">
					<option value="${defender.id}">${defender.lastName}</option>
				</c:forEach>
			</select> <br>
			<select name='cb2'>
				<option>CB</option>
				<c:forEach var="defender" items="${defenders}">
					<option value="${defender.id}">${defender.lastName}</option>
				</c:forEach>
			</select> <br>
			<select name='rb'>
				<option>RB</option>
				<c:forEach var="defender" items="${defenders}">
					<option value="${defender.id}">${defender.lastName}</option>
				</c:forEach>
			</select> <br> <br>
			<select name='gk'>
				<option>GK</option>
				<c:forEach var="goalkeeper" items="${goalkeepers}">
					<option value="${goalkeeper.id}">${goalkeeper.lastName}</option>
				</c:forEach>
			</select> <br><br>
			<button type="submit" class="btn btn-dark">Create</button>
		</form>
	</div>
</body>
</html>
