<?php
	include("Connection.php");
	$query = "select * from add_student";
	$result = mysqli_query($conn,$query);

	echo "<table border='1'>
	<tr>
		<th>Roll</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gender</th>
		<th>Class</th>
		<th>Section</th>
		<th>Birth Date</th>
		<th>Phone</th>
		<th>E-Mail</th>
	</tr>";

	while($row = mysqli_fetch_array($result))
	{
		echo "<tr>";
		echo "<td>" . $row['roll'] . "</td>";
		echo "<td>" . $row['fname'] . "</td>";
		echo "<td>" . $row['lname'] . "</td>";
		echo "<td>" . $row['gender'] . "</td>";
		echo "<td>" . $row['class'] . "</td>";
		echo "<td>" . $row['section'] . "</td>";
		echo "<td>" . $row['bdate'] . "</td>";
		echo "<td>" . $row['phone'] . "</td>";
		echo "<td>" . $row['email'] . "</td>";
		echo "</tr>";
	}
	echo "</table>";
?>
