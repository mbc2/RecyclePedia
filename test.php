<?php
	//Connects to the database
	 $db = mysqli_connect('localhost','root','','recyclepedia')
 	or die('Error connecting to MySQL server.');
	?>

<html>
	 <head>
		<style>
			#greeting {
				color: red;
			}
	 </head>
 	<body>
		<?php
			//Querys Materials
			$queryMaterials = "SELECT * FROM Materials";
			mysqli_query($db, $queryMaterials) or die('Error querying database. ' .  mysqli_error($db));
			//Querys Policies
			$queryPolicies = "SELECT * FROM Policy";
			mysqli_query($db, $queryPolicies) or die('Error querying database. ' .  mysqli_error($db));
			//Querys Areas
			$queryAreas = "SELECT * FROM Area";
			mysqli_query($db, $queryAreas) or die('Error querying database. ' .  mysqli_error($db));
			
			//Prints the query to the website
			$result = mysqli_query($db, $queryMaterials);
			$row = mysqli_fetch_array($result);
			$areas = mysqli_query($db, $queryAreas);
			$area = mysqli_fetch_array($areas);

			//Prints Areas
			echo '<div class="Greeting">Welcome to ';
			echo $area['zipcode'];
			echo '<br /> <br /></dv>';
			//Prints Materials and Disposal Method
			while ($row = mysqli_fetch_array($result)) {
			 echo $row['material_name'] . ': ' . $row['method_to_break_down'] .'<br />';
			}

			//Closes connection to the database
			mysqli_close($db);
		?>

	</body>
</html>