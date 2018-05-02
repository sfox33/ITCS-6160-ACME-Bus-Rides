# ITCS-6160-ACME-Bus-Rides
## Table of Contents
- [Summary of Project and Navigation](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides#summary-of-project-and-navigation)
- [Bussiness Assumptions and Logic](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides#business-assumptions-and-logic)
- [User Interface](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides#user-interface)
- [Database Design](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides#databse-design)
- [Advanced SQL Statements](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides#advanced-sql-statements)
  - [Stored Procedures](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides#stored-procedures)
  - [Triggers](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides#triggers)
  - [Delete Statements](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides#delete-statements)
  - [Update Statements](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides#update-statements)
  - [Indices](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides#indices)
  - [Views](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides#views)
- [Future Work and Goals](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides#future-works-and-goals)
## Summary of Project and Navigation

  Team: [Little Bobby Tables](https://xkcd.com/327/)
  
  Members: Sean Fox
  
  This was the semester project for the graduate-level course ITCS 6160 from UNCC.  The project involved making a database in MySQL 
  with at least 8 tables while showcasing several facets of database design including triggers and stored procedures.  Additionally,
  I have to design a web-based user interface that allowed a user to interact with the database in various ways.
  
  This project was inspired by the company [Rally Bus](http://rallybus.net/).  As a result, this project allows a user to create 
  an account and create a bus trip.  To help mimic the services offered by Rally Bus, users can also join trips that have not occurred 
  yet and add Rally Points, or stops along the trip, to their ride.  Though the inspiration is explicitly stated, this project was
  done solely for educational purposes, and those involved with the project are in no way affiliated with, nor do they represent, 
  Rally Bus.
  
  Within this repository, you can find all of my code needed to recreate my project, or just review what was done.  This README file
  will go over the project, but should you wish to investigate, there are three folders to be aware of within ITCS-6160-ACME-Bus-Rides. 
  The pictures directory simply contains pictures referenced within this document and can be ignored.
  
  The Database Dump directory contains a single .sql dump file.  This dump file contains all of the code needed to recreate the 
  database - including data, triggers, and stored procedures.  The directory also contains metadata obtained from the query
  ```
  select * from information_schema.tables where table_schema='assemblebus';
  ```
  in a .csv file for further analysis.  Note that assemblebus is the name the database used in this project.
  
  The ACME Bus Rides directory contains all of the code for the user interface.  It leads to three sub directories: model, util, and
  view.  The model directory contains files used solely to access the database and validate information.  The util directory simply
  contains files used to set up information for the backend (such as obtaining the URL).  Finally, the view directory contains all 
  the code to create the web interface itself.
  
  ### Technology Summary
  
  - Front-end Languages: HTML, CSS, JavaScript
  - Back-end Language: PHP
  - Database Language: MySql
  
  To bring all of these pieces together, XAMPP was used to run Apache and MySQL so that the web interface could be tested on a local
  host.  To formally recreate this project, after installing XAMPP, download and place the ACME Bus Rides directory within the htdocs
  folder created by XAMPP.  Once that is done, the .sql dump file can be imported through phpmyadmin and the localhost.  Once the 
  import has been successfully completed, you should be able to pull up localhost/acmebusride/index.php to try out the interface.
## Business Assumptions and Logic
  Since the focus on this project was on the database usage more than functionality, several liberties and assumptions were taken 
  with the design of this project which will be listed here.  First, it is assumed that the user will create a trip with a proper
  address (Street name, City, State, and Country).  With this structure, there is also the heavy assumption that the address will be
  American, but it really just have to follow the previous criteria.  Furthermore, while scheduling the trip, the end date and time 
  must occur after the begin date and time of the trip, however, when those dates are chosen relative to the current date and time 
  does not matter.  However, a user will only be able to join a trip whose begin time occurs after the current time.
  
  Pricing is estimate by the number of miles (which is obtained from Goolge Maps API) from the origin to the destination.  Rally points 
  do not affect the price.  The price chosen by multiplying the number of miles by a small float (which changes depending on the bus 
  type chosen for the trip) and dividing by the number of passengers on the trip.  This price is updated as the number of passengers 
  changes.
## User Interface
  To get an idea of what the interface looks like without installing XAMPP, pictures and descriptions of the interface are below.
  ### Login Page
![LogIn View](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides/blob/master/pictures/LogInViewCapture.PNG)

  This is the first page the user is greeted with.  It lets them either sign in if they have an account or to create one.

  ### Sign Up Page
![Sign Up View](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides/blob/master/pictures/SignUpViewCapture.PNG)
  
  If the user clicks the "Create an Account" button, they are brought to the Sign Up page where they can create an account.  After
  entering all of the necessary information, they will automatically be logged into the Home page.
  
  ### Home Page
![Home View](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides/blob/master/pictures/HomeViewCapture.PNG)

  Here, the user is greeted with a list of trips they have signed up for.  If the account is new or if the user has not signed up 
  for any trips, the table will be empty.  The sidebar on the left allows the user to access the different sections of the 
  interface.
  
  ### About Page
![About View](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides/blob/master/pictures/AboutViewCapture.PNG)
  
  This page further describes the project and its inspiration and purpose.
  
  ### Trip Creation Page
![Trip1 View](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides/blob/master/pictures/CreateViewPt1Capture.PNG)

  This top half of the trip creation page allows the user to select an origin and destination for their trip.  Google Maps API assist 
  by offering an autocomplete for any address entered into these bars.  If used, the API will then place a marker on the Map beneath 
  the two bars.  Once an origin and destination marker have been placed on the map, a line is drawn along roads to show the user a
  predicted path.
  
![Trip2 View](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides/blob/master/pictures/CreateViewPt2Capture.PNG)

  This bottom half of the page lets the user supply the rest of the trip information such as when they want to leave, when they want 
  to be back, what kind of trip are they reserving (round trip or one-way trip), and the type of bus they would like to reserve.  The 
  user can optionally select any Rally Points, or stops, they would like to make as well.  If none are selected, the table will be
  invisible.  Otherwise, a new row will be created for every Rally Point.  The map will also be updated with markers for the Rally 
  points accordingly.
  
  Once everything is selected, the user can select the "Calculate Price" button to get an estimated cost of the trip.  By the business
  logic, this price could go down if more people join the trip.  The user is welcome to change any of the options and hit the button 
  again for an updated price.  If they select the "No" button, the page will be refreshed, and all fields will be empty.  If they 
  select "Yes," they will be brought to the Home page where they can see the trip added to their table.
  
![Join View](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides/blob/master/pictures/JoinViewCapture.PNG)

  The final distinct view is the Join page.  This page displays a scrollable table diplaying all future trips that have already been
  created.  If the user wishes to joing one, they can select the radio button in the Join column for the respective trip and select the 
  "Join Trip" button on the bottom.  The page will then refresh with all remaining trips as it does not display trips the user is 
  already signed up for.
## Database Design
![Assemble Bus EER Diagram](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides/blob/master/pictures/ITCS%206160%20ACME%20Bus%20Rides%20EERD.PNG)

  Above is the EER Diagram for my database.  It has 9 tables, and 3 views that are primarily used throughout the project.  See the 
  Views section for information on the prurpose and construction of each view.  Descriptions of the tables are below.
  - Trip
  
  ![TripCapture](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides/blob/master/pictures/TripCapture.PNG)
  
  This table holds the relevant information on each trip including the origin and destination addresses, DateTime objects 
  representing when the trip starts and ends, if the trip is a one-way trip or round trip, etc.
  - Person
  
  ![PersonCapture](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides/blob/master/pictures/PersonCapture.PNG)
  
  This table holds information about each person represented in the database - including the first and last name, the email, and 
  the automatically generated user ID of the person.
  - Client
  
  ![ClientCapture](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides/blob/master/pictures/ClientCapture.PNG)
  
  The Client table is a specialization of the Person table representating the customers who are using this service.
  - BusDriver
  
  ![BusDriverCapture](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides/blob/master/pictures/BusDriverCapture.PNG)
  
  The BusDriver table is a specialization of the Person table representing the people who drive buses for this service.  It 
  also includes the type of bus the person drives.
  - Address
  
  ![AddressCapture](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides/blob/master/pictures/AddressCapture.PNG)
  
  A table containing the address information of all of the locations used within the database including the origin or the trips, 
  the destinations of the trips, and the Rally Points of the trip.
  - RallyPoint
  
  ![RallyPointCapture](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides/blob/master/pictures/RallyPointCapture.PNG)
  
  A specialization of the Address table which contains the Ids of the addresses that server as Rally Points
  - Login
  
  ![LoginCapture](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides/blob/master/pictures/LoginCapture.PNG)
  
  A table that holds the information for logging into a user account.  Contains the Ids from the client table along with the username
  of the client.  For any new accounts, PHP code on the server ensures that the password is hashed along with salt before it is put 
  into the database.
  - UserPerTrip
  
  ![UserPerTripCapture](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides/blob/master/pictures/UserPerTripCapture.PNG)
  
  A middle table between Client and Trip.  It lists the trip Ids along with the Ids of each client that has signed up for the trip.
  - RallyPointsPerTrip
  
  ![RallyPointsPerTripCapture](https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides/blob/master/pictures/RallyPointsPerTripCapture.PNG)
  
  A middle table between RallyPoint and Trip.  Lists the trip Ids along with the Ids of each rally point taken on the trip.
## Advanced SQL Statements
  This project had several requirements regarding SQL commands that had to be used.  This section discusses how those requirements were
  specifically implemented.
### Stored Procedures
  This project made use of two different stored procedures that accomplished the same goal: retrieving or updating the price of a trip.
  They are named GetPrice and calculatePrice respectively.  Initially, they were both meant to be called within a trigger to update the
  price when a user was added to a trip or a trip was created.  However, I discovered that MySQL does not allow after-insert triggers to
  update the table the trigger is on.  Because of this, I had to change my plan slightly and create the GetPrice procedure which returns
  the price rather than immediately updating the table with the price.  The code for both is as follows:
  ```
  DELIMITER $$
Use assemblebus$$
CREATE PROCEDURE calculatePrice(IN inId INT)
BEGIN

DECLARE bus VARCHAR(25);
DECLARE type VARCHAR(10);
SET bus = (SELECT busType FROM busdriver WHERE driverID = (SELECT driverID from Trip where tripId=inId));
IF bus = 'Motorcoach' THEN update trip set price = ((miles*1.5)/numPassengers) WHERE tripId = inId;
ELSEIF bus = 'Mini Bus' THEN update trip set price = ((miles)/numPassengers) WHERE tripId = inId;
ELSEIF bus = 'Executive Bus' THEN update trip set price = ((miles*2)/numPassengers) WHERE tripId = inId;
ELSEIF bus = 'School Bus' THEN update trip set price = ((miles*0.5)/numPassengers) WHERE tripId = inId;
ELSE update trip set price = ((miles*3)/numPassengers) WHERE tripId = inId;
END IF;

SET type = (SELECT TripType FROM trip WHERE tripId=inId);
IF type = 'round' then 
update trip set price = price*2 where tripId=inId;
END IF;

END $$

CREATE PROCEDURE GetPrice(IN type VARCHAR(7), IN myDriverId int, IN numPassengers INT, IN miles INT, OUT price Decimal(10,2))
BEGIN

DECLARE bus VARCHAR(25);
SET bus = (SELECT busType FROM busdriver WHERE driverID = myDriverId);
IF bus = 'Motorcoach' THEN set price = ((miles*1.5)/numPassengers);
ELSEIF bus = 'Mini Bus' THEN set price = ((miles)/numPassengers);
ELSEIF bus = 'Executive Bus' THEN set price = ((miles*2)/numPassengers);
ELSEIF bus = 'School Bus' THEN set price = ((miles*0.5)/numPassengers);
ELSE set price = ((miles*3)/numPassengers);
END IF;

IF type = 'round' then set price = price*2;
END IF;

END $$
DELIMITER ;
  ```
### Triggers
  Throughout this project, I discovered that MySQL does not parse check constraints.  As a result, I used several triggers to help check the incoming data.  To a lesser extent, triggers were also used to update fields of incoming rows such as the price field.  More information of each trigger is written below.
  * #### update_trip_info_insert
  
  This trigger updates the NumPassengers field of the associated trip after a user joins a trip in the UserPerTrip table.  In addition, it also uses the calculatePrice stored procedure to automatically update the price field of the same trip.
  ```
  DELIMITER |
CREATE TRIGGER update_trip_info_insert
after insert on UserPerTrip
for each row
BEGIN
update trip set trip.numPassengers = trip.numPassengers + 1 where trip.tripId = new.tripId;
call calculatePrice(new.tripId);
END |
DELIMITER ;
```
  * #### update_trip_info_delete
  
  This trigger updates the NumPassengers field of the associated trip after a user quits a trip from the UserPerTrip table.  In addition, it also uses the calculatePrice stored procedure to automatically update the price field of the same trip.
  ```
  DELIMITER |
CREATE TRIGGER update_trip_info_delete
after delete on UserPerTrip
for each row
BEGIN
update trip set trip.numPassengers = trip.numPassengers - 1 where trip.tripId = old.tripId;
if (select numPassengers from trip where tripId = old.tripId) > 0 then
call calculatePrice(old.tripId);
else update trip set price = 0 where tripId = old.tripId;
END IF;
END |
DELIMITER ;
```
  * #### check_trip_insert
  
  When a new trip is stored in the Trip table, three things need to be done.  
  
  1) the two date fields needs to be compared so that beginDate occures before endDate. 
  2) The TripType field needs to be constrained to be from the set {"round", "one-way"}.  
  3) The price needs to be updated.    
  If either of the first two check fail, a sqlstate '45000' error is thrown so that the insert 
  query is cancelled.  For the third part, the getPrice stored procedure is called to get the price so is can be set within the
  new row.
  ```
  DELIMITER |
CREATE TRIGGER check_trip_insert
before insert on Trip
for each row
BEGIN
IF (new.beginDate > new.endDate) or (new.TripType != 'round' AND new.TripType != 'one-way') then 
signal sqlstate '45000';
END IF;
IF new.price is null then
call getPrice(new.TripType, new.driverId, new.numPassengers, new.miles, @price);
set new.price = (select @price);
END IF;
END |
DELIMITER ;
```
  * #### check_trip_update
  
  This trigger accomplished the same things as the check_trip_insert trigger except that it occurs on an update to the trip table 
  rather than an insert.
  ```
  DELIMITER |
CREATE TRIGGER check_trip_update
before update on Trip
for each row
BEGIN
IF (new.beginDate > new.endDate) OR (new.TripType != 'round' AND new.TripType != 'one-way') then 
signal sqlstate '45000';
END IF;
END |
DELIMITER ;
```
  * #### check_bus_insert
  
  Both check_bus_insert and check_bus_update are triggers on the BusDriver tables.  They check to make sure that the BusType field is restricted to only allow entries in the set {'Motorcoach', 'Mini Bus', 'Executive Bus', 'School Bus', 'Limo Bus'}.  The code for the two triggers is below.
  ```
  DELIMITER |
CREATE TRIGGER check_bus_insert
before insert on BusDriver
for each row
BEGIN
IF new.busType != 'Motorcoach' AND new.busType != 'Mini Bus' AND new.busType != 'Executive Bus' AND new.busType != 'School Bus' AND new.busType != 'Limo Bus' then
signal sqlstate '45000';
END IF;
END |
DELIMITER ;
```
  * #### check_bus_update
  ```
  DELIMITER |
CREATE TRIGGER check_bus_update
before update on BusDriver
for each row
BEGIN
IF new.busType != 'Motorcoach' AND new.busType != 'Mini Bus' AND new.busType != 'Executive Bus' AND new.busType != 'School Bus' AND new.busType != 'Limo Bus' then
signal sqlstate '45000';
END IF;
END |
DELIMITER ;
  ```
### Delete Statements
  When using the web interface, a user has the option of backing out of any of the trips that they have signed up for.  This is accomplished by deleting their entry in the UserPerTrip table.  Note that this action does not delete the actualy trip, even when there are no users currently signed up.  The query itself if very straightforward:
  ```
  DELETE FROM userpertrip WHERE userId=:uId AND tripId = :tId;
  ```
  where ":uId" and ":tId" are variables determined by the user.
### Update Statements
  Like with the delete statment, the update statement occurs when a user joins an existing trip.  When this happends, the UserPerTrip
  tables is updated, and a trigger is activated updating the NumPassengers field within the Trip table.  See information on the
  [update_trip_info_insert](https://github.com/sfox33/ITCS-6160-Assemble-Bus/blob/master/README.md#update_trip_info_insert) and 
  [update_trip_info_delete](https://github.com/sfox33/ITCS-6160-Assemble-Bus/blob/master/README.md#update_trip_info_delete) triggers for 
  the update query.
### Indices

  For creating the views, two indices were created on the Trip.driverId and UserPerTrip.tripId columns to help with TripDriverInfo 
  and SubscribedTrips respectively.  I also put one on the Trip.beginDate to help with the FutureTrips view, but after testing 
  the view query with the EXPLAIN statement, I discovered that the index was not providing any optimization, and I chose to drop it. 
  The code for the two indices are below.
  ```
  CREATE INDEX UserTrip_index on UserPerTrip(tripId);
  CREATE INDEX driver_index on Trip(driverId);
  ```
### Views
  Three views were mainly used throughout this project.  They were used to simplfy the queries done for various tables and are discussed
  in detail below.
  * ##### FutureTrips
  
  When the user tries to join a trip, they are greeted with a table holding information on all trips that have not occurred yet.  
  To make this query easier, the FutureTrips view was created to hold all of these viable trips.  The creation SQL code is below:
  ```
  CREATE VIEW FutureTrips AS 
    SELECT Trip.tripId, Trip.originAddress, Trip.destAddress, Trip.beginDate, Trip.endDate 
    FROM Trip 
    WHERE (Trip.beginDate > NOW());
  ```
  * #### SubscribedTrips
  
  After the user logs in, they can view all of the trips they have joined.  To help this process, the SubscribedTrips view contains
  all needed information from the Trip table associated with each user on that trip.
  ```
  CREATE VIEW SubscribedTrips AS 
    SELECT Trip.tripId, Trip.originAddress, Trip.destAddress, Trip.beginDate, Trip.endDate, UserPerTrip.userId
    FROM Trip INNER JOIN UserPerTrip 
    ON Trip.tripId = UserPerTrip.tripId;
  ```
  * #### TripDriverInfo
  
  When trying to see what drivers are available for a new trip, all of the drivers of a set bus type along with the dates they 
  are away on trips are needed for comparison.  The TripDriverInfo view gathers all of the bus drivers and the trip data each 
  driver is assigned to for this comparison.
  ```
  CREATE VIEW TripDriverInfo AS 
    SELECT Trip.tripId, Trip.miles, Trip.price, Trip.numPassengers, Trip.beginDate, Trip.endDate, Trip.originAddress, Trip.destAddress, Trip.TripType, BusDriver.driverID, BusDriver.busType 
    FROM BusDriver LEFT JOIN Trip 
    ON Trip.driverID = BusDriver.driverID;
  ```
## Future Work and Goals

  Do to other classes and a lack or time, I was not able to implement everything I wanted.  If I continued with this project, I 
  would have liked to include user roles so that bus drivers could also log in to the website.  They would be able to see a history 
  of all rides they have been assigned as well as future ones.
  
  Furthermore, for anyone who scheduled a ride, I would have like to create a Detail view.  By clicking the a trip ID, a user could 
  view all of the information not included in the basic list such as the price and any rally points included in the trip.  
  Additionally, the ability to delete rally points when creating a trip would be another goal.
  
  Finally, in hindsight, there are several changes I would have liked to make to the structure of the code.  Due to a lack of time 
  and experience with the languages, a large process of writing this code was experimentation.  As such, there are several ways to 
  improve the structure.  For example, while the structure was loosely inspired by the MVC pattern, the divide between view and model 
  could be made clearer now that I understand more about PHP.  Furthermore, while this code does perform several validation checks 
  before making queries, there is nothing in place to handle any errors produced by the database as it was beyond the scope of the 
  project.  That would be my primary goal with continuing this project.
