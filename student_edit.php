<?php 
			 
require_once('db.php');
if(isset($_REQUEST['edit_std_name'])){
	
	$edit_id = $_REQUEST['edit_std_name'];

$selectInfo = "SELECT * FROM student WHERE std_id=$edit_id";
$runInfo = mysqli_query($conn,$selectInfo);

while($getData = mysqli_fetch_array($runInfo)){
	
?>

<!DOCTYPE HTML>
<html>
	<head>
		<title>website</title>
		<link rel="stylesheet" href="style.css">
		
	</head>
	<body>
			<ul>
	   <li><a href="index.php">home</a></li>
      <li><a href="course.php">course</a></li>
      <li><a href="teacher.php">teacher</a></li>
      <li><a href="batch.php">batch</a></li>
      <li><a href="student.php">student</a></li>
      <li><a href="register.php">register</a></li>
	  <li><a href="teaching.php">teaching</a></li>
	  <li><a href="offered.php">offered</a></li>
	  <li><a href="retakes.php">retakes</a></li>
	  <li><a href="evaluates.php">evaluates</a></li>
			</ul>
			
			<h2>Update Teacher Information</h2>
			
			<form action="" style "margin-left:170px;" method="post">
			<input type="hidden" name="edit_id" value="<?php echo $edit_id;?>">
				student Name: </br>
				<input type= "text" name="std_name" placeholder="Enter Your teacher std_name" value="<?php echo $getData['std_name'];?>"> </br>
				<br>
				student Roll: </br>
				<input type= "text" name="std_roll" placeholder="Enter Your std_roll" value="<?php echo $getData['std_roll'];?>"> </br>
				<br>
				student Batch: </br>
				<input type= "text" name="std_batch" placeholder="Enter Your std_batch" value="<?php echo $getData['std_batch'];?>"> </br>
				<br>
				<input type= "submit" value="Update Teacher Name " name="edit_Data">
			 <form>
			 
	<?php
	}}
	?>
	
<?php

//require_once('dbconn.php');

	if(isset($_REQUEST['edit_Data'])){
	
	$edid_ID 		= $_REQUEST['edit_id'];
	$std_name 		= $_REQUEST['std_name'];
	$std_name 		= $_REQUEST['std_roll'];
	$std_name 		= $_REQUEST['std_batch'];
	
$update_user = "UPDATE teacher SET std_name='$std_name'WHERE teacher_id='$edit_id'";
	
	$run_user = mysqli_query($conn,$update_user);
		
		
	
	if ($run_user==true){
		
		echo "<script>
    window.alert('Succesfully Updated');
    window.location.href='student.php';
    </script>";
		
		
	}
	
	
}

?>			 			 
</body>
</html>
		
		
		