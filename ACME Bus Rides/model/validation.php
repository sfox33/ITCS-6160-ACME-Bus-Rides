<?php
	require_once('../util/main.php');
	require_once('database.php');
	$check = true;
	$exists = false;
	$user=$pass="";
	$userErr=$passErr="";

	if(empty($_POST["username"])) {
		$userErr = "Enter your username.";
		$check = false;
	} else {
		$user = cleanSignIn($_POST["username"]);
	}
	
	if(empty($_POST["password"])) {
		$passErr = "Enter your password.";
		$check = false;
	} else {
		$pass = cleanSignIn($_POST["password"]);
	}
			
	if($check == true) {
		findData();
		return;
	} else {
		echo 'What happened?';
	}


	function cleanSignIn($data) {
		$data=trim($data);
		$data=stripslashes($data);
		$data=htmlspecialchars($data);
		return $data;
	}
	
	function findData() {
		global $pass, $user, $exists, $app_path;
		global $dbConn;
		
		/*$dsn = 'mysql:host=localhost;dbname=assemblebus';
		$username = 'demo';		#Change this late once login page is set up
		$password = 'ITCS-6160-Database';	#DEFINITELY don't forget to change this
		$options = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
		$dbConn = new PDO($dsn, $username, $password, $options);
		$dbConn->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, false);*/
		
		$sql = "SELECT userId, password FROM Login WHERE username='$user'";
		$prep = $dbConn->prepare($sql);
		$prep->execute();
		$dbPass = $prep->fetch();
		$prep->closeCursor();
		if(!empty($dbPass)) {			
			if($dbPass[0] <= 200 && $pass == $dbPass[1]) {
				//echo "IF statement: " . $dbPass[0];
				setcookie('Id', $dbPass[0], time() + (86400 * 30), "/");
				header('Location:' . $app_path . 'view/home_view.php');
				exit;
				return;
			} else if(password_verify($pass, $dbPass[1])) {
				//echo "Else if statement: " . $dbPass[0] . " with password " . $pass;
				setcookie('Id', $dbPass[0], time() + (86400 * 30), "/");
				header('Location:' . $app_path . 'view/home_view.php');
				exit;
				return;
			} else {
				//echo "Else statement: " . $dbPass[0] . " with password " . $pass;
				$temp = password_hash($pass, PASSWORD_BCRYPT);
				$exists = false;
				header('Location:' . $app_path . 'login.php?exists=false');
				exit;
			}
		} else {
			$exists = false;
			header('Location:' . $app_path . 'login.php?exists=false');
			exit;
		}
		return;
	}
?>