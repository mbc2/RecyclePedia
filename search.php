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
		<?php
			//Querys Areas
			$queryAreas = "SELECT * FROM Area";
			mysqli_query($db, $queryAreas) or die('Error querying database. ' .  mysqli_error($db));
			
			//Prints the query to the website
            //Areas
			$areas = mysqli_query($db, $queryAreas);
			$area = mysqli_fetch_array($areas);

			//Prints Area
			echo '<div class="Greeting">Welcome to ';
            //Searches area to find policy 
            while ($area = mysqli_fetch_array($areas)) {
                if ($area['zipcode'] = '45201') {
                    echo $area['zipcode'];
                    break;
                }
            }
            echo '<br /> <br /></div>';
    		
            //Querys Policies to find Recycleables, Landfill, Center
			$queryPolicies = "SELECT * FROM Policy";
			mysqli_query($db, $queryPolicies) or die('Error querying database. ' .  mysqli_error($db));
            $policies = mysqli_query($db, $queryPolicies);
            //$policyid = mysqli_fetch_array($policies);
            while ($policyid = mysqli_fetch_array($policies)) {
                if ($policyid['policy'] = $area['policy']) {
                    echo $policyid['policy'];
                    break;
                }
            }
        
            //Querys Recyclables
            $queryRecyclables = "SELECT * FROM Recyclables";
            mysqli_query($db, $queryRecyclables) or die('Error querying database. ' .  mysqli_error($db));
            $recyclables = mysqli_query($db, $queryRecyclables);
            //$recycleid = mysqli_fetch_array($recyclables));
            while ($recycleid = mysqli_fetch_array($recyclables)) {
                if ($recycleid['recycle_id'] = $policyid['recycle_id']) {
                    echo $recycleid['recycle_id'];
                    break;
                }
            }
        
            //Querys Materials
			$queryMaterials = "SELECT * FROM Materials";
			mysqli_query($db, $queryMaterials) or die('Error querying database. ' .  mysqli_error($db));
            
            //Materials
			$result = mysqli_query($db, $queryMaterials);
			$row = mysqli_fetch_array($result);
            
            //Prints Materials and Disposal Method
			while ($row = mysqli_fetch_array($result)) {
			 echo $row['material_name'] . ': ' . $row['method_to_break_down'] .'<br />';
			}
			//Closes connection to the database
			mysqli_close($db);
		?>

	</body>
</html>