# ITCS-6160-Assemble-Bus
Semester project for graduate-level database project.  Includes code for a web interface written with HTML, CSS, JavaScript, and PHP.  Database was written with MySQL.
### Table of Contents
### Summary of Project and Navigation
### Business Assumptions and Logic
### Databse Design
![Assemble Bus EER Diagram](ITCS 6160 Assemble Bus EERD.png)
### Advanced SQL Statements
  This project had several requirements regarding SQL commands that had to be used.  This section discusses how those requirements were
  specifically implemented.
#### Stored Procedures
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

CREATE PROCEDURE calculatePrice(IN type VARCHAR(7), IN myDriverId int, IN numPassengers INT, IN miles INT, OUT price Decimal(10,2))
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
DELIMEITER ;
  ```
#### Triggers
  Throughout this project, I discovered that MySQL does not parse check constraints.  As a result, I used several triggers to help check the incoming data.  To a lesser extent, triggers were also used to update fields of incoming rows such as the price field.  More information of each trigger is written below.
  * ##### update_trip_info_insert
  
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
  * ##### update_trip_info_delete
  
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
  * ##### check_trip_insert
  
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
  * ##### check_trip_update
  
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
  * ##### check_bus_insert
  
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
  * ##### check_bus_update
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
#### Delete Statements
  When using the web interface, a user has the option of backing out of any of the trips that they have signed up for.  This is accomplished by deleting their entry in the UserPerTrip table.  Note that this action does not delete the actualy trip, even when there are no users currently signed up.  The query itself if very straightforward:
  ```
  DELETE FROM userpertrip WHERE userId=:uId AND tripId = :tId;
  ```
  where ":uId" and ":tId" are variables determined by the user.
#### Update Statements
  Like with the delete statment, the update statement occurs when a user joins an existing trip.  When this happends, the UserPerTrip
  tables is updated, and a trigger is activated updating the NumPassengers field within the Trip table.  See information on the
  [update_trip_info_insert](https://github.com/sfox33/ITCS-6160-Assemble-Bus/blob/master/README.md#update_trip_info_insert) and 
  [update_trip_info_delete](https://github.com/sfox33/ITCS-6160-Assemble-Bus/blob/master/README.md#update_trip_info_delete) triggers for 
  the update query.
#### Indices
#### Views
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
  * ##### SubscribedTrips
  
  After the user logs in, they can view all of the trips they have joined.  To help this process, the SubscribedTrips view contains
  all needed information from the Trip table associated with each user on that trip.
  ```
  CREATE VIEW SubscribedTrips AS 
    SELECT Trip.tripId, Trip.originAddress, Trip.destAddress, Trip.beginDate, Trip.endDate, UserPerTrip.userId
    FROM Trip INNER JOIN UserPerTrip 
    ON Trip.tripId = UserPerTrip.tripId;
  ```
  * ##### TripDriverInfo
  
  When trying to see what drivers are available for a new trip, all of the drivers of a set bus type along with the dates they 
  are away on trips are needed for comparison.  The TripDriverInfo view gathers all of the bus drivers and the trip data each 
  driver is assigned to for this comparison.
  ```
  CREATE VIEW TripDriverInfo AS 
    SELECT Trip.tripId, Trip.miles, Trip.price, Trip.numPassengers, Trip.beginDate, Trip.endDate, Trip.originAddress, Trip.destAddress, Trip.TripType, BusDriver.driverID, BusDriver.busType 
    FROM BusDriver LEFT JOIN Trip 
    ON Trip.driverID = BusDriver.driverID;
  ```
### Future Works and Goals
