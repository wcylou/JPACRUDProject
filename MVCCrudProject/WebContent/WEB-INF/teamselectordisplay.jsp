
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- TODO: Add the @taglib for form -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
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
<body class = "teamselectordisplay">
	<img id ="lb" src="images/${lbPicked.lastName.toLowerCase()}.png" onerror="this.onerror=null;this.src='images/defaultfootballer.jpg';"/>
	<img id ="lm" src="images/${lmPicked.lastName.toLowerCase()}.png" onerror="this.onerror=null;this.src='images/defaultfootballer.jpg';"/>
		<span id = "teamname"><c:out value = "${teamName }"/></span>
	<br>
	<img id ="gk" src="images/${gkPicked.lastName.toLowerCase()}.png" onerror="this.onerror=null;this.src='images/defaultfootballer.jpg';"/>
	<img id ="cb1" src="images/${cb1Picked.lastName.toLowerCase()}.png" onerror="this.onerror=null;this.src='images/defaultfootballer.jpg';"/>
	<img id ="cm1" src="images/${cm1Picked.lastName.toLowerCase()}.png" onerror="this.onerror=null;this.src='images/defaultfootballer.jpg';"/>
	<img id ="st1" src="images/${st1Picked.lastName.toLowerCase()}.png" onerror="this.onerror=null;this.src='images/defaultfootballer.jpg';"/>
	<br>
	<img id ="cb2" src="images/${cb2Picked.lastName.toLowerCase()}.png" onerror="this.onerror=null;this.src='images/defaultfootballer.jpg';"/>
	<img id ="cm2"src="images/${cm2Picked.lastName.toLowerCase()}.png" onerror="this.onerror=null;this.src='images/defaultfootballer.jpg';"/>
	<img id ="st2" src="images/${st2Picked.lastName.toLowerCase()}.png" onerror="this.onerror=null;this.src='images/defaultfootballer.jpg';"/>
	<br>
	<img id ="rb" src="images/${rbPicked.lastName.toLowerCase()}.png" onerror="this.onerror=null;this.src='images/defaultfootballer.jpg';"/>
	<img id ="rm" src="images/${rmPicked.lastName.toLowerCase()}.png" onerror="this.onerror=null;this.src='images/defaultfootballer.jpg';"/>
	<br>
	<form action="index.do" method="GET">
			<button type="submit" class="btn btn-dark">Back</button>
	</form>
</body>
</html>
