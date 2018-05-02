<?php
$dsn = 'mysql:host=localhost;dbname=assemblebus';
//$username = 'demo';		#Change this late once login page is set up
//$password = 'ITCS-6160-Database';	#DEFINITELY don't forget to change this
$username = 'root';		#Change this late once login page is set up
$password = 'Roxanne01*';	#DEFINITELY don't forget to change this
$options = array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION);

try {
    $dbConn = new PDO($dsn, $username, $password, $options);
	$dbConn->setAttribute(PDO::MYSQL_ATTR_USE_BUFFERED_QUERY, false);
} catch (PDOException $e) {
    $error_message = $e->getMessage();
    //include 'errors/db_error_connect.php';
	echo "Coming from database.php\n";
	echo $error_message;
    exit;
}

function display_db_error($error_message) {
    global $app_path;
    //include 'errors/db_error.php';
    exit;
}
?>