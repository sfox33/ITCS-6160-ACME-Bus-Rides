<?php
	/*$dsn = 'mysql:host=localhost;dbname=assemblebus';
	$username = 'demo';		#Change this late once login page is set up
	$password = 'ITCS-6160-Database';	#DEFINITELY don't forget to change this
	$options = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);*/
	
	require_once('database.php');
	
	if(isset($_COOKIE['Id'])){
		$uId = $_COOKIE['Id'];
	}
	
	$dbConn = new PDO($dsn, $username, $password, $options);
	$dbConn->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, false);
	
	$origin = explode(", ", $_GET['origin']);
	$dest = explode(", ", $_GET['dest']);
	$beginDate = str_replace("T", " ", $_GET['beginDate']);
	$endDate = str_replace("T", " ", $_GET['endDate']);
	$trip = $_GET['trip'];
	$bus = $_GET['bus'];
	$miles = $_GET['miles'];
	if(isset($_GET['a'])) {
		$rally = $_GET['a'];
	}
	//Possibly refactor with new view
	$selectSQL = "SELECT addressId from Address WHERE street = :myStreet AND city = :myCity AND state = :myState and country = :myCountry";
	$prep = $dbConn->prepare($selectSQL);
	$prep->bindParam(':myStreet', $myStreet);
	$prep->bindParam(':myCity', $myCity);
	$prep->bindParam(':myState', $myState);
	$prep->bindParam(':myCountry', $myCountry);
	//Check for origin in the database
	$myStreet = $origin[0];
	$myCity = $origin[1];
	$myState = $origin[2];
	$myCountry = $origin[3];
	$prep->execute();
	$originId = $prep->fetch();
	$prep->closeCursor();
	
	$insertAddressSQL = "INSERT INTO Address(street, city, state, country) VALUES (:myStreet, :myCity, :myState, :myCountry)";
	$prepAddress = $dbConn->prepare($insertAddressSQL);
	$prepAddress->bindParam(':myStreet', $insStreet);
	$prepAddress->bindParam(':myCity', $insCity);
	$prepAddress->bindParam(':myState', $insState);
	$prepAddress->bindParam(':myCountry', $insCountry);
	
	if($originId[0] == null) {
		$insStreet = $origin[0];
		$insCity = $origin[1];
		$insState = $origin[2];
		$insCountry = $origin[3];
		$prepAddress->execute();
		$originId = $dbConn->lastInsertId();
	} else {
		$originId = $originId[0];
	}
	//check for destination in the database
	$myStreet = $dest[0];
	$myCity = $dest[1];
	$myState = $dest[2];
	$myCountry = $dest[3];
	$prep->execute();
	$destId = $prep->fetch();
	$prep->closeCursor();
	if($destId[0] == null) {
		$insStreet = $dest[0];
		$insCity = $dest[1];
		$insState = $dest[2];
		$insCountry = $dest[3];
		$prepAddress->execute();
		$destId = $dbConn->lastInsertId();
	} else {
		$destId = $destId[0];
	}
	//check for rally points
	if(isset($rally)) {
		$rallyIds = array();	//Used to store IDs of the rally points
		foreach($rally as $point) {
			$tempPoint = explode(", ", $point);
			$myStreet = $tempPoint[0];
			$myCity = $tempPoint[1];
			$myState = $tempPoint[2];
			$myCountry = $tempPoint[3];
			$prep->execute();
			$rallyId = $prep->fetch();
			$prep->closeCursor();
			if($rallyId[0] == null) {
				$insStreet = $tempPoint[0];
				$insCity = $tempPoint[1];
				$insState = $tempPoint[2];
				$insCountry = $tempPoint[3];
				$prepAddress->execute();
				$rallyId = $dbConn->lastInsertId();
				array_push($rallyIds, $rallyId);
				$sql = "INSERT INTO RallyPoint VALUES('$rallyId')";
				$dbConn->exec($sql);
			} else {
				array_push($rallyIds, $rallyId[0]);
			}
		}
	}
	//Need to select bus driver
	//OMG CREATE A FUCKING VIEW YOU DUMBASS
	$sqlFindDriver = "SELECT driverId from TripDriverInfo
						WHERE busType = :myBus
						AND driverId NOT IN (
							SELECT driverId from Trip WHERE beginDate < :myBegin AND :myEnd < endDate)";
	$prepDriver = $dbConn->prepare($sqlFindDriver);
	if($bus == 'motor') {
		$w="Motorcoach";
	} else if ($bus == 'mini') {
		$w="Mini Bus";
	} else if($bus == 'executive') {
		$w="Executive Bus";
	} else if ($bus == 'school') {
		$w="School Bus";
	} else {
		$w="Limo Bus";
	}
	$prepDriver->bindParam(':myBus', $w);
	$prepDriver->bindParam(':myBegin', $beginDate);
	$prepDriver->bindParam(':myEnd', $endDate);
	$prepDriver->execute();
	$driverId = $prepDriver->fetch();
	$prepDriver->closeCursor();
	if($driverId[0] == null) {
		echo 'No available driver found.';
		include('../view/create.php');
	} else {
		$insertTripSQL = "INSERT INTO Trip(miles, numPassengers, beginDate, endDate, driverId, originAddress, destAddress, TripType)
							VALUES (:myMiles, 0, :myBegin, :myEnd, :myDriver, :myOrigin, :myDest, :myType)";
		$prepInsert = $dbConn->prepare($insertTripSQL);
		$prepInsert->bindParam(':myMiles', $miles);
		$prepInsert->bindParam(':myBegin', $beginDate);
		$prepInsert->bindParam(':myEnd', $endDate);
		$prepInsert->bindParam(':myDriver', $driverId[0]);
		$prepInsert->bindParam(':myOrigin', $originId);
		$prepInsert->bindParam(':myDest', $destId);
		$prepInsert->bindParam(':myType', $trip);
		//echo $beginDate . "; " . $endDate . "; " . $trip . "; ";
		$prepInsert->execute();
		
		$id = $dbConn->lastInsertId();
		$insertMidTripSQL = "INSERT INTO UserPerTrip VALUES (:myTrip, :myUser)";
		$prepMid = $dbConn->prepare($insertMidTripSQL);
		$prepMid->bindParam(':myTrip', $id);
		$prepMid->bindParam(':myUser', $uId);
		$prepMid->execute();
		
		if(isset($_GET['a'])) {
			$insertRallySQL = "INSERT INTO RallyPointsPerTrip VALUES (:myRally, :myTrip)";
			$prepRally = $dbConn->prepare($insertRallySQL);
			$prepRally->bindParam(':myTrip', $id);
			//echo print_r($rallyIds);
			foreach($rallyIds as $pointId) {
				echo $pointId;
				$prepRally->bindParam(':myRally', $pointId);
				$prepRally->execute();
			}
		}
		header('Location:' . '../view/home_view.php');
		exit;
	}
?>