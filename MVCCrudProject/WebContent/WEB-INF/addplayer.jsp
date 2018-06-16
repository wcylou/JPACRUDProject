<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- TODO: Add the @taglib for form -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Signika"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/index.css">
<title>Add Player</title>
</head>
<body class="addplayer">
<span id="englandadd">WHEN ENGLAND LIFT THE TROPHY
		&nbsp&nbsp&nbsp&nbsp</span>
	<span id="countdown"></span>
	<div class="container">
	<br>
		<form:form action="addPlayerDetails.do" method="POST"
			modelAttribute="player">
			<form:label path="firstName">First Name</form:label>
			<form:input path="firstName" />
			<form:errors path="firstName" />
			<br />
			<form:label path="lastName">Last Name:</form:label>
			<form:input path="lastName" />
			<form:errors path="lastName" />
			<br />
			<form:label path="team">Team:</form:label>
			<form:input path="team" />
			<form:errors path="team" />
			<br />
			<form:label path="age">Age:</form:label>
			<form:input path="age" />
			<form:errors path="age" />
			<br />
			<form:label path="shirtNumber">Shirt Number:</form:label>
			<form:select path="shirtNumber" items="${shirtNos}"/>
			<form:errors path="shirtNumber" />
			<br />
			<form:label path="position">Position:</form:label>
			<form:radiobutton path="position" value="Goalkeeper"/>&nbspGoalkeeper 
			<form:radiobutton path="position" value="Defender"/>&nbspDefender 
			<form:radiobutton path="position" value="Midfielder"/>&nbspMidfielder 
			<form:radiobutton path="position" value="Striker"/>&nbspStriker 
			<form:errors path="position" />
			<br />
			<button type="submit" class="btn btn-dark">Add</button>
		</form:form>
		   <form action="index.do" method="GET">
				<button type="submit" class="btn btn-dark">Back</button>
	</form>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
			<script src="js/main.js"></script>
		
</body>
</html>