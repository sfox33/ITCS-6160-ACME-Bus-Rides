<?php
	require_once('../util/main.php');
	require_once('../model/database.php');
	include('header.php');
	include('sidebar.php');
?>
<h2>Your Trips</h2>
<style>
table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
}
</style>
<?php
	/*$dsn = 'mysql:host=localhost;dbname=assemblebus';
	$username = 'demo';		#Change this late once login page is set up
	$password = 'ITCS-6160-Database';	#DEFINITELY don't forget to change this
	$options = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);*/
	
	if(isset($_COOKIE['Id'])){
		$uId = $_COOKIE['Id'];
	}
	
	/*$dbConn = new PDO($dsn, $username, $password, $options);
	$dbConn->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, false);*/
	//Rewrite with the subscribeTrips view
	$sql="SELECT tripId, originAddress, destAddress, beginDate, endDate from subscribedTrips 
			WHERE userId=$uId";
	$prep = $dbConn->prepare($sql);
	$prep->execute();
	$dbPass = $prep->fetchAll();
	//$dbConn=null;
	$prep->closeCursor();
	
	function getAddress($addressId) {
		//global $dsn, $username, $password, $options;
		//$dbConn = new PDO($dsn, $username, $password, $options);
		global $dbConn;
		
		$sql="SELECT * FROM Address WHERE addressId=$addressId";
		$prep = $dbConn->prepare($sql);
		$prep->execute();
		$dbPass = $prep->fetch();
		$prep->closeCursor();
		//$dbConn=null;
		return $dbPass['street'] . " " . $dbPass['city'] . ", " . $dbPass['state'] . " " . $dbPass['country'];
	}
?>
<form action='../model/deleteTrip.php' method="post">
<table>
	<tr>
		<th>Trip Id</th>
		<th>Origin</th>
		<th>Destination</th>
		<th>Begin Date</th>
		<th>End Date</th>
		<th>Delete</th>
	</tr>
	<?php
		foreach($dbPass as $row) {
			echo "<tr>";
			echo "<td>" . $row['tripId'] . "</td><td>" . getAddress($row['originAddress']) . "</td><td>" . getAddress($row['destAddress']) . 
				"</td><td>" . $row['beginDate'] . "</td><td>" . $row['endDate'] . "</td>" . "<td><input type=\"radio\" name=\"cancel\" value=\"" . 
				$row['tripId'] . "\"></td>";
			echo "</tr>";
		}
	?>
</table>
<br><button type="submit" name="cancelTrip">Cancel Trip</button</td>
</form>
<?php include('footer.php')?>