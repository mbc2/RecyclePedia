<?php
	//Connects to the database
	 $db = mysqli_connect('localhost','root','','recyclepedia')
 	or die('Error connecting to MySQL server.');
	?>

<html>
	 <head>
		<style>
			.greeting {
				color: red;
			}
		</style>
	 </head>
 	<body>
        <input type="zipcode" class="form-control" size="50" placeholder="Zip Code" required>
		<?php
            $zipcode = $_POST['zipcode'];
			//Querys Areas
			$queryAreas = "SELECT * FROM Area";
			mysqli_query($db, $queryAreas) or die('Error querying database. ' .  mysqli_error($db));
			$areas = mysqli_query($db, $queryAreas);
        
			//Prints Area
            //Searches area to find policy 
            $flag = false;
            while ($area = mysqli_fetch_array($areas)) {
                if ($area['zipcode'] == '2109') {
                    echo '<div class="Greeting">Welcome to ';
                    echo $area['zipcode'];
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
			while($row = mysqli_fetch_array($result)) {
                //Recyclables
                if ($row['material_id'] == $recycleid['R1_id'] || $row['material_id'] == $recycleid['R2_id'] || $row['material_id'] == $recycleid['R3_id'] || $row['material_id'] == $recycleid['R4_id'] || $row['material_id'] == $recycleid['R5_id'] || $row['material_id'] == $recycleid['R6_id'])
                    echo $row['material_name'] . ': ' . $row['method_to_break_down'] . '<br />';
                //Landfill
                if ($row['material_id'] == $landfillid['L1_id'] || $row['material_id'] == $landfillid['L2_id'] || $row['material_id'] == $landfillid['L3_id'] || $row['material_id'] == $landfillid['L4_id'] || $row['material_id'] == $landfillid['L5_id'] || $row['material_id'] == $landfillid['L6_id'] || $row['material_id'] == $landfillid['L7_id'] || $row['material_id'] == $landfillid['L8_id'] || $row['material_id'] == $landfillid['L9_id'] || $row['material_id'] == $landfillid['L10_id'] || $row['material_id'] == $landfillid['L11_id'] || $row['material_id'] == $landfillid['L12_id'] || $row['material_id'] == $landfillid['L13_id'] || $row['material_id'] == $landfillid['L14_id'])
                    echo $row['material_name'] . ': ' . $row['method_to_break_down'] . '<br />';
                //Waste Center
                if ($row['material_id'] == $wasteid['WC1_id'] || $row['material_id'] == $wasteid['WC2_id'] || $row['material_id'] == $wasteid['WC3_id'] || $row['material_id'] == $wasteid['WC4_id'] || $row['material_id'] == $wasteid['WC5_id'] || $row['material_id'] == $wasteid['WC6_id'] || $row['material_id'] == $wasteid['WC7_id'] || $row['material_id'] == $wasteid['WC8_id'] || $row['material_id'] == $wasteid['WC9_id'] || $row['material_id'] == $wasteid['WC4_id'] || $row['material_id'] == $wasteid['WC2_id'] || $row['material_id'] == $wasteid['WC3_id'] || $row['material_id'] == $wasteid['WC4_id'] || $row['material_id'] == $wasteid['WC10_id'] || $row['material_id'] == $wasteid['WC11_id'] || $row['material_id'] == $wasteid['WC12_id'] || $row['material_id'] == $wasteid['WC13_id'] || $row['material_id'] == $wasteid['WC14_id'] || $row['material_id'] == $wasteid['WC15_id'] || $row['material_id'] == $wasteid['WC16_id'] || $row['material_id'] == $wasteid['WC17_id'] || $row['material_id'] == $wasteid['WC18_id'] || $row['material_id'] == $wasteid['WC19_id'] || $row['material_id'] == $wasteid['WC20_id'] || $row['material_id'] == $wasteid['WC21_id'] || $row['material_id'] == $wasteid['WC22_id'] || $row['material_id'] == $wasteid['WC23_id'] || $row['material_id'] == $wasteid['WC24_id'])
                    echo $row['material_name'] . ': ' . $row['method_to_break_down'] . '<br />';
                }
            
            
            //Prints Materials and Disposal Method
			//while ($row = mysqli_fetch_array($result)) {
			 //echo $row['material_name'] . ': ' . $row['method_to_break_down'] .'<br />';
			//}
			//Closes connection to the database
			mysqli_close($db);
		?>

	</body>
</html>