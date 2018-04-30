# ITCS-6160-Assemble-Bus
Semester project for graduate-level database project.  Includes code for a web interface written with HTML, CSS, JavaScript, and PHP.  Database was written with MySQL.
### Table of Contents
### Summary of Project and Navigation
### Business Assumptions and Logic
### Databse Design
### Advanced SQL Statements
  This project had several requirements regarding SQL commands that had to be used.  This section discusses how those requirements were specifically implemented.
#### Stored Procedures
  This project made use of two different stored procedures that accomplished the same goal: retrieving or updating the price of a trip.  They are named GetPrice and calculatePrice respectively.  Initially, they were both meant to be called within a trigger to update the price when a user was added to a trip or a trip was created.  However, I discovered that MySQL does not allow after-insert triggers to update the table the trigger is on.  Because of this, I had to change my plan slightly and create the GetPrice procedure which returns the price rather than immediately updating the table with the price.  The code for both is as follows:
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
  * update_trip_info_insert
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
  * update_trip_info_delete
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
  * check_trip_insert
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
  * check_trip_update
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
  * check_bus_insert
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
  * check_bus_update
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
  Like with the delete statment, the update statement occurs when a user joins an existing trip.  When this happends, the UserPerTrip tables is updated, and a trigger is activated updating the NumPassengers field within the Trip table.  See information on the update_trip_info_insert for the update query.
#### Indices
#### Views
### Future Works and Goals
