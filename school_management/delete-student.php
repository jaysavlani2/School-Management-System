<?php
  include 'connection.php';
  $delete = @$_GET['delete'];

  $sql = "DELETE FROM `add_student` WHERE  roll='$delete'";

  if ($conn->query($sql) === TRUE) {
  ?>
  <script>
    if(!alert('Student deleted successfully.')){window.location = "all-student.php";}
   
   </script>
   <?php
       } 
   else {
    ?>
     <script>
        if(!alert('Can not delete employee.Some error occured')){window.location = "delete-student.php";}
   
     </script>
   <?php
   }

$conn->close();

			  
?>