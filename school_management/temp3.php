<?php 
  date_default_timezone_set('Asia/Kolkata');
  $date = date("Y-m-d");
  $ThisDate = date("d-m-Y", strtotime($date));
?>
<?php
  include('connection.php');
  $result = mysqli_query($conn,"SELECT `date` FROM `add_attendance` WHERE date = '$ThisDate'");
  $row = mysqli_fetch_array($result);
  $total = $row[0];
  $today = strval($total);
  if ($total == $ThisDate)
  {
?>
    <h3>Attendance for Today (<?php echo $ThisDate;  ?>) has been taken.</h3>
<?php
  }
  else
  {
?>
    <h3>Today is : <?php echo $ThisDate;  ?></h3>
<?php 
  include('connection.php');
  $result = mysqli_query($conn,"select count(1) FROM add_student");
  $row = mysqli_fetch_array($result);
  $total = $row[0];
?>
<table>
  <thead>
    <tr>
      <th>Roll</th>
      <th>Name</th>
      <th>Present</th>
      <th>Absent</th>
     </tr>
  </thead>
  <tbody>
<form action="add_attendance.php" method="post">
<?php
  include('connection.php');
  $sql="SELECT * FROM `add_student` ";
  $record = mysqli_query($conn,$sql);
  while($post=mysqli_fetch_assoc($record)) 
  {
?>
<form action="add_attendance.php" method="post">
  <input type="hidden" value="<?php echo $total;?>" name="numbers" />
  <input type="hidden" value="<?php echo $post['roll'];?>" name="roll[]" />
  <input type="hidden" value="<?php echo $post['fname'];?>" name="fname[]" />
  <input type="hidden" value="<?php echo $post['lname'];?>" name="lname[]" />
    <tr>
      <td><?php echo $post['roll']; ?></td>
      <td><?php echo $post['fname']; ?> &nbsp;<?php echo $post['lname']; ?></td>
      <td><label><input type="checkbox" name="attendance[]" value="Present">Present</label></td>
      <td><label><input type="checkbox" name="attendance[]" value="Abscent">Absent</label></td>
    </tr>
<?php     
  date_default_timezone_set('Asia/Kolkata');
  $date = date("Y-m-d");
  $ThisDate = date("d-m-Y", strtotime($date));
?>
  <input type="hidden" value="<?php echo $ThisDate;?>" name="date[]" />
<?php } ?>
  </tbody>
</table>
<button type="submit" name="submit" value="submit">submit</button>
</form> 
<?php } ?>