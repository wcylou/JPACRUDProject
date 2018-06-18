
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
<body class="playerBody">
	<span id="england">WHEN ENGLAND LIFT THE TROPHY
		&nbsp&nbsp&nbsp&nbsp</span>
	<span id="countdown"></span>
	
	<div class="container">
		<c:if test="${empty player }">
			<br>
			<br>
			<td>No players found with that ID</td>
			<form action="index.do" method="GET">
				<button type="submit" class="btn btn-dark">Back</button>
			</form>
		</c:if>
		<c:if test="${not empty player }">
			<br>
			<img src="images/${player.lastName.toLowerCase()}.png" onerror="this.onerror=null;this.src='images/defaultfootballer.jpg';"/>
			
			<span class="headings">Player ID: </span>
			<c:out value="${player.id}" />
			<br>
			<span class="headings">First Name: </span>
			<c:out value="${player.firstName}" />
			<br>
			<span class="headings">Last Name: </span>
			<c:out value="${player.lastName}" />
			<br>
			<span class="headings">Team: </span>
			<c:out value="${player.team}" />
			<br>
			<span class="headings">Age: </span>
			<c:out value="${player.age}" />
			<br>
			<span class="headings">Shirt Number: </span>
			<c:out value="${player.shirtNumber}" />
			<br>
			<span class="headings">Position: </span>
			<c:out value="${player.position}" />
			<br>
			<br>
			<form action="updatePlayer.do" method="GET">
				<input type="hidden" name="playerId" value="${player.id}" />
				<button type="submit" class="btn btn-dark">Update</button>
			</form>
			<form action="deletePlayer.do" method="GET">
				<input type="hidden" name="playerId" value="${player.id}" />
				<button type="submit" class="btn btn-dark">Delete</button>
			</form>
			<form action="navPlayer.do">
				<input name="prev" type="hidden" value="Previous" /> 
				<button type="submit" class="btn btn-dark">Previous</button>
			</form>
			<form action="navPlayer.do">
				<input name="next" type="hidden" value="Next" />
				<button type="submit" class="btn btn-dark">Next</button>
			</form>
			<form action="index.do" method="GET">
				<button type="submit" class="btn btn-dark">Back</button>
			</form>
		</c:if>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="js/main.js"></script>
</body>
</html>
