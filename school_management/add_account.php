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
		$t7 = $_POST['t7'];
		$t8 = $_POST['t8'];
		$t9 = $_POST['t9'];
		$t10 = $_POST['t10'];
		$t11 = $_POST['t11'];
		$register_query = "insert into add_account (fname,lname,admin_type,gender,bdate,religion,join_date,email,password,phone,address) values('".$t1."','".$t2."','".$t3."','".$t4."','".$t5."','".$t6."','".$t7."','".$t8."','".$t9."','".$t10."','".$t11."')";

		if(mysqli_query($conn,$register_query))
		{
			header("Location: account-settings.php");
		}
		else{
			echo "Error".mysqli_error($conn);
		}
	}
?>