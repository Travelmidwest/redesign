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
           

 <div style="float:right;margin-top:15px;margin-right:15px;">
<a href="Login.jsp">Log in</a> &nbsp; &nbsp;| &nbsp;
<a href="Register.jsp">Register</a>&nbsp;

 </div>     

       </div>
        <!-- navbar starts -->

<div id="nav2">
<ul id="menu-bar">
 <li class="active"><a href="Home.jsp">Home</a></li>
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
</ul>
</div>
    </div>
    <!-- topbar ends -->
    <!-- content starts -->
    <div class="ch-container">
     <!-- breadcrumb starts -->
    
      <div style=" margin-top: -8px;margin-bottom: -20px; width: 1385px; margin-left: -30px;" class="box col-md-12">
   
       
           
           
           <ul style=" background-color:#069C6F;" class="breadcrumb" >
<li>
<a href="Home.jsp">Home</a>
</li>
<li>
<a href="Traffic_Illinois.jsp">Traffic Report-Illinois</a>
</li>
</ul>
      
        </div>
      
        
           
    <!-- breadcrumb ends -->
       <div class="row" >
    <div class="box col-md-12">
<div class="box-inner">
<div class="box-header well" data-original-title=""  style="background-color:#001f5c;color:white">
<h2>Traffic Report I-90</h2>

</div>
<div class="box-content" style="background-color:white">
<table class="table table-bordered table-striped table-condensed" style="background-color:white">
<thead style="background-color:#234269;color:white">
<tr>
<th>From</th>
<th>To</th>
<th>Travel Time(mins)</th>
<th>Average Travel Time(mins)</th>
<th>Distance(miles)</th>
<th>Speed(mph)</th>

<th>Congestion</th>

</tr>
</thead>
<tbody >
<tr  style="background-color:white">
<td>65th St</td>
<td class="center">29th St (via Locals)</td>
<td class="center">-1.0</td>
<td class="center">7.98</td>
<td class="center">7.798829833770778</td>
<td class="center">N/A</td>
<td>
<span class="label-default label">Unknown</span>
</td>
</tr>
<tr  style="background-color:white">
<td>65th St</td>
<td class="center">29th St (via Locals)</td>
<td class="center">-1.0</td>
<td class="center">7.98</td>
<td class="center">7.798829833770778</td>
<td class="center">N/A</td>
<td>
<span class="label-warning label label-default">Light Congestion</span>
</td>
</tr>
<tr  style="background-color:white">
<td>65th St</td>
<td class="center">29th St (via Locals)</td>
<td class="center">-1.0</td>
<td class="center">7.98</td>
<td class="center">7.798829833770778</td>
<td class="center">N/A</td>
<td>
<span class="label-success label label-default">High Congestion</span>
</td>
</tr>
<tr  style="background-color:white">
<td>65th St</td>
<td class="center">29th St (via Locals)</td>
<td class="center">-1.0</td>
<td class="center">7.98</td>
<td class="center">7.798829833770778</td>
<td class="center">N/A</td>
<td>
<span class="label-default label label-danger">No Congestion</span>
</td>
</tr>

</tbody>
</table>

</div>
</div>
</div>
</div> 
 
</div> 
      <div class="ch-container">
       <div class="row" >
    <div class="box col-md-12">
<div class="box-inner">
<div class="box-header well" data-original-title=""  style="background-color:#001f5c;color:white">
<h2>Traffic Report I-290</h2>

</div>
<div class="box-content" style="background-color:white">
<table class="table table-bordered table-striped table-condensed" style="background-color:white">
<thead style="background-color:#234269;color:white">
<tr>
<th>From</th>
<th>To</th>
<th>Travel Time(mins)</th>
<th>Average Travel Time(mins)</th>
<th>Distance(miles)</th>
<th>Speed(mph)</th>

<th>Congestion</th>

</tr>
</thead>
<tbody >
<tr  style="background-color:white">
<td>I-290 / Circle (via Kennedy</td>
<td class="center">Lake Cook Rd (via Edens)</td>
<td class="center">-1.0</td>
<td class="center">7.98</td>
<td class="center">7.798829833770778</td>
<td class="center">N/A</td>
<td>
<span class="label-default label">Unknown</span>
</td>
</tr>
<tr  style="background-color:white">
<td>I-290 / Circle (via Kennedy</td>
<td class="center">Lake Cook Rd (via Edens)</td>
<td class="center">-1.0</td>
<td class="center">7.98</td>
<td class="center">7.798829833770778</td>
<td class="center">N/A</td>
<td>
<span class="label-warning label label-default">Light Congestion</span>
</td>
</tr>
<tr  style="background-color:white">
<td>I-290 / Circle (via Kennedy</td>
<td class="center">Lake Cook Rd (via Edens)</td>
<td class="center">-1.0</td>
<td class="center">7.98</td>
<td class="center">7.798829833770778</td>
<td class="center">N/A</td>
<td>
<span class="label-success label label-default">High Congestion</span>
</td>
</tr>
<tr  style="background-color:white">
<td>I-290 / Circle (via Kennedy</td>
<td class="center">Lake Cook Rd (via Edens)</td>
<td class="center">-1.0</td>
<td class="center">7.98</td>
<td class="center">7.798829833770778</td>
<td class="center">N/A</td>
<td>
<span class="label-default label label-danger">No Congestion</span>
</td>
</tr>

</tbody>
</table>

</div>
</div>
</div>
</div> 
 
</div> 
     
  <div class="ch-container">
       <div class="row" >
    <div class="box col-md-12">
<div class="box-inner">
<div class="box-header well" data-original-title=""  style="background-color:#001f5c;color:white">
<h2>Traffic Report I-55</h2>

</div>
<div class="box-content" style="background-color:white">
<table class="table table-bordered table-striped table-condensed" style="background-color:white">
<thead style="background-color:#234269;color:white">
<tr>
<th>From</th>
<th>To</th>
<th>Travel Time(mins)</th>
<th>Average Travel Time(mins)</th>
<th>Distance(miles)</th>
<th>Speed(mph)</th>

<th>Congestion</th>

</tr>
</thead>
<tbody >
<tr  style="background-color:white">
<td>I-80 (via Bishop Ford)</td>
<td class="center">I-290/Circle (via Dan Ryan)</td>
<td class="center">-1.0</td>
<td class="center">7.98</td>
<td class="center">7.798829833770778</td>
<td class="center">N/A</td>
<td>
<span class="label-default label">Unknown</span>
</td>
</tr>
<tr  style="background-color:white">
<td>I-80 (via Bishop Ford)</td>
<td class="center">I-290/Circle (via Dan Ryan)</td>
<td class="center">-1.0</td>
<td class="center">7.98</td>
<td class="center">7.798829833770778</td>
<td class="center">N/A</td>
<td>
<span class="label-warning label label-default">Light Congestion</span>
</td>
</tr>
<tr  style="background-color:white">
<td>I-80 (via Bishop Ford)</td>
<td class="center">I-290/Circle (via Dan Ryan)</td>
<td class="center">-1.0</td>
<td class="center">7.98</td>
<td class="center">7.798829833770778</td>
<td class="center">N/A</td>
<td>
<span class="label-success label label-default">High Congestion</span>
</td>
</tr>
<tr  style="background-color:white">
<td>I-80 (via Bishop Ford)</td>
<td class="center">I-290/Circle (via Dan Ryan)</td>
<td class="center">-1.0</td>
<td class="center">7.98</td>
<td class="center">7.798829833770778</td>
<td class="center">N/A</td>
<td>
<span class="label-default label label-danger">No Congestion</span>
</td>
</tr>
</tbody>
</table>

</div>
</div>
</div>
</div> 
 	
</div>   
 <footer style="background-color: #001f5c; width: 1366px;" class="row">
				
		<table align="center" cellspacing="0" cellpadding="0">
		<tr><td align="center" style="color:black">
		<a href="siteContributors.jsp">Site Contributors</a> | <a href="policies.jsp">Policies</a> | <a href="disclaimer.jsp">Disclaimer</a>
		| <a href='glossary.jsp'>Glossary</a> | <a href="contactus.jsp">Contact Us</a>
	
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
