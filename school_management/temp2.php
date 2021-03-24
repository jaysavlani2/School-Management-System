<?php
    include('connection.php');
    $sql = "SELECT * FROM add_student"; 
    $result = mysqli_query($conn,$sql); 
    $rows=$result->fetch_assoc(); 
?>  
<html> 
<body> 
    <?php echo $rows['fname'];?>
    &nbsp;
    <?php echo $rows['lname'];?><br>
    <?php echo $rows['shortbio'];?><br>
    Name: <?php echo $rows['fname'];?>&nbsp;
    <?php echo $rows['lname'];?><br>

    




</body> 
  
</html> 