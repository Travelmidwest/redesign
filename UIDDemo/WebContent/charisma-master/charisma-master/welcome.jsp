<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
   
    <meta charset="utf-8">
    <title>Travel Midwest</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">

    <!-- The styles -->
    <link rel='shortcut icon' href='img/favicon_tm.ico' type='image/x-icon'/ >
    <link id="bs-css" href="css/bootstrap-darkly.min.css" rel="stylesheet">
<script type="text/javascript" src="css/jquery-1.2.6.min.js"></script>
    <link href="css/charisma-app.css" rel="stylesheet">
    <link href='bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
    <link href='bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
    <link href='bower_components/chosen/chosen.min.css' rel='stylesheet'>
    <link href='bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
    <link href='bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
    <link href='bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
    <link href='css/jquery.noty.css' rel='stylesheet'>
    <link href='css/noty_theme_default.css' rel='stylesheet'>
    <link href='css/styles.css' rel='stylesheet'>
    <link href='css/elfinder.min.css' rel='stylesheet'>
    <link href='css/elfinder.theme.css' rel='stylesheet'>
    <link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
    <link href='css/uploadify.css' rel='stylesheet'>
    <link href='css/animate.min.css' rel='stylesheet'>

    <!-- jQuery -->
    <script src="bower_components/jquery/jquery.min.js"></script>

    <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <!-- The fav icon -->
    
     <script src="https://maps.googleapis.com/maps/api/js"></script>
       <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&signed_in=true"></script>
  <cfoutput>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=#YOUR-GOOGLE-API-KEY#&sensor=false"></script>
</cfoutput>
<script type="text/javascript">
var geocoder;
    var map = null;
    var marker = null;
    var infowindow = new google.maps.InfoWindow({ 
        size: new google.maps.Size(150,50)
        });

    
    function createMarker(latlng, name, html) {

    var contentString = html;

    var marker = new google.maps.Marker({
        position: latlng,
        map: map,
        zIndex: Math.round(latlng.lat()*-100000)<<5
        });

    google.maps.event.addListener(marker, 'click', function() {
        infowindow.setContent(contentString); 
        infowindow.open(map,marker);
        });

    google.maps.event.trigger(marker, 'click');    
    return marker;

}

function initialize() {

    var myLatlng = new google.maps.LatLng(41.871516,-87.651179);
    geocoder = new google.maps.Geocoder();
  
    var myOptions = {
        zoom: 14,
        center: myLatlng,
        mapTypeControl: true,
        mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU},
        navigationControl: true,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    }

    map = new google.maps.Map(document.getElementById("map-canvas"), myOptions);

    var image = '/images/googlepins/pin2.png';  
    marker = new google.maps.Marker({
      position: myLatlng,
      map: map,
      icon: image,
      title:"Property Location"
    });

   
    formlat = document.getElementById("latbox").value = myLatlng.lat();
    formlng = document.getElementById("lngbox").value = myLatlng.lng();

    google.maps.event.addListener(map, 'click', function() {
        infowindow.close();
        });

    google.maps.event.addListener(map, 'click', function(event) {
        
         if (marker) {
            marker.setMap(null);
            marker = null;
         }

        var image = '/images/googlepins/pin2.png';
        var myLatLng = event.latLng ;
     
        marker = new google.maps.Marker({   
            position: myLatLng,
            map: map,
            icon: image,
            title:"Property Location"
        });

        formlat = document.getElementById("latbox").value = event.latLng.lat();
        formlng = document.getElementById("lngbox").value = event.latLng.lng();
      
        codeLatLng(); 
    });

}

    function codeLatLng() {
    	var lat = document.getElementById('latbox').value;
    
    	var lng = document.getElementById('lngbox').value;
    	  
    	
    	  var latlng = new google.maps.LatLng(lat, lng);
    
    	  geocoder.geocode({'latLng': latlng}, function(results, status) {
    
    	    if (status == google.maps.GeocoderStatus.OK) {
    	   
    	      if (results[1]) {
    	        map.setZoom(11);
    	        marker = new google.maps.Marker({
    	            position: latlng,
    	            map: map
    	        });
    	       
    	        infowindow.setContent(results[1].formatted_address);
    	       
    	        document.getElementsByName('add')[0].value =results[1].formatted_address ;
    	        infowindow.open(map, marker);
    	      } else {
    	        alert('No results found');
    	      }
    	    } else {
    	      alert('Geocoder failed due to: ' + status);
    	    }
    	  });
	}


    </script>
 <style>
      #panel {
        position: absolute;
        top: 5px;
        left: 50%;
        margin-left: -180px;
        width: 350px;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
      }
      #latlng {
        width: 225px;
      }
    </style>
</head>

<body onload="initialize()">
<div class="rss">

 <marquee direction=left> <img alt="Travel Midwest Logo" src="img/rss.png" style="height:25px;margin-top:2px;margin-left:200px;" class="hidden-xs"/><font style="size:40px;color:white">Cook County,IL-Ramp from NB IL-171 to SB-155 closed starting 10PM on Friday,Mar 13th to 5AM on Monday Mar.16th</font></marquee>
</div>
    <!-- topbar starts -->
    <div class="navbar navbar-default" role="navigation" style="height:60px;">

        <div class="navbar-inner" >
           
            <a class="navbar-brand" href="Home.jsp"> <img alt="Travel Midwest Logo" src="img/travelmidwest_logo.jpg" class="hidden-xs"/>
                </a>
          
            <ul class="collapse navbar-collapse nav navbar-nav top-menu">
            
                <li>
                  <label style="margin-left:20px;margin-top:15px;font-family:Arial;color:white;">City</label>
                </li><li>
                <div class="btn-group pull-right" >
                <button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                    <span >Chicago</span>
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" style="list-style: none; width:20px;">
                    <li><a href="NWIndiana.jsp">NW Indiana</a></li>
                    <li class="divider"></li>
                    <li><a href="Michigan.jsp">Michigan</a></li>
                    <li class="divider"></li>
                    <li><a href="Madison.jsp">Madison</a></li>
                    <li class="divider"></li>
                    <li><a href="Milwaukee.jsp">Milwaukee</a></li>
                </ul>
            	</div></li>
            </ul>
           

 <div style="margin-right: 20px;" class="btn-group pull-right">
<button class="btn btn-default dropdown-toggle" data-toggle="dropdown">
<i class="glyphicon glyphicon-user"></i><span class="hidden-sm hidden-xs"> suriya8992</span>
<span class="caret"></span>
</button>
<ul class="dropdown-menu" style="list-style: none; width:20px;">
<li><a href="#">Profile</a></li>
<li class="divider"></li>
<li><a href="login.html">Logout</a></li>
</ul>
</div>

       </div>
        <!-- navbar starts -->

<div id="nav2">
<ul id="menu-bar">
 <li class="active"><a href="#">Home</a></li>
 <li><a href="#">Report&nbsp;<i class="glyphicon glyphicon-chevron-down"></i>&nbsp;</a>
  <ul>
   <li><a href="Traffic_Report.jsp">Travel Time Report</a></li>
   <li><a href="Congestion_Report.jsp">Congestion Report</a></li>
   <li><a href="#">Incident Report</a></li>
   <li><a href="#">Trucker's Report</a></li>
  </ul>
 </li>
 <li><a href="#">Projects&nbsp;<i class="glyphicon glyphicon-chevron-down"></i>&nbsp;</a>
  <ul>
   <li><a href="#">IL I74/I-155 Project</a></li>
   <li><a href="#">IL I-290 Reconstruction</a></li>
   <li><a href="#">IL Jane Addams(I-90) Reconstruction</a></li>
  </ul>
 </li>
 <li><a href="#">&nbsp;Accident Prone Zone<i class="glyphicon glyphicon-chevron-down"></i>&nbsp;</a>
 <ul>
 <li><a href="#">Chicago</a></li>
 <li><a href="#">Indiana</a></li>
 <li><a href="#">Madison</a></li>
 </ul>
 </li>
 <li><a href="#">&nbsp;Virtual Tour&nbsp;</a></li>
 <li><a href="#">&nbsp; Analytics&nbsp;</a></li>
 <li style="margin-left: 695px;"><a href="ReportIncident.jsp">&nbsp; Report an incident &nbsp;</a></li>
</ul>
</div>
    </div>
    <!-- topbar ends -->
  
    <!-- content starts -->
    <div class="ch-container">
            <div class="row" >
    <div class="box col-md-8" >
        <div class="box-inner" >
           
            <div id="map-canvas" class="box-content row" style="background-color:white;height:540px;margin-left:0.5px; width:870px;">
            </div>
        </div>
    </div>
     <div class="box col-md-4" >
        <div class="box-inner" style="background-color:white;height:540px">
           
            <div class="box-content row">
            <br>
           <div class="box-content" >
           <form action="Traffic_Illinois.jsp">
<div class="alert alert-info"style="background-color:#bce8f1;color:#234269">
Click anywhere on the map or enter your destination
</div>
                <div class="control-group">
                	<div class="form-group has-success col-md-4">
<label class="control-label" for="inputSuccess1" style="color:#234269">Address</label>
<input type="text" class="form-control" name="add" id="inputSuccess1" style="border:1px solid #000000;width:390px;">

 <input size="20" type="hidden" id="latbox" name="lat" >
    <input size="20" type="hidden" id="lngbox" name="lng" >
    
   
  
</div><br><br><br>
<br>

<div class="radio ">
<p style="color:#234269;font-weight: 900;text-align:center;"><b>Quick Links</b></p>
<div class="radio">
<label>
<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
Traffic Report
</label>
</div><br>
<div class="radio">
<label>
<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
Congestion Report
</label>
</div><br>
<div class="radio">
<label>
<input type="radio" name="optionsRadios" id="optionsRadios1" value="option1" checked>
Incident Report</label>
</div><br>
<div class="radio">
<label>
<input type="radio" name="optionsRadios" id="optionsRadios2" value="option2">
Trucker's Report
</label>
</div><br>

<p class="center col-md-5">
<button type="submit" class="btn btn-primary">Submit</button>
</p></form>
                </div>
               
              
            </div>
        </div>
    </div>
</div>

 </div>
	<footer style="background-color: #001f5c; width: 1366px;" class="row">
		<table align="center" cellspacing="0" cellpadding="0">
			<tr><td align="center" style="color:black">
			<a href="siteContributors.jsp">Site Contributors</a> | <a href="policies.jsp">Policies</a> | <a href="disclaimer.jsp">Disclaimer</a>
	    	<a href='glossary.jsp'>Glossary</a> | <a href="contactus.jsp">Contact Us</a>
		</table>
		<p style="margin-left: 170px;" align="center" class="col-md-9 col-sm-9 col-xs-12 copyright"><font style="color: #ffffff">Copyright &copy; <a href="http:travelmidwest.com" target="_blank" style="text-decoration: underline;">Travel Midwest
		</a> </font></p>	
	</footer>    
    
    <!-- content ends --> 



<!-- external javascript -->

<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

<!-- library for cookie management -->
<script src="js/jquery.cookie.js"></script>
<!-- calender plugin -->
<script src='bower_components/moment/min/moment.min.js'></script>
<script src='bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
<!-- data table plugin -->
<script src='js/jquery.dataTables.min.js'></script>

<!-- select or dropdown enhancer -->
<script src="bower_components/chosen/chosen.jquery.min.js"></script>
<!-- plugin for gallery image view -->
<script src="bower_components/colorbox/jquery.colorbox-min.js"></script>
<!-- notification plugin -->
<script src="js/jquery.noty.js"></script>
<!-- library for making tables responsive -->
<script src="bower_components/responsive-tables/responsive-tables.js"></script>
<!-- tour plugin -->
<script src="bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
<!-- star rating plugin -->
<script src="js/jquery.raty.min.js"></script>
<!-- for iOS style toggle switch -->
<script src="js/jquery.iphone.toggle.js"></script>
<!-- autogrowing textarea plugin -->
<script src="js/jquery.autogrow-textarea.js"></script>
<!-- multiple file upload plugin -->
<script src="js/jquery.uploadify-3.1.min.js"></script>
<!-- history.js for cross-browser state change on ajax -->
<script src="js/jquery.history.js"></script>
<!-- application script for Charisma demo -->
<script src="js/charisma.js"></script>


</body>
</html>
