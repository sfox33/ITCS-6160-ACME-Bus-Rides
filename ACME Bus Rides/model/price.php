<?php
	if($_GET['origin'] == "" || $_GET['dest'] == "" || $_GET['beginDate'] == "" || $_GET['endDate'] == "" || $_GET['trip'] == "" || $_GET['bus'] == "" || $_GET['miles'] == "") {
		echo 'Please enter all necessary information.';
	} else {
		$origin = explode(", ", $_GET['origin']);
		$dest = explode(", ", $_GET['origin']);
		
		//$beginDate = preg_split("[-|T]", $_GET['beginDate']);
		$beginDate = str_replace("T", " ", $_GET['beginDate']);
		$endDate = str_replace("T", " ", $_GET['endDate']);
		$trip = $_GET['trip'];
		$bus = $_GET['bus'];
		$miles = $_GET['miles'];
		if(isset($_GET['a'])) {
			$rally = $_GET['a'];
		}

		if(!isBefore($beginDate, $endDate)) {
			echo 'End Date must occur after Begin Date';
		} else {
			echo "Your maximum price is $" . getPrice() . ".  Do you still wish to create this trip?";
			echo "<br>
				<form action=\"../view/create.php\" method=\"post\">
				<button type=\"submit\" id=\"joinTrip\" formaction='../model/addTrip.php" . "?" . $_SERVER['QUERY_STRING'] . "'>Yes</button>
				<button type=\"submit\" id=\"cancelTrip\">No</button>
				</form>";
			//Change the above code to a GET method.  It won't affect the code leading to create.php (only the button name gets added,
			// and the needed variables can be added to the URL going to addTrip.
		}
	}
	
	function isBefore($date1, $date2) {
		$firstDate = strtotime($date1);
		$secondDate = strtotime($date2);
		return $date1 < $date2;
	}
	
	function getPrice() {
		Global $miles, $bus, $trip;
		$price = "";
		if($bus == 'motor') {
			$price = round($miles*1.5, 2);
		} else if ($bus == 'mini') {
			$price = round($miles, 2);
		} else if($bus == 'executive') {
			$price = round($miles*2, 2);
		} else if ($bus == 'school') {
			$price = round($miles*0.5, 2);
		} else {
			$price = round($miles*3, 2);
		}
		if($trip == "round") {
			$price = 2*$price;
		}
		return $price;
	}
?>