
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Signika" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/index.css">
<title>Player Details</title>
</head>
<body class = "teamselector">
	<div class="container d-flex flex-row-reverse selectteam">
		<form action="createTeam.do" method="GET">
		<br><br>
			<h2>Team Name</h2><input type="text" name="teamName" /><br>
			<br>
			<select name='st1'>
				<option>ST</option>
				<c:forEach var="striker" items="${strikers}">
					<option value="${striker.id}">${striker.lastName} - ${striker.team} </option>
				</c:forEach>
			</select> <br>
			<select name='st2'>
				<option>ST</option>
				<c:forEach var="striker" items="${strikers}">
					<option value="${striker.id}">${striker.lastName} - ${striker.team} </option>
				</c:forEach>
			</select> <br> <br>
			<select name='lm'>
				<option>LM</option>
				<c:forEach var="midfielder" items="${midfielders}">
					<option value="${midfielder.id}">${midfielder.lastName} - ${midfielder.team} </option>
				</c:forEach>
			</select> <br>
			<select name='cm1'>
				<option>CM</option>
				<c:forEach var="midfielder" items="${midfielders}">
					<option value="${midfielder.id}">${midfielder.lastName} - ${midfielder.team}</option>
				</c:forEach>
			</select> <br>
			<select name='cm2'>
				<option>CM</option>
				<c:forEach var="midfielder" items="${midfielders}">
					<option value="${midfielder.id}">${midfielder.lastName} - ${midfielder.team}</option>
				</c:forEach>
			</select> <br>
			<select name='rm'>
				<option>RM</option>
				<c:forEach var="midfielder" items="${midfielders}">
					<option value="${midfielder.id}">${midfielder.lastName} - ${midfielder.team}</option>
				</c:forEach>
			</select> <br> <br>
			<select name='lb'>
				<option>LB</option>
				<c:forEach var="defender" items="${defenders}">
					<option value="${defender.id}">${defender.lastName} - ${defender.team}</option>
				</c:forEach>
			</select> <br>
			<select name='cb1'>
				<option>CB</option>
				<c:forEach var="defender" items="${defenders}">
					<option value="${defender.id}">${defender.lastName} - ${defender.team}</option>
				</c:forEach>
			</select> <br>
			<select name='cb2'>
				<option>CB</option>
				<c:forEach var="defender" items="${defenders}">
					<option value="${defender.id}">${defender.lastName} - ${defender.team}</option>
				</c:forEach>
			</select> <br>
			<select name='rb'>
				<option>RB</option>
				<c:forEach var="defender" items="${defenders}">
					<option value="${defender.id}">${defender.lastName} - ${defender.team}</option>
				</c:forEach>
			</select> <br> <br>
			<select name='gk'>
				<option>GK</option>
				<c:forEach var="goalkeeper" items="${goalkeepers}">
					<option value="${goalkeeper.id}">${goalkeeper.lastName} - ${goalkeeper.team}</option>
				</c:forEach>
			</select> <br><br>
			<button type="submit" class="btn btn-dark">Create</button>
		</form>
		
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="js/main.js"></script>
</body>
</html>
