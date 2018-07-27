## Week 8 Football Player CRUD Project

http://18.219.168.192:8080/MVCCrudProject/

### Overview
- Project involving creating web applications using Spring MVC and SQL tables to perform CRUD actions on a football player database which was created from scratch.

### Topics
* Java
* Spring Tool Suite
* HTML
* CSS (Bootstrap)
* MySQL
* JDBC
* GitHub
* Gradel
* Amazon Web Services
* HTTP Session

### How to Run
- On running the application, the user is presented with a menu where they can choose to search for a player by ID, add a player, list all players or create their own team.
- After a player is found, they can traverse through the list using next and previous buttons or choose to update and delete the player. If update is selected, the form is auto-populated with the player's information and the user can update the selected player.
- When all players are listed, they are able to search by keywords which will automatically filter the entire results list.
- Team selector allows the user to enter a custom team name and choose players for all the different positions within a 4-4-2 formation. After players are selected, the team is displayed in a visual format of the players on a football pitch.

### Challenges and Lessons Learnt
**1. Configuration**
- As this project was built from scratch, configuring JPA, Gradle and the database proved tricky especially the Gradle build which needed to incorporate Hibernate.

**2. HTTP Session**
- Creating the next and previous buttons required using session and traversing through the exhaustive array of players.

**3. SQL Data Manipulation**
- JDBC was used for our CRUD operations and allowed the application to handle dynamic SQL queries.

**4. CSS**
- Played around a lot with making the application look good including dismissible popover buttons on the team selector page.
- Making sure all the players were on the right part of the field in the team selector meant a lot of padding on each image!
