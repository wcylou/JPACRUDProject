
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- TODO: Add the @taglib for form -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Signika" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/index.css">
<title>Welcome Page</title>
</head>
<body class="welcome">
	<span id="england">WHEN ENGLAND LIFT THE TROPHY
		&nbsp&nbsp&nbsp&nbsp</span>
	<span id="countdown"></span>
	<div class="menu container">
	<br><br>
	<h1>World Cup Madness</h1><br><br>
		<form action="playerDetails.do" method="GET">
		<input type="text" name="playerId" placeholder="Type in ID" /> 
			<button type="submit" name = "playerId" class="btn btn-dark">Find Player</button>
		</form>
		<br><br>
		<form action="addPlayer.do" method="GET">
			Add Player
			<button type="submit"  class="btn btn-dark">Add</button>
		</form>
		<br><br>
		<form action="listAllPlayers.do" method="GET">
			List All Players
			<button type="submit"  class="btn btn-dark">Submit</button>
		</form>
		<br><br>
		<form action="teamSelector.do" method="GET">
			Team Selector
			<button type="submit"  class="btn btn-dark">Submit</button>
		</form>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="js/main.js"></script>
</body>
</html>

