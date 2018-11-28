<!--
RecyclePedia Application
This document gives the layout and setup for the About page of the website. This page gives information on each member in the group. 
-->

<!DOCTYPE HTML>
<html lang="en">
<html>
<head>
	<title>RecylePedia About Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">

	<style>
	body {
		background-color: #6B8E23;
		background-image: url(Grass.jpg);  
		background-repeat:no-repeat;
		background-size:cover;
	}
	.text {
		text-align: center;
		display: block;
	}
	.column {
		float: center;
		width: 70%;
		padding: 10px;
		border-radius: 10px;
		border-width: 2px 1px 2px 1px;
		margin-right: 10px;
		overflow: auto;    
	}
	.row:after {
		content: "";
		display: table;
		clear: both;
		overflow: auto;
	}
	.header {
		background-color: #F1F1F1;
		text-align: center;
		padding: 20px;
	} 
	.footer {
		margin-bottom: 0;
		background-color: #6B8E23;
		z-index: 9999;
		border: 0;
		font-size: 12px;
		line-height: 1.42857143 !important;
		letter-spacing: 1px;
		font-family: Montserrat, sans-serif;
	}
	.navbar {
		list-style-type: none;
		margin-bottom: 0;
		margin-right: 0;
		background-color: #6B8E23;
		z-index: 9999;
		border: 0;
		font-size: 25px !important;
		line-height: 1.42857143 !important;
		letter-spacing: 1px;
		border-radius: 0;
		font-family: Montserrat, sans-serif;
	}
	.navbar li a, .navbar .navbar-brand {
		color: #fff !important;
	}
	.navbar-nav li a:hover, .navbar-nav li.active a {
		color: #6B8E23 !important;
		background-color: #fff !important;
	}
	.navbar-default .navbar-toggle {
		border-color: transparent;
		color: #fff !important;
	}
	.active {
		background-color: #4CAF50;
		color: white;
	} 
	h1 {
		text-align: center;
		font-family: "Arial Black", Gadget, sans-serif;
		font-size: 28px !important;
		color: #fff !important;
	} 
</style>
</head>
<body> <!-- navigation bar information -->
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="index.php">Home</a></li>
				<li><a href="about.php">About Us</a></li>
				<li><a href="importance.php">Why Recycle?</a></li>
			</ul>
		</div>
	</div>

</nav>
    <br>
<br>
<br>
<!-- adds photo of the team here-->
<div class="image">
	<p style="text-align:center;"><img width="50%" alt="Group Photo" src="http://c1.staticflickr.com/2/1933/31734868998_c2c8f6467a_h.jpg"></p>
</div>

<!-- Creating boxes to include personal info about each person-->
<div class="container" align= "center">
		<div class="row">
			<div class="column" style="background-color:#6B8E23;">
			<h1>RecyclePedia Team</h1>
                <h2>We are a group of 4 passionate students who want to raise awareness about recycling. Sometimes, the easiest way to convince someone to recycle is to show them how easy it is and help them integrate recycling into their lives. The current recycling policies of different cities are very difficult to find or understand. As a team, we want to make the process easier by using our programming skills to create a website that makes it easy understand recycling! </h2>
		</div>
	</div>
	<br>
<br>
<br>
<br>


</body>
</html>
