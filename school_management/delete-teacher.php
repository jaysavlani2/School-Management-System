<?php
  include 'connection.php';
  $delete = @$_GET['delete'];

  $sql = "DELETE FROM `add_teacher` WHERE  id='$delete'";

  if ($conn->query($sql) === TRUE) {
  ?>
  <script>
    if(!alert('Teacher deleted successfully.')){window.location = "all-teacher.php";}
   
   </script>
   <?php
       } 
   else {
    ?>
     <script>
        if(!alert('Can not delete teacher.Some error occured')){window.location = "delete-teacher.php";}
   
     </script>
   <?php
   }

$conn->close();

			  
?>