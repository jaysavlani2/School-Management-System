<?php
	$server = "localhost";
	$user = "root";
	$pass = "";
	$dbname = "school_management";

	$conn =  mysqli_connect($server,$user,$pass,$dbname);

	if(!($conn))
	{
		die("Connection Failed::".mysqli_connect_error());
	}

?>