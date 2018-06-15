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
  <link rel="stylesheet" type="text/css" href="intro.css">
<title>Update Player</title>
</head>
<body>
<div class = "container">

      <form action="updatePlayerDetails.do" method="POST">
       <span class = "headings">Player ID: </span><input type= "text" name="playerId" value="${playerupdate.id}" readonly/><br>
        <span class = "headings">First Name:</span> <input type="text" type="text" name = "firstName" value="${playerupdate.firstName}"/> <br> 
        <span class = "headings">Last Name: </span> <input type="text" name = "lastName" type="text" value="${playerupdate.lastName}" /><br> 
<%--         <span class = "headings">DOB: </span><input type="text" name="dateOfBirth" value="${playerupdate.dateOfBirth}"/><br> 
 --%>        <span class = "headings">Team: </span> <input type="text" name="team" value="${playerupdate.team}"/><br> 
       	<span class = "headings">Shirt Number </span>  <input type="text" name="shirtNumber" value="${playerupdate.shirtNumber}"/><br> 
         <span class = "headings">Position: </span>  
       Goalkeeper<input type="radio" name="position" value="Goalkeeper" <c:if test="${playerupdate.position == 'Goalkeeper'}">CHECKED</c:if> />
       Defender<input type="radio" name="position" value="Defender" <c:if test="${playerupdate.position == 'Defender'}">CHECKED</c:if> />
       Midfielder<input type="radio" name="position" value="Midfielder" <c:if test="${playerupdate.position == 'Midfielder' }">CHECKED</c:if> />
       Striker<input type="radio" name="position" value="Striker" <c:if test="${playerupdate.position == 'Striker'}">CHECKED</c:if> />
        <input type="submit" value="Update" />
    </form>
    
      <form:form action="index.do">
        <input type="submit" value="Back" />
    </form:form>
    
    </div>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>