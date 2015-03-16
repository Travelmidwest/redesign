<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
 
<meta charset="utf-8">
<title>Free HTML5 Bootstrap Admin Template</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

 <link href='css/styles.css' rel='stylesheet'>
<link id="bs-css" href="css/bootstrap-darkly.min.css" rel="stylesheet">
<link href="css/charisma-app.css" rel="stylesheet">
<link href='bower_components/fullcalendar/dist/fullcalendar.css' rel='stylesheet'>
<link href='bower_components/fullcalendar/dist/fullcalendar.print.css' rel='stylesheet' media='print'>
<link href='bower_components/chosen/chosen.min.css' rel='stylesheet'>
<link href='bower_components/colorbox/example3/colorbox.css' rel='stylesheet'>
<link href='bower_components/responsive-tables/responsive-tables.css' rel='stylesheet'>
<link href='bower_components/bootstrap-tour/build/css/bootstrap-tour.min.css' rel='stylesheet'>
<link href='css/jquery.noty.css' rel='stylesheet'>
<link href='css/noty_theme_default.css' rel='stylesheet'>
<link href='css/elfinder.min.css' rel='stylesheet'>
<link href='css/elfinder.theme.css' rel='stylesheet'>
<link href='css/jquery.iphone.toggle.css' rel='stylesheet'>
<link href='css/uploadify.css' rel='stylesheet'>
<link href='css/animate.min.css' rel='stylesheet'>
 
<script src="bower_components/jquery/jquery.min.js"></script>
 
<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
 
<link rel="shortcut icon" href="img/favicon_tm.ico">
</head>
<body>
<div class="rss">
RSS
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
<a id="log-in" href="Login.jsp">Log in</a> &nbsp; &nbsp;| &nbsp;
<a id="reg" href="Register.jsp">Register</a>&nbsp;
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
<div class="ch-container">
 <!-- breadcrumb starts -->
    <div style=" margin-top: -8px;margin-bottom: -20px; width: 1385px; margin-left: -30px;" class="box col-md-12">
    <ul style=" background-color:#069C6F;" class="breadcrumb" >
		<li>
			<a href="Home.jsp">Home</a>
		</li>
		<li>
		<a href="Login.jsp">Login</a>
		</li>
	</ul>
    </div>
    </div>
       
    <!-- breadcrumb ends -->
<div class="col-md-12 center login-header">
<h2>Login to Travel Midwest</h2>
</div>


<div class="row">
<div class="well col-md-5 center login-box">
<div class="alert alert-info">
Please login with your Username and Password.
</div>
<form class="form-horizontal" action="welcome.jsp" method="post">
<fieldset>
<div class="input-group input-group-lg">
<span class="input-group-addon"><i class="glyphicon glyphicon-user red"></i></span>
<input type="text" class="form-control" placeholder="Username">
</div>
<div class="clearfix"></div><br>
<div class="input-group input-group-lg">
<span class="input-group-addon"><i class="glyphicon glyphicon-lock red"></i></span>
<input type="password" class="form-control" placeholder="Password">
</div>
<div class="clearfix"></div>
<div class="input-prepend">
<label style="color:#ffffff;"class="remember" for="remember"><input type="checkbox" id="remember"> Remember me</label>&nbsp;&nbsp;&nbsp;&nbsp;
<label><a href="#" id="remember"> Forgot Password?</a></label>
</div>

<div class="clearfix"></div>
<p class="center col-md-5">
<button type="submit" class="btn btn-primary">Login</button>
</p>
</fieldset>
</form>
</div>
</div> 
<footer style="background-color: #001f5c;" class="row">
				
		<table align="center" cellspacing="0" cellpadding="0">
		<tr><td align="center" style="color:black">
		<a href="siteContributors.jsp">Site Contributors</a> | <a href="policies.jsp">Policies</a> | <a href="disclaimer.jsp">Disclaimer</a>
		| <a href='glossary.jsp'>Glossary</a> | <a href="contactus.jsp">Contact Us</a>
		</table>
	<p style="margin-left: 170px;" align="center" class="col-md-9 col-sm-9 col-xs-12 copyright"><font style="color: #ffffff">Copyright &copy; <a href="http:travelmidwest.com" target="_blank" style="text-decoration: underline;">Travel Midwest
	</a> </font></p>	
</footer> 

 


		
</div>
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
 
<script src="js/jquery.cookie.js"></script>
 
<script src='bower_components/moment/min/moment.min.js'></script>
<script src='bower_components/fullcalendar/dist/fullcalendar.min.js'></script>
 
<script src='js/jquery.dataTables.min.js'></script>
 
<script src="bower_components/chosen/chosen.jquery.min.js"></script>
 
<script src="bower_components/colorbox/jquery.colorbox-min.js"></script>
 
<script src="js/jquery.noty.js"></script>
 
<script src="bower_components/responsive-tables/responsive-tables.js"></script>
 
<script src="bower_components/bootstrap-tour/build/js/bootstrap-tour.min.js"></script>
 
<script src="js/jquery.raty.min.js"></script>
 
<script src="js/jquery.iphone.toggle.js"></script>
 
<script src="js/jquery.autogrow-textarea.js"></script>
 
<script src="js/jquery.uploadify-3.1.min.js"></script>
 
<script src="js/jquery.history.js"></script>
 
<script src="js/charisma.js"></script>
</body>
</html>
