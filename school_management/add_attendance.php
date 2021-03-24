<?php
	if(isset($_POST['submit'])) 
	{
    	include('connection.php');
    	$s = "INSERT INTO add_attendance (roll,fname,lname,date,attendance) VALUES";
		for($i=0;$i<$_POST['numbers'];$i++)
		{
		$s .="('".$_POST['roll'][$i]."','".$_POST['fname'][$i]."','".$_POST['lname'][$i]."','".$_POST['date'][$i]."','".$_POST['attendance'][$i]."'),";
		}
		$s = rtrim($s,",");
  		if(mysqli_query($conn,$s))
  		{
  			header("Location: student-attendence.php");
  		}
   	}

?>