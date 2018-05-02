<?php
	require_once('../util/main.php');
	require_once('../model/database.php');
	include('header.php');
	include('sidebar.php');
?>
<h2>Available Trips</h2>
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
#Update the following query to not display trips I am already a part of.
	$sql="SELECT DISTINCT tripId, originAddress, destAddress, beginDate, endDate 
			FROM futureTrips 
			WHERE tripId NOT IN (
				SELECT tripId from SubscribedTrips 
				WHERE userId=$uId)
			ORDER BY beginDate";
	$prep = $dbConn->prepare($sql);
	$prep->execute();
	$dbPass = $prep->fetchAll();
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
<style>
table {
	max-width:980px;
	table-layout:fixed;
	margin:auto;
}
th, td {
	padding: .2em .5em .2em .5em;
    vertical-align: top;
    text-align: left;
	border: 1px solid black;
    border-collapse: collapse;
}
thead, tfoot {
	background:#f9f9f9;
	display:table;
	width:100%;
	width:calc(100% - 18px);
}
tbody {
	height:300px;
	overflow:auto;
	overflow-x:hidden;
	display:block;
	width:100%;
}
tbody tr {
	display:table;
	/*width:100%;*/
	table-layout:fixed;
}
</style>
<form action='../model/joinDB.php' method="post">
<table>
	<thead>
		<tr>
			<th width="9%">Trip Id</th>
			<th width="28.3%">Origin</th>
			<th width="28.3%">Destination</th>
			<th width="13.7%">Begin Date</th>
			<th width="13.7%">End Date</th>
			<th width="7%">Join</th>
		</tr>
	</thead>
	<tbody>
	<?php
		foreach($dbPass as $row) {
			echo "<tr>";
			echo "<td width=\"9%\">" . $row['tripId'] . "</td><td width=\"28.3%\">" . getAddress($row['originAddress']) . "</td><td width=\"28.3%\">" . 
				getAddress($row['destAddress']) . "</td><td width=\"13.7%\">" . $row['beginDate'] . "</td><td width=\"13.7%\">" . 
				$row['endDate'] . "</td>" . "<td width=\"7%\"><input type=\"radio\" name=\"join\" value=\"" . $row['tripId'] . 
				"\"></td>";
			echo "</tr>";
		}
	?>
	</tbody>
</table>
<br>	<align="center"><button type="submit" name="joinTrip">Join Trip</button</td>
</form>
<?php include('footer.php')?>