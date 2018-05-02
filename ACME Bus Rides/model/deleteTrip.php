<?php
	require_once('../util/main.php');
	require_once('database.php');
	$tripId = -1;
	if(isset($_POST['cancelTrip'])) {
		if(isset($_POST['cancel'])) {
			$tripId = $_POST['cancel'];
		}
	}
	if($tripId == -1) {
		header('Location:' . $app_path . 'view/home_view.php?error=badId');
		exit;
	} else if(!isset($_COOKIE['Id'])) {
		header('Location:' . $app_path . 'view/home_view.php?error=noCookie');
		exit;
	} else {
		/*$dsn = 'mysql:host=localhost;dbname=assemblebus';
		$username = 'demo';		#Change this late once login page is set up
		$password = 'ITCS-6160-Database';	#DEFINITELY don't forget to change this
		$options = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
		$dbConn = new PDO($dsn, $username, $password, $options);
		$dbConn->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, false);*/
		
		$sql = "DELETE FROM userpertrip WHERE userId=:uId AND tripId = :tId";
		$prep = $dbConn->prepare($sql);
		$prep->bindParam(":uId",$uId);
		$prep->bindParam(":tId",$tId);
		$uId = $_COOKIE['Id'];
		$tId = $tripId;
		$prep->execute();
		//include('../view/join.php');
		header('Location:' . $app_path . 'view/home_view.php');
		exit;
	}
?>