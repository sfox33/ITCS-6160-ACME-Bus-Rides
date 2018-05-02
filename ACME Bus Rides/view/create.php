<?php
	require_once('../util/main.php');
	include('header.php');
	include('sidebar.php');
?>
<h2>Create a Trip</h2>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCfIpLxeyQztZe5qTr-wEWMnSKSGdEbjuE&libraries=places&callback=initAutocomplete"async defer></script>
<!--<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCfIpLxeyQztZe5qTr-wEWMnSKSGdEbjuE&callback=myMap"></script>-->
<style>
    #locationField, #controls {
      position: relative;
      width: 480px;
    }
    #autocomplete, #autocomplete2, #rallyComplete {
      position: absolute;
      top: 0px;
      left: 0px;
      width: 99%;
    }
    .label {
      text-align: right;
      font-weight: bold;
      width: 100px;
      color: #303030;
    }
    #address {
      border: 1px solid #000090;
      background-color: #f0f0ff;
      width: 480px;
      padding-right: 2px;
    }
    #address td {
      font-size: 10pt;
    }
    .field {
      width: 99%;
    }
    .slimField {
      width: 80px;
    }
    .wideField {
      width: 200px;
    }
    #locationField {
      height: 20px;
      margin-bottom: 2px;
    }
</style>
Enter your starting location:
<div id="locationField">
    <input id="autocomplete" placeholder="Enter your address"
        onFocus="geolocate()" type="text"></input>
</div>
<br>
Enter your destination:
<div id="locationField">
    <input id="autocomplete2" placeholder="Enter your address"
        onFocus="geolocate()" type="text"></input>
</div>
<br>
<div id="map" style="width:400px;height:400px;background:yellow"></div>
<br>
<form>
  Begin Date:
  <input type="datetime-local" id="originDate">
</form>
<br>
<form>
  End Date:
  <input type="datetime-local" id="endDate">
</form>
<br>
Trip Type
<select id="tripType">
  <option value="one">One-way Trip</option>
  <option value="round">Round Trip</option>
</select>
<br>
<br>
Vehicle Type
<select  id="busType">
  <option value="executive">Executive Bus</option>
  <option value="limo">Limo Bus</option>
  <option value="mini">Mini Bus</option>
  <option value="motor">Motorcoach</option>
  <option value="school">School Bus</option>
</select>
<br>
<br>

Add a rally point:
<div id="locationField">
    <input id="rallyComplete" placeholder="Enter your address"
        onFocus="geolocate()" type="text"></input>
</div>
<br>	
<button type="submit" onclick="addRow()" name="rallyPoint">Add Point</button>
<br><br>
<div id="rallyPointTable" style="display: none;">
<table id="rallyTable">
	<tr>
		<th>Point Id</th>
		<th>Address</th>
	</tr>
</table>
</div>
<br><br>
<button type="submit" onClick="calcPrice()" name="joinTrip">Calculate Price</button>
<br><br>
<div id="priceDisplay">
</div>

<script>
    // This example displays an address form, using the autocomplete feature
    // of the Google Places API to help users fill in the information.
    // This example requires the Places library. Include the libraries=places
    // parameter when you first load the API. For example:
    // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

    var placeSearch, autocomplete;
	var directionsDisplay;
	var beginMarker = null;
	var endMarker = null;
	var rallyPoints = [];
	var line;
    var componentForm = {
      street_number: 'short_name',
      route: 'long_name',
      locality: 'long_name',
      administrative_area_level_1: 'short_name',
      country: 'long_name',
      postal_code: 'short_name'
    };
	var map;

	function initAutocomplete() {
		// Create the autocomplete object, restricting the search to geographical
		// location types.
		autocomplete = new google.maps.places.Autocomplete(
		  /** @type {!HTMLInputElement} */(document.getElementById('autocomplete')),
		  {types: ['geocode']});
		autocomplete2 = new google.maps.places.Autocomplete(
          /** @type {!HTMLInputElement} */(document.getElementById('autocomplete2')),
		  {types: ['geocode']});
		rallycomplete = new google.maps.places.Autocomplete(
          /** @type {!HTMLInputElement} */(document.getElementById('rallyComplete')),
		  {types: ['geocode']});

		// When the user selects an address from the dropdown, populate the address
		// fields in the form.
		autocomplete.addListener('place_changed', codeAddress);
		autocomplete2.addListener('place_changed', codeAddress2);
		//rallycomplete.addListener('place_changed', codeAddressRally);
		myMap();
    }

    function fillInAddress() {
      // Get the place details from the autocomplete object.
      var place = autocomplete.getPlace();

      /*for (var component in componentForm) {
        document.getElementById(component).value = '';
        document.getElementById(component).disabled = false;
      }

      // Get each component of the address from the place details
      // and fill the corresponding field on the form.
      for (var i = 0; i < place.address_components.length; i++) {
        var addressType = place.address_components[i].types[0];
        if (componentForm[addressType]) {
          var val = place.address_components[i][componentForm[addressType]];
          document.getElementById(addressType).value = val;
        }
      }*/
	  codeAddress();
    }

    // Bias the autocomplete object to the user's geographical location,
    // as supplied by the browser's 'navigator.geolocation' object.
    function geolocate() {
      if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
          var geolocation = {
            lat: position.coords.latitude,
            lng: position.coords.longitude
          };
          var circle = new google.maps.Circle({
            center: geolocation,
            radius: position.coords.accuracy
          });
          autocomplete.setBounds(circle.getBounds());
        });
      }
    }
	
	function myMap() {
		var mapOptions = {
			center: new google.maps.LatLng(35.227085, -80.843124),
			zoom: 10,
			mapTypeId: 'roadmap'
		}
		map = new google.maps.Map(document.getElementById("map"), mapOptions);
	}
	
	function codeAddress() {
		geocoder = new google.maps.Geocoder();
		var address = document.getElementById('autocomplete').value;
		geocoder.geocode( { 'address': address}, function(results, status) {
			if (status == google.maps.GeocoderStatus.OK) {
				//map.setCenter(results[0].geometry.location);
				if(beginMarker != null) {
					beginMarker.setMap(null);
				}
				beginMarker = new google.maps.Marker({
					map: map,
					position: results[0].geometry.location
				});
				beginMarker.addListener('click', function() {
				  new google.maps.InfoWindow({content: address.toString()}).open(map, beginMarker);
				});
				updateView();
			} else {
				alert('Geocode was not successful for the following reason: ' + status);
			}
		});
	}
	//Idea: global array of markers.  First slot holds origin, lastSlot holds dest.
	function codeAddress2() {
		geocoder = new google.maps.Geocoder();
		var address = document.getElementById('autocomplete2').value;
		geocoder.geocode( { 'address': address}, function(results, status) {
			if (status == google.maps.GeocoderStatus.OK) {
				//map.setCenter(results[0].geometry.location);
				if(endMarker != null) {
					endMarker.setMap(null);
				}
				endMarker = new google.maps.Marker({
					map: map,
					position: results[0].geometry.location
				});
				endMarker.addListener('click', function() {
				  new google.maps.InfoWindow({content: address.toString()}).open(map, endMarker);
				});
				updateView();
			} else {
				alert('Geocode was not successful for the following reason: ' + status);
			}
		});
	}
	
	function codeAddressRally() {
		geocoder = new google.maps.Geocoder();
		var address = document.getElementById('rallyComplete').value;
		geocoder.geocode( { 'address': address}, function(results, status) {
			if (status == google.maps.GeocoderStatus.OK) {
				//map.setCenter(results[0].geometry.location);
				var marker = new google.maps.Marker({
					map: map,
					position: results[0].geometry.location
				});
				marker.addListener('click', function() {
				  new google.maps.InfoWindow({content: address.toString()}).open(map, marker);
				});
				rallyPoints.push(marker);
				updateView();
			} else {
				alert('Geocode was not successful for the following reason: ' + status);
			}
		});
	}
	
	function updateView() {
		myPath = [];
		var bounds = new google.maps.LatLngBounds();
		if(beginMarker != null) {
			bounds.extend(beginMarker.getPosition());
			myPath.push({location: beginMarker.getPosition(), stopover: true});
		}
		for(var i = 0; i < rallyPoints.length; ++i) {
			bounds.extend(rallyPoints[i].getPosition());
			myPath.push({location: rallyPoints[i].getPosition(), stopover: true});
		}
		if(endMarker != null) {
			bounds.extend(endMarker.getPosition());
			myPath.push({location: endMarker.getPosition(), stopover: true});
		}
		map.fitBounds(bounds);
		map.setCenter(bounds.getCenter());
		if(line != null) {
			line.setMap(null);
		}
		line = new google.maps.Polyline({ map: map});
		var service = new google.maps.DirectionsService();
		if(directionsDisplay != null) {
			directionsDisplay.setMap(null);
		}
		directionsDisplay = new google.maps.DirectionsRenderer({suppressMarkers: true, preserveViewport: true});
		directionsDisplay.setMap(map);
		console.log(typeof myPath[0].location);
		var request = {
			origin: myPath[0].location,
			destination: myPath[myPath.length-1].location,
			waypoints: myPath,
			travelMode: google.maps.DirectionsTravelMode.DRIVING
		}; 
		service.route(request, function(result, status) {
			if (status == google.maps.DirectionsStatus.OK) {
				directionsDisplay.setDirections(result);
			}
		});
	}
	
	var tableIndex = 1;

	function addRow() {
		document.getElementById('rallyPointTable').style.display="inline-block";
		var table = document.getElementById("rallyTable");
		var row = table.insertRow(table.rows[table.rows.length]);
		var cell1 = row.insertCell(0);
		var cell2 = row.insertCell(1);
		cell1.innerHTML = tableIndex;
		cell2.innerHTML = document.getElementById("rallyComplete").value;
		tableIndex++;
		codeAddressRally();
	}

	function calcPrice() {
		var origin = document.getElementById('autocomplete').value.trim().replace(/ /g, '%20');
		var dest = document.getElementById('autocomplete2').value.trim().replace(/ /g, '%20');
		var beginDate = document.getElementById('originDate').value;
		var endDate = document.getElementById('endDate').value;
		var trip = document.getElementById('tripType').value;
		var bus = document.getElementById('busType').value;
		var table = document.getElementById("rallyTable");
		var miles = (google.maps.geometry.spherical.computeDistanceBetween (beginMarker.getPosition(), endMarker.getPosition()) / 1609.34);
		console.log("Calculated miles are " + miles);
		var arrayString = "";
		for (var i = 1, row; row = table.rows[i]; ++i) {
			arrayString += "&a[]="+row.cells[1].innerHTML.trim().replace(/ /g, '%20');
		}
		$("#priceDisplay").load('../model/price.php?origin='+origin+'&dest='+dest+'&beginDate='+beginDate+'&endDate='+endDate+'&trip='+trip+'&bus='+bus+'&miles='+miles+arrayString);
	}
</script>

<?php include('footer.php')?>