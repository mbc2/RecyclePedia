<!-- 
Theme Made By www.w3schools.com - No Copyright
RecyclePedia Application
This file creates the home page layout and allows users to search their zipcode
-->
<!DOCTYPE html>
<html lang="en">
<head>
  <title>RecylePedia Homepage</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <style>
  body {
    font: 400 55px Lato, sans-serif;
    line-height: 1.8;
    color: #818181;
  }
  /*search bar*/
  .jumbotron {
    background-color: #6B8E23;
    background-image: url(Grass.jpg);
    background-repeat:no-repeat;
    background-size:cover;
    color: #fff;
    padding: 385px 25px;
    font-family: Montserrat, sans-serif;
    text-shadow: -1px -1px black;
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
  /*helps smoothen out scrolling*/ 
  .slideanim {visibility:hidden;}
  .slide {
    animation-name: slide;
    -webkit-animation-name: slide;
    animation-duration: 1s;
    -webkit-animation-duration: 1s;
    visibility: visible;
  }
  @keyframes slide {
    0% {
      opacity: 0;
      transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      transform: translateY(0%);
    }
  }
  @-webkit-keyframes slide {
    0% {
      opacity: 0;
      -webkit-transform: translateY(70%);
    } 
    100% {
      opacity: 1;
      -webkit-transform: translateY(0%);
    }
  }
  .btn-lg {
    width: 100%;
    margin-bottom: 35px;
  }
</style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">

  <!--The navigation bar at the top of the page*/ -->
  <nav class="navbar navbar-default navbar-fixed-top">
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="index.php">Home</a></li>
        <li><a href="about.php">About Us</a></li>
        <li><a href="importance.php">Why Recycle?</a></li>
      </ul>
    </div>
  </nav>

  <!--Search Bar + search button-->
  <div class="jumbotron text-center">
    <h1>RecyclePedia</h1> 
    <p>Please enter a Zipcode</p> 
    <form action= "details.php" method="post">
      <div class="input-group">
        <input id="userInput" type="text" class="form-control" size="6" placeholder="Zip Code" name="Zip" required>
        <div class="input-group-btn">
          <button type="button" class="btn btn-danger" id="search">Search</button>
        </div>
      </div>
    </form>
  </div>

<script>
//checking to make sure input prior to doing anything else
if (document.getElementById("userInput").value != "") {
    /* on the click of search user sent to details page*/
    (document.getElementById("search")).onclick = function(){
     location.href = "details.html"
   };
   /* Allows users to hit enter in order to "push" search button*/
   var input = document.getElementById("userInput");
   input.addEventListener("keyup", function(event) {
    event.preventDefault();
    if (event.keyCode === 13) {
      document.getElementById("search").click();
    }
  });
}
</script>

<!-- US map code-->
<script src="https://www.amcharts.com/lib/3/ammap.js" type="text/javascript"></script>
<script src="https://www.amcharts.com/lib/3/maps/js/usaHigh.js" type="text/javascript"></script>
<script src="https://www.amcharts.com/lib/3/themes/light.js" type="text/javascript"></script>
<div id="chartdiv" style="width: width; height: 450px;" align="right"></div>
<div style="width: 1000px; font-size: 70%; padding: 10px 0; text-align: center; background-color: #fff; margin-top: 1px; color: #B4B4B7;">
</div>
  <script type="text/javascript">
    var map = AmCharts.makeChart("chartdiv",{
      "type": "map",
      "theme": "light",
      "panEventsEnabled" : false,
      "backgroundColor" : "#fff",
      "backgroundAlpha" : 1,
      "zoomControl": {
        "zoomControlEnabled" : false
      },
      "dataProvider" : {
        "map" : "usaHigh",
        "getAreasFromMap" : true,
        "areas" :
        []
      },
      "areas" : {
        "showAsSelected": true,
      },
      "areasSettings" : {
        "autoZoom" : false,
        "color" : "#B4B4B7",
        "selectable" : true,
        "colorSolid" : "#84ADE9",
        "selectedColor" : "#84ADE9",
        "outlineColor" : "#666666",
        "rollOverColor" : "#6B8E23",
        "rollOverOutlineColor" : "#000000",
      }
    });
  </script>
    
<h4>Click the button to get your zipcode.</h4>

    <h4><button onclick="getLocation()" class="zipbut" >Zipcode!</button></h4>

<h4 id="demo"></h4>

<script>
var x = document.getElementById("demo");
function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition, showError);
    } else { 
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}
function showPosition(position) {
    x.innerHTML = "Latitude: " + position.coords.latitude + "<br>Longitude:" + position.coords.longitude + "<br>Zipcode: 44106";
    
}
function showError(error) {
    switch(error.code) {
        case error.PERMISSION_DENIED:
            x.innerHTML = "User denied the request for Geolocation."
            break;
        case error.POSITION_UNAVAILABLE:
            x.innerHTML = "Location information is unavailable."
            break;
        case error.TIMEOUT:
            x.innerHTML = "The request to get user location timed out."
            break;
        case error.UNKNOWN_ERROR:
            x.innerHTML = "An unknown error occurred."
            break;
    }
}
</script>

  <div id="hidden_form_container" style="display:none;"></div>

  <script>
  //event that sends info to php and links user to state page
  map.addListener( "clickMapObject", function() {
    postRefreshPage(event.mapObject.title);
    location.href = "state.html";
    } 
  );
  //posting info to php
  function postRefreshPage (var newInput1) {
    var theForm;
    // Start by creating a <form>
    theForm = document.createElement('form');
    theForm.action = 'state.php';
    theForm.method = 'post';
    // Next create the <input>s in the form and give them names and values
    newInput1 = document.createElement('State');
    newInput1.type = 'hidden';
    newInput1.name = 'state';
    newInput1.value = 'value 1';
    // Now put everything together...
    theForm.appendChild(newInput1);
    // ...and it to the DOM...
    document.getElementById('hidden_form_container').appendChild(theForm);
    // ...and submit it
    theForm.submit();
}
  </script>
</body>
</html>
