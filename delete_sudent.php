<?php
require_once('db.php');
if(isset($_REQUEST['del_std_id'])){
	
	$delete_std_id = $_REQUEST['del_std_id'];

	$data = "DELETE  FROM student WHERE std_id='$delete_std_id'";
	mysqli_query($conn,$data);
	header("location: student.php");

}