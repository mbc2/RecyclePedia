<!--
RecyclePedia Application
This document gives the layout and setup for the About page of the website. This page gives information on each member in the group. 
-->
<!DOCTYPE html>
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
}
</style>
<script type="text/javascript">
    (function (global) {
    document.getElementById("output").value = global.localStorage.getItem("mySharedData");
}(window));
</script>

</head>
<body><!-- navigation bar information -->
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
<?php
	//Connects to the database
	 $db = mysqli_connect('localhost','root','','recyclepedia')
 	or die('Error connecting to MySQL server.');
	?>

<html>

 	<body>
            <?php
        
                // retrieve the form data by using the element's name attributes value as key 
                $zipcode = $_POST['Zip'];
			//Querys Areas
			$queryAreas = "SELECT * FROM Area";
			mysqli_query($db, $queryAreas) or die('Error querying database. ' .  mysqli_error($db));
			$areas = mysqli_query($db, $queryAreas);
        
			//Prints Area
            //Searches area to find policy 
            $flag = false;
            while ($area = mysqli_fetch_array($areas)) {
                if ($area['zipcode'] == $zipcode) {
                    $flag = true;
                    break;
                }
            }
            if ($flag == false)
                echo 'The selected zipcode does not exist in the database.';
            echo '<br /> <br /></div>';
    		
            //Querys Policies
			$queryPolicies = "SELECT * FROM Policy";
			mysqli_query($db, $queryPolicies) or die('Error querying database. ' .  mysqli_error($db));
            $policies = mysqli_query($db, $queryPolicies);
        
            //Searches policies to find matching policy ids
            while ($policyid = mysqli_fetch_array($policies)) {
                if ($policyid['policy'] == $area['policy']) {
                    break;
                }
            }
        
            //Querys Recyclables
            $queryRecyclables = "SELECT * FROM Recyclables";
            mysqli_query($db, $queryRecyclables) or die('Error querying database. ' .  mysqli_error($db));
            $recyclables = mysqli_query($db, $queryRecyclables);
            
            //Searches Recyclabes to find matching Recyclable IDs
            while ($recycleid = mysqli_fetch_array($recyclables)) {
                if ($recycleid['recycle_id'] == $policyid['recycle_id']) {
                    break;
                }
            }
        
            //Querys Landifll
            $queryLandfill = "Select * FROM Landfill";
            mysqli_query($db, $queryLandfill) or die('Error querying database. ' . mysqli_error($db));
            $trash = mysqli_query($db, $queryLandfill);
        
            //Searches Landfill to find matching material IDs
            while($landfillid = mysqli_fetch_array($trash)) {
                if ($policyid['landfill_id'] == $landfillid['landfill_id'])
                    break;
            }
        
            //Query Waste Center
            $queryWaste = "Select * FROM Waste_Center";
            mysqli_query($db, $queryWaste) or die('Error querying database. ' . mysqli_error($db));
            $waste = mysqli_query($db, $queryWaste);
            while($wasteid = mysqli_fetch_array($waste)) {
                if ($policyid['waste_center_id'] == $wasteid['waste_center_id']) {
                    break;
                }
            }
            
            
        
            //Querys Materials
			$queryMaterials = "SELECT * FROM Materials";
			mysqli_query($db, $queryMaterials) or die('Error querying database. ' .  mysqli_error($db));
            //Prints corresponding materials
			$result = mysqli_query($db, $queryMaterials);
        $list1 = '';
        $list2 = '';
        $list3 = '';
        while($row = mysqli_fetch_array($result)) {
                //Recyclables
                if ($row['material_id'] == $recycleid['R1_id'] || $row['material_id'] == $recycleid['R2_id'] || $row['material_id'] == $recycleid['R3_id'] || $row['material_id'] == $recycleid['R4_id'] || $row['material_id'] == $recycleid['R5_id'] || $row['material_id'] == $recycleid['R6_id'])
                    $list1 = $list1 . '<li>' . $row['material_name'] . ': ' . $row['method_to_break_down'] . '</li>';
                //Landfill
                if ($row['material_id'] == $landfillid['L1_id'] || $row['material_id'] == $landfillid['L2_id'] || $row['material_id'] == $landfillid['L3_id'] || $row['material_id'] == $landfillid['L4_id'] || $row['material_id'] == $landfillid['L5_id'] || $row['material_id'] == $landfillid['L6_id'] || $row['material_id'] == $landfillid['L7_id'] || $row['material_id'] == $landfillid['L8_id'] || $row['material_id'] == $landfillid['L9_id'] || $row['material_id'] == $landfillid['L10_id'] || $row['material_id'] == $landfillid['L11_id'] || $row['material_id'] == $landfillid['L12_id'] || $row['material_id'] == $landfillid['L13_id'] || $row['material_id'] == $landfillid['L14_id'])
                    $list2 = $list2 . '<li>' . $row['material_name'] . ': ' . $row['method_to_break_down'] . '</li>';
                //Waste Center
                if ($row['material_id'] == $wasteid['WC1_id'] || $row['material_id'] == $wasteid['WC2_id'] || $row['material_id'] == $wasteid['WC3_id'] || $row['material_id'] == $wasteid['WC4_id'] || $row['material_id'] == $wasteid['WC5_id'] || $row['material_id'] == $wasteid['WC6_id'] || $row['material_id'] == $wasteid['WC7_id'] || $row['material_id'] == $wasteid['WC8_id'] || $row['material_id'] == $wasteid['WC9_id'] || $row['material_id'] == $wasteid['WC4_id'] || $row['material_id'] == $wasteid['WC2_id'] || $row['material_id'] == $wasteid['WC3_id'] || $row['material_id'] == $wasteid['WC4_id'] || $row['material_id'] == $wasteid['WC10_id'] || $row['material_id'] == $wasteid['WC11_id'] || $row['material_id'] == $wasteid['WC12_id'] || $row['material_id'] == $wasteid['WC13_id'] || $row['material_id'] == $wasteid['WC14_id'] || $row['material_id'] == $wasteid['WC15_id'] || $row['material_id'] == $wasteid['WC16_id'] || $row['material_id'] == $wasteid['WC17_id'] || $row['material_id'] == $wasteid['WC18_id'] || $row['material_id'] == $wasteid['WC19_id'] || $row['material_id'] == $wasteid['WC20_id'] || $row['material_id'] == $wasteid['WC21_id'] || $row['material_id'] == $wasteid['WC22_id'] || $row['material_id'] == $wasteid['WC23_id'] || $row['material_id'] == $wasteid['WC24_id'])
                    $list3 = $list3 . '<li>' . $row['material_name'] . '</li>';
                }
              echo '</div></div>';
            
			//Closes connection to the database
			mysqli_close($db);
		?>
<h1>Welcome to  
        <?php
    echo $area['zipcode'];
    ?>
        </h1>
<div class="container">
    <div class="row">
        <div class="column" style="background-color:#6B8E23;">
            <h2>Landfill</h2>
            <div class="column2" style="background-color:#F0FFF0;">
                <ul>
                    <?php
                        echo $list2;
                        ?>
                </ul>
            </div>
        </div>
        <div class="column" style="background-color:#6B8E23;">
            <h2>Recycle</h2>
            <ul>
                    <?php
                    echo $list1;
                    ?>
            </ul>
        </div>
        <div class="column" style="background-color:#6B8E23;">
            <h2>Center</h2>
            <ul>
                <?php
                    echo $list3;
                    ?>
            </ul>
        </div>
    </div>
</div>

</body>
</html>