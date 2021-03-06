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
<link href="https://www.amcharts.com/lib/3/ammap.css" rel="stylesheet">
<script src="https://www.amcharts.com/lib/3/ammap.js" type="text/javascript"></script>
<script src="https://www.amcharts.com/lib/3/maps/js/usaHigh.js" type="text/javascript"></script>
<script src="https://www.amcharts.com/lib/3/themes/light.js" type="text/javascript"></script>
<h1 align = center> Recycling Laws by State </h1>
<div id="chartdiv" style="width: width; height: 450px;" align="right"></div>
<div style="width: 1000px; font-size: 70%; padding: 10px 0; text-align: center; background-color: #fff; margin-top: 1px; color: #B4B4B7;">
</div>
  <script type="text/javascript">
    var map = AmCharts.makeChart("chartdiv",{
      "type": "map",
      "theme": "light",
      "backgroundColor" : "#fff",
      "zoomControl": {
        "zoomControlEnabled" : false
      },
      "dataProvider" : {
        "map" : "usaHigh",
        "getAreasFromMap" : true,
        "areas" :
        [{
          "id": "US-AL",
          "description": "Alabama does not currently have any battery laws in place. "
          },
          {
          "id": "US-AK",
          "description": "Alaska does not currently have any battery laws in place."
          },
          {
          "id": "US-AZ",
          "description": "Arizona does not currently have any battery laws in place."
          },
          {
          "id": "US-AR",
          "description": "Arkansas has a lead acid battery management law that states that lead-acid batteries may not be placed in mixed municipal solid waste or disposed of except by delivery to a lead-acid battery retailer or wholesaler; collection/recycling facility; or secondary lead smelter. "
          },
          {
          "id": "US-CA",
          "description": "In California, consumers must recycle all single-use batteries, or take them to a household hazardous waste disposal facility, a universal waste handler (e.g. storage facility or broker), or an authorized recycling facility"
          },
          {
          "id": "US-CO",
          "description": "Colorado does not currently have any battery laws in place."
          },
          {
          "id": "US-CT",
          "description": "In Connecticut and Stamford, recycling is the law. Every resident, every business (including non-profits), and all public and private agencies and institutions such as colleges, hospitals, and local and state government agencies, must recycle. There is a list of materials that are said by law that people must recycle."
          },
          {
          "id": "US-DE",
          "description": "Delaware does not currently have any battery laws in place."
          },
          {
          "id": "US-FL",
          "description": "Florida's Rechargeable Battery Management Law states that municipal solid waste disposal of Ni-Cd and small sealed lead batteries is prohibited. Also, certain government agencies and industrial, communications and medical facilities are required to collect and segregate Ni-Cd and small sealed lead batteries for return to the battery supplier or collection facility designated by the battery or product manufacturer. "
          },
          {
          "id": "US-GA",
          "description": "Georgia does not currently have any battery laws in place."
          },
          {
          "id": "US-HI",
          "description": "In Hawaii, Lead-acid batteries may not be placed in mixed municipal solid waste or disposed of except by delivery to a lead-acid battery retailer or wholesaler; collection/recycling facility; or secondary lead smelter."
          },
          {
          "id": "US-ID",
          "description": "Idaho does not currently have any battery laws in place."
          },
          {
          "id": "US-IL",
          "description": "Illinois does not currently have any battery laws in place."
          },
          {
          "id": "US-IN",
          "description": "Indiana does not currently have any battery laws in place."
          },
          {
          "id": "US-IA",
          "description": "Iowa does not currently have any battery laws in place."
          },
          {
          "id": "US-KS",
          "description": "Kansas does not currently have any battery laws in place."
          },
          {
          "id": "US-KY",
          "description": "Kentucky does not currently have any battery laws in place."
          },
          {
          "id": "US-LA",
          "description": "Lousiana does not currently have any battery laws in place."
          },
          {
          "id": "US-ME",
          "description": "Maine’s Rechargeable Battery Management Law states that collection programs must be established for consumer and non-consumer Ni-Cd and small sealed lead batteries. "
          },
          {
          "id": "US-MD",
          "description": "Under Maryland’s Rechargeable Battery Management Law marketers are required to develop and implement a management program for used Ni-Cd and small sealed lead batteries and products containing non-removable batteries."
          },
          {
          "id": "US-MA",
          "description": "Massachusetts does not currently have any battery laws in place."
          },
          {
          "id": "US-MI",
          "description": "Michigan does not currently have any battery laws in place."
          },
          {
          "id": "US-MN",
          "description": "Minnesota does not currently have any battery laws in place."
          },
          {
          "id": "US-MS",
          "description": "Mississippi’s Lead Acid Battery Management Law states that disposal of a used lead-acid battery in mixed municipal solid waste is prohibited. Lead-acid batteries must be delivered to a lead-acid battery retailer or wholesaler; collection/recycling/or recovered material processing facility; or permitted secondary lead smelter."
          },
          {
          "id": "US-MO",
          "description": "Misouri does not currently have any battery laws in place."
          },
          {
          "id": "US-MT",
          "description": "Montana does not currently have any battery laws in place."
          },
          {
          "id": "US-NE",
          "description": "Nebraska does not currently have any battery laws in place."
          },
          {
          "id": "US-NV",
          "description": "Nevada does not currently have any battery laws in place."
          },
          {
          "id": "US-NJ",
          "description": "New Jersey’s Rechargeable Battery Management Law states that it is illegal to knowingly dispose of Ni-Cd and small sealed lead batteries as solid waste. Manufacturers are required to develop and submit for approval comprehensive management programs for the environmentally sound collection, transportation, recycling or proper disposal of used Ni-Cd and small sealed lead batteries. "
          },
          {
          "id": "US-NM",
          "description": "In New Mexico, no person shall dispose of lead-acid batteries at any landfill or incinerator."
          },
          {
          "id": "US-NY",
          "description": "Retailers that sell “rechargeable batteries” are required to collect used batteries of the same type from customers for recycling and post a sign on their premises indicating they do so. The law covers most dry cell, non-vehicular rechargeable batteries weighing less than twenty-five pounds, regardless of chemistry."
          },
          {
          "id": "US-NC",
          "description": "Lead-acid batteries are prohibited from placement or disposal in a landfill, incinerator, or any waste-to-energy facility. They should be delivered to a battery retailer or wholesaler; secondary lead smelter; or collection/recycling facility. "
          },
          {
          "id": "US-ND",
          "description": "In North Dakota, lead-acid batteries may not be placed in municipal waste or discarded/disposed of in a landfill. Lead-acid batteries must be accepted as trade-ins for new lead-acid batteries by any person who sells lead acid batteries at retail."
          },
          {
          "id": "US-OH",
          "description": "Ohio does not currently have any battery laws in place."
          },
          {
          "id": "US-OK",
          "description": "Oklahoma does not currently have any battery laws in place."
          },
          {
          "id": "US-OR",
          "description": "Oregon does not currently have any battery laws in place."
          },
          {
          "id": "US-PA",
          "description": "Pennsylvania does not currently have any battery laws in place."
          },
          {
          "id": "US-RI",
          "description": "Rhode Island does not currently have any battery laws in place."
          },
          {
          "id": "US-SC",
          "description": "South Carolina’s Lead Acid Battery Management Law states that no person shall knowingly place a used small sealed lead-acid battery in mixed municipal solid waste, discard, incinerate or otherwise dispose of a small sealed lead-acid battery, except by delivery to: a small sealed lead-acid battery retailer or wholesaler; a collection/recycling/or recovered material processing facility that is registered with the Department of Health and Environmental Control to accept small sealed lead-acid batteries; or a permitted secondary lead smelter. "
          },
          {
          "id": "US-SD",
          "description": "South Dakota’s Lead Acid Battery Management Law states that landfills are prohibited from accepting lead acid batteries. Any wholesaler or retailer of lead acid batteries shall accept, on a one for one exchange basis, used lead acid batteries and shall ensure the proper handling and disposal of the batteries. Additionally, there is a recycling law for rechargeable batteries with SSLA/Pb."
          },
          {
          "id": "US-TN",
          "description": "Tennessee does not currently have any battery laws in place."
          },
          {
          "id": "US-TX",
          "description": "Texas has Lead Acid Battery Management Laws that require that lead acid batteries must be delivered to a battery retailer or wholesaler; a secondary lead smelter; or a collection/recycling facility. Retailers must deliver used lead acid batteries to a battery wholesaler, secondary lead smelter, battery manufacturer for delivery to a secondary lead smelter or a collection/recycling facility."
          },
          {
          "id": "US-UT",
          "description": "Utah’s Lead Acid Battery Management Law states that all lead acid batteries shall be disposed of by delivery to a lead acid battery retailer or wholesaler, collection/recycling facility, or secondary lead smelter. Disposal in any solid waste treatment, storage or disposal facility is prohibited."
          },
          {
          "id": "US-VT",
          "description": "Vermont’s Rechargeable Battery Management Law states that government agencies and industrial, communications and medical facilities are required to collect and segregate Ni-Cd and small sealed lead batteries for return to a supplier or facility designated by the battery or product manufacturer. Mixed municipal solid waste disposal of these batteries is prohibited."
          },
          {
          "id": "US-VA",
          "description": "Virginia’s Lead Acid Battery Management Law states that lead acid batteries shall not be discarded in mixed municipal solid waste or disposed of except by delivery to a battery retailer or wholesaler, secondary lead smelter, or collection facility authorized under the laws of Virginia or the U.S.EPA. "
          },
          {
          "id": "US-WA",
          "description": "Washington does not currently have any battery laws in place."
          },
          {
          "id": "US-WV",
          "description": "The lead Acid Battery Management Law here states that it is unlawful to dispose of lead-acid batteries in a solid waste landfill in West Virginia."
          },
          {
          "id": "US-WI",
          "description": "Wisconsin’s Lead Acid Battery Management Law states that land disposal or incineration of a lead acid battery is prohibited."
          },
          {
          "id": "US-WY",
          "description": "In Wyoming, disposal of a used lead acid battery in mixed municipal solid waste is prohibited. "
          }
        ]
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
      },
      "listeners": [{
        "event": "descriptionClosed",
        "method": function(ev) {
          ev.chart.selectObject();
        }
      }]
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
