<?php
	require_once('../util/main.php');
	include('header.php');
	include('sidebar.php');
?>
<p>
	Welcome to ACME Bus Rides.  This project was designed to satisfy the requirements for a semester 
	project for the ITCS 6160 course offered by UNCC.  More information about the technical requirements
	can be found at 
	<a href="https://github.com/sfox33/ITCS-6160-ACME-Bus-Rides">github.com/sfox33/ITCS-6160-ACME-Bus-Rides</a>.
</p>
<p>
	This project took inspiration from the website for the existing company Rally Bus found at 
	<a href="http://rallybus.net/">rallybus.net</a>.  This project is not designed for commercial purposes and 
	was only designed to emulate certain services offered by the company for practice and 
	educational purposes.
</p>
<p>
	With this web interface, you have the option of creating an account and creating or joining bus rides.  In
	the Create a Trip page, you can create a new trip from scratch including origin and destination points, beginning
	and end times of your trip, the type of trip, the type of bus you wish to use, and any stops or "Rally Points"
	that you wish to make along the way.  On the Join a Trip page, you can join any existing trips that have not 
	started yet.
</p>
<?php
	include('footer.php');
?>