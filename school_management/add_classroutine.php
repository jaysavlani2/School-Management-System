<?php
	
	include 'connection.php';

	if(isset($_POST['b1']))
	{
		$t1 = $_POST['t1'];
		$t2 = $_POST['t2'];
		$t3 = $_POST['t3'];
		$t4 = $_POST['t4'];
		$t5 = $_POST['t5'];
		$t6 = $_POST['t6'];
		
		$register_query = "insert into add_classroutine (teacher_name,subject_name,class,st,et,date) values('".$t1."','".$t2."','".$t3."','".$t4."','".$t5."','".$t6."')";

		if(mysqli_query($conn,$register_query))
		{
			header("Location: class-routine.php");
		}
		else{
			echo "Error".mysqli_error($conn);
		}
	}
?>