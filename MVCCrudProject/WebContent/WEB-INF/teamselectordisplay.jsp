
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Signika" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/index.css">
<title>Player Details</title>
</head>
<body class = "teamselectordisplay">
<div class = "contianer">
<div class = "row">
<div class = "col-sm-10">
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
	</div>
	<div class = "col-sm-2">
	<br>
		<a tabindex="0" class="btn btn-lg btn-danger" role="button" data-toggle="popover" data-placement="left"
		data-trigger="focus" title="${st1Picked.team}"
		data-content="Shirt No: ${st1Picked.shirtNumber} Age: ${st1Picked.age}" id="example">${st1Picked.lastName}</a>
		<br>
		<a tabindex="0" class="btn btn-lg btn-light" role="button" data-toggle="popover" data-placement="left"
		data-trigger="focus" title="${st2Picked.team}"
		data-content="Shirt No: ${st2Picked.shirtNumber} Age: ${st2Picked.age}" id="example1">${st2Picked.lastName}</a>
		<br><br>
		<a tabindex="0" class="btn btn-lg btn-danger" role="button" data-toggle="popover" data-placement="left"
		data-trigger="focus" title="${lmPicked.team}"
		data-content="Shirt No: ${lmPicked.shirtNumber} Age: ${lmPicked.age}" id="example2">${lmPicked.lastName}</a>
		<br>
		<a tabindex="0" class="btn btn-lg btn-light" role="button" data-toggle="popover" data-placement="left"
		data-trigger="focus" title="${cm1Picked.team}"
		data-content="Shirt No: ${cm1Picked.shirtNumber} Age: ${cm1Picked.age}" id="example3">${cm1Picked.lastName}</a>
		<br>
		<a tabindex="0" class="btn btn-lg btn-danger" role="button" data-toggle="popover" data-placement="left"
		data-trigger="focus" title="${cm2Picked.team}"
		data-content="Shirt No: ${cm2Picked.shirtNumber} Age: ${cm2Picked.age}" id="example4">${cm2Picked.lastName}</a>
		<br>
		<a tabindex="0" class="btn btn-lg btn-light" role="button" data-toggle="popover" data-placement="left"
		data-trigger="focus" title="${rmPicked.team}"
		data-content="Shirt No: ${rmPicked.shirtNumber} Age: ${rmPicked.age}" id="example5">${rmPicked.lastName}</a>
				<br><br>
		<a tabindex="0" class="btn btn-lg btn-danger" role="button" data-toggle="popover" data-placement="left"
		data-trigger="focus" title="${lbPicked.team}"
		data-content="Shirt No: ${lbPicked.shirtNumber} Age: ${lbPicked.age}" id="example6">${lbPicked.lastName}</a>
		<br>
		<a tabindex="0" class="btn btn-lg btn-light" role="button" data-toggle="popover" data-placement="left"
		data-trigger="focus" title="${cb1Picked.team}"
		data-content="Shirt No: ${cb1Picked.shirtNumber} Age: ${cb1Picked.age}" id="example7">${cb1Picked.lastName}</a>
		<br>
		<a tabindex="0" class="btn btn-lg btn-danger" role="button" data-toggle="popover" data-placement="left"
		data-trigger="focus" title="${cb2Picked.team}"
		data-content="Shirt No: ${cb2Picked.shirtNumber} Age: ${cb2Picked.age}" id="example8">${cb2Picked.lastName}</a>
		<br>
		<a tabindex="0" class="btn btn-lg btn-light" role="button" data-toggle="popover" data-placement="left"
		data-trigger="focus" title="${rbPicked.team}"
		data-content="Shirt No: ${rbPicked.shirtNumber} Age: ${rbPicked.age}" id="example9">${rbPicked.lastName}</a>
			<br><br>
		<a tabindex="0" class="btn btn-lg btn-danger" role="button" data-toggle="popover" data-placement="left"
		data-trigger="focus" title="${gkPicked.team}"
		data-content="Shirt No: ${gkPicked.shirtNumber} Age: ${gkPicked.age}" id="example10">${gkPicked.lastName}</a>
		</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	<script src="js/main.js"></script>
</body>
</html>
