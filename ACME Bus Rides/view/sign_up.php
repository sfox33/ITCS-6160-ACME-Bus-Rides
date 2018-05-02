<?php
	require_once('../util/main.php');
	include('header.php'); 
	require_once('../model/database.php');
?>
<?php
	//session_start();
	$check = true;
	$exists = false;
	$fName=$lName=$email=$user=$pass1=$pass2="";
	$fNameErr=$lNameErr=$emailErr=$userErr=$pass1Err=$pass2Err="";

	if($_SERVER["REQUEST_METHOD"] == "POST" && !isset($_POST["signup"])) {
		if(empty($_POST["fName"])) {
			$fNameErr="Please write your first name.";
			$check = false;
		} else {
			$fName = validateSignIn($_POST["fName"]);
		}
		
		if(empty($_POST["lName"])) {
			$lNameErr="Please enter your last name.";
			$check = false;
		} else {
			$lName = validateSignIn($_POST["lName"]);
		}
		
		if(empty($_POST["email"])) {
			$emailErr = "Please enter an email address.";
			$check = false;
		} else {
			$email = validateSignIn($_POST["email"]);
		}
		
		if(empty($_POST["uName"])) {
			$userErr = "Enter your username.";
			$check = false;
		} else {
			$user = validateSignIn($_POST["uName"]);
		}
		
		if(empty($_POST["pass1"])) {
			$pass1Err = "Enter your password.";
			$check = false;
		} else {
			$pass1 = validateSignIn($_POST["pass1"]);
		}
		
		if(empty($_POST["pass2"])) {
			$pass2Err = "Please enter your password.";
			$check = false;
		} else {
			$pass2 = validateSignIn($_POST["pass2"]);
		}
		
		if($pass1 != $pass2 && $pass2Err == "") {
			$pass2Err = "Passwords do not match.";
			$check = false;
		}
		
		if($check != false) {
			insertData();
			if(!$exists){
				header('Location:' . $app_path . 'view/home_view.php');
				return;
			}
		}
	} else if(isset($_POST["signup"])) {
		$check = true;
	} else {
		$check = false;
	}

	function validateSignIn($data) {
		$data=trim($data);
		$data=stripslashes($data);
		$data=htmlspecialchars($data);
		return $data;
	}
	
	function insertData() {
		global $fName, $lName, $email, $pass2, $user, $exists, $dbConn;
		
		/*$dsn = 'mysql:host=localhost;dbname=assemblebus';
		$username = 'demo';		#Change this late once login page is set up
		$password = 'ITCS-6160-Database';	#DEFINITELY don't forget to change this
		$options = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);
		$dbConn = new PDO($dsn, $username, $password, $options);
		$dbConn->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, false);*/
		
		$sql = "SELECT count(userId) FROM Person WHERE firstName = '$fName' AND lastName = '$lName' AND email = '$email'";
		$prep = $dbConn->prepare($sql);
		$prep->execute();
		$count = $prep->fetch();
		$prep->closeCursor();
		//echo "The result of query was " . $count[0];			//Also check later to see if username is taken.
		if($count[0] == 0) {
			$sql = "INSERT INTO Person(firstName, lastName, email) VALUES('$fName', '$lName', '$email')";
			$dbConn->exec($sql);
			$id = $dbConn->lastInsertId();
			setcookie('Id', $id, time() + (86400 * 30), "/");
			$sql = "INSERT INTO Client VALUES($id)";
			$dbConn->exec($sql);
			$pass = password_hash($pass2, PASSWORD_BCRYPT);
			$sql = "INSERT INTO Login(userId, username, password) VALUES($id, '$user', '$pass')";
			$dbConn->exec($sql);
			$dbConn = null;
		} else {
			$exists = true;
		}
		return;
	}
?>

<h2>Sign in</h2>
<form action='' method="post">
	<table>
		<tr>
			<td align="right">First Name</td>
			<td align="left"><input type="text" name="fName" value=<?php echo $fName?>>
				<span class="error"> <?php echo $fNameErr;?></span></td>
		</tr>
		<tr>
			<td align="right">Last Name</td>
			<td align="left"><input type="text" name="lName" value=<?php echo $lName?>>
				<span class="error"> <?php echo $lNameErr;?></span></td>
		</tr>
		<tr>
			<td align="right">Email</td>
			<td align="left"><input type="text" name="email" value=<?php echo $email?>>
				<span class="error"> <?php echo $emailErr;?></span></td>
		</tr>
		<tr>
			<td align="right">Username</td>
			<td align="left"><input type="text" name="uName" value=<?php echo $user?>>
				<span class="error"> <?php echo $userErr;?></span></td>
		</tr>
		<tr>
			<td align="right">Password</td>
			<td align="left"><input type="password" name="pass1">
				<span class="error"> <?php echo $pass1Err;?></span></td>
		</tr>
		<tr>
			<td align="right">Re-enter Password</td>
			<td align="left"><input type="password" name="pass2">
				<span class="error"> <?php echo $pass2Err;?></span></td>
		</tr>
		<tr>
			<td align="right"><button type="submit">Create</button></td>
			<td align="left"><button type="submit" formaction='../index.php' method="get">Cancel</button></td>
		</tr>
	</table>
	<?php 
		if($exists == true) {
			echo "Account information already exists";
		}
	?>
</form>
<?php include('view/footer.php')?>