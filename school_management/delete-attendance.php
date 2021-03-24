<?php
  include 'connection.php';
  $delete = @$_GET['delete'];

  $sql = "DELETE FROM `add_attendance` WHERE  id='$delete'";

  if ($conn->query($sql) === TRUE) {
  ?>
  <script>
    if(!alert('Attendance deleted successfully.')){window.location = "student-attendence.php";}
   
   </script>
   <?php
       } 
   else {
    ?>
     <script>
        if(!alert('Can not delete employee.Some error occured')){window.location = "delete-attendance.php";}
   
     </script>
   <?php
   }

$conn->close();

			  
?>