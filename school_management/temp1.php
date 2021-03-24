<?php
    include('connection.php');
    $sql = "SELECT * FROM add_notice"; 
    $result = mysqli_query($conn,$sql);  
?>  
<html> 
<body> 
    <section> 
        <table> 
            <tr> 
				<th>Title</th>
                <th>Detail</th>
				<th>Post By</th>
                <th>Post Date</th>
            </tr> 
             
            <?php    
                while($rows=$result->fetch_assoc()) 
                { 
            ?> 
            <tr> 
                <td><?php echo $rows['title'];?></td> 
                <td><?php echo $rows['detail'];?></td> 
                <td><?php echo $rows['post_by'];?></td>
                <td><?php echo $rows['post_date'];?></td>
            </tr> 
            <?php 
                } 
            ?> 
        </table> 
    </section> 
</body> 
  
</html> 