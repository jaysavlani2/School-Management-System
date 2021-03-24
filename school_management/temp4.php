<?php
include('connection.php');
$sql = "SELECT * FROM add_student";
if( isset($_GET['search']) ){
    $name = mysqli_real_escape_string($conn, htmlspecialchars($_GET['search']));
    $sql = "SELECT * FROM add_student WHERE fname ='$name'";
}
$result = $conn->query($sql);
?>
<!DOCTYPE html>
<html>
<head>
<title>Basic Search form using mysqli</title>
<link rel="stylesheet" type="text/css"
href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<div class="container">
<label>Search</label>
<form action="" method="GET">
<input type="text" placeholder="Type the name here" name="search">&nbsp;
<input type="submit" value="Search" name="btn" class="btn btn-sm btn-primary">
</form>
<h2>List of students</h2>
<table class="table table-striped table-responsive">
<tr>
<th>First name</th>
<th>Lastname</th>
<th>Gender</th>
<th>Bdate</th>
<th>Roll</th>
</tr>
<?php
while($row = $result->fetch_assoc()){
    ?>
    <tr>
    <td><?php echo $row['fname']; ?></td>
    <td><?php echo $row['lname']; ?></td>
    <td><?php echo $row['gender']; ?></td>
    <td><?php echo $row['bdate']; ?></td>
    <td><?php echo $row['roll']; ?></td>
    </tr>
    <?php
}
?>
</table>
</div>
</body>
</html>