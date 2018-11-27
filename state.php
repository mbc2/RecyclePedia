<?php
// retrieve the form data by using the element's name attributes value as key 
 $state = $_GET['State'];
?>

<html>
<head>
    <title>RecylePedia Importance Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
    <style>
    body {
        background-color: #F0FFF0;
        background-image: url(Grass.jpg);
        background-repeat:no-repeat;
        background-size:cover;
        margin-left: 15%;
        margin-right: 15%;
    }
    .text {
        text-align: center;
        display: block;
    }
    .column {
        float: left;
        width: 30%;
        padding: 10px;
        border-radius: 10px;
        border-width: 2px 1px 2px 1px;
        margin-right: 10px;
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
    h1 {
        text-align: center;
        font-family: "Arial Black", Gadget, sans-serif;
        font-size: 28px !important;
        color: #fff !important;
    } 
    p {
        color: #fff;
        font-family: "Trebuchet MS", Helvetica, sans-serif;
        font-size: 16px;
        text-align: center;
    }
    ul.myContainer {
        color: #fff;
        font-family: "Trebuchet MS", Helvetica, sans-serif;
        font-size: 16px;
        text-align: left;
    }
</style>
</head>
<body>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="index.html">Home</a></li>
                <li><a href="about.html">About Us</a></li>
                <li><a href="importance.html">Why Recycle?</a></li>
            </ul>
        </div>
    </nav>
    <br>
    <br>
    <br>
    <br>
    <div class="container">
        <div style="background-color:#6B8E23;">
            <h1>State:</h1>
            <ul class= "myContainer" type="square">
                <li>Stat 1</li>
                <li>Stat 2</li>
                <li>Stat 3</li>
                <li>Stat 4</li>
                <li>Stat 5</li>
            </ul>
        </div>
    </body>
    </html>