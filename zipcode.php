<?php
// retrieve the form data by using the element's name attributes value as key 
 $zipcode = $_POST['Zip'];
?>

<html>
<head>
 <title>RecylePedia Details Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">

 <style>
 .container{
    margin-right:5%;
    margin-left:5%;
    width: auto;
}
.column {
    float: left;
    width: 30%;
    padding: 10px;
    border-style: solid;
    border-radius: 10px;
    border-width: 2px 1px 2px 1px;
    margin-right: 10px;
    overflow: auto;    
}
.column2 {
    float: left;
    padding: 10px;
    border-style: solid;
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
h1 {
    text-align: center;
}
body {
    background-color: #F0FFF0;
}
/*navigation bar*/
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
/*will stack sections when acreen size decreased*/
@media (max-width: 600px) {
    .column {
        width: 100%;
    }
    .navbar-collapse {
        width: 100%;
    }
}
</style>
</head>
<body ><!-- navigation bar information -->
  <nav class="navbar navbar-default navbar-fixed-top">
     <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav navbar-right">
            <li><a href="index.html" class="active">Home</a></li>
            <li><a href="about.html">About Us</a></li>
            <li><a href="importance.html">Why Recycle?</a></li>
        </ul>
    </div>
</nav>
<br>
<br> 

<h1>Welcome to <?php echo $zipcode?></h1>
<div class="container">
    <div class="row">
        <div class="column" style="background-color:#6B8E23;">
            <h2>Landfill</h2>
            <div class="column2" style="background-color:#F0FFF0;">
                <ul>
                    <li>Insert items</li>
                </ul>
            </div>
        </div>
        <div class="column" style="background-color:#6B8E23;">
            <h2>Recycle</h2>
            <ul>
                <li>Insert items</li>
            </ul>
        </div>
        <div class="column" style="background-color:#6B8E23;">
            <h2>Center</h2>
            <ul>
                <li>Insert items</li>
            </ul>
        </div>
    </div>
</div>

</body>
</html>