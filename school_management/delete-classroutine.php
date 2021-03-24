<?php
  include 'connection.php';
  $delete = @$_GET['delete'];

  $sql = "DELETE FROM `add_classroutine` WHERE  id='$delete'";

  if ($conn->query($sql) === TRUE) {
  ?>
  <script>
    if(!alert('Classroutine deleted successfully.')){window.location = "class-routine.php";}
   
   </script>
   <?php
       } 
   else {
    ?>
     <script>
        if(!alert('Can not delete employee.Some error occured')){window.location = "delete-classroutine.php";}
   
     </script>
   <?php
   }

$conn->close();

			  
?>