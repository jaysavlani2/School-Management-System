<?php
  include 'connection.php';
  $delete = @$_GET['delete'];

  $sql = "DELETE FROM `add_subject` WHERE  id='$delete'";

  if ($conn->query($sql) === TRUE) {
  ?>
  <script>
    if(!alert(' BOOK deleted successfully.')){window.location = "all-subject.php";}
   
   </script>
   <?php
       } 
   else {
    ?>
     <script>
        if(!alert('Can not delete book .Some error occured')){window.location = "delete-subject.php";}
   
     </script>
   <?php
   }

$conn->close();

			  
?>