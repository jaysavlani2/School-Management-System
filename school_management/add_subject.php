<?php
	
	include 'connection.php';

	if(isset($_POST['b1']))
	{
		$t1 = $_POST['t1'];
		$t2 = $_POST['t2'];
		$register_query = "insert into add_subject (subject_name,class) values('".$t1."','".$t2."')";

		if(mysqli_query($conn,$register_query))
		{
			header("Location: all-subject.php");
		}
		else{
			echo "Error".mysqli_error($conn);
		}
	}
?>