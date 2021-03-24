<?php
	
	include 'connection.php';

	if(isset($_POST['b1']))
	{
		$t1 = $_POST['t1'];
		$t2 = $_POST['t2'];
		$t3 = $_POST['t3'];
		$t4 = $_POST['t4'];
		$register_query = "insert into add_notice (title,detail,post_by,post_date) values('".$t1."','".$t2."','".$t3."','".$t4."')";

		if(mysqli_query($conn,$register_query))
		{
			header("Location: notice-board.php");
		}
		else{
			echo "Error".mysqli_error($conn);
		}
	}
?>