<html>
<?php
	$sn=$_GET['sn'];
	$stn=$_GET['stn'];
	$fn=$_GET['fn'];
	$dob=$_GET['dob'];
	$gender=$_GET['gen'];
	$attendence=$_GET['attendence'];
	$assignment=$_GET['assignment'];
	$ct=$_GET['ct'];
	$midterm=$_GET['midterm'];
	$final=$_GET['final'];
	$total=$attendence+$assignment+$ct+$midterm+$final;
	$remark1=0;
	$remark2=0;
	$remark3=0;
	$remark4=0;
	$remark5=0;
	$count=0;
	$s="a";
	$gen='';
	$min=35;
	$max=100;
	$attendence='attendence';
	$assignment='assignment';
	$ct='ct';
	$midterm='midterm';
	$final='final';

	if($gender=="Male"){
		$gen="S/o";
	}else if($gender=="Female"){
		$gen="D/o";
	}
	if($attendence<35){
		$remark1="<font color='red'>*</font>";
		$count++;
		$s=$s.' and '.$hin;
	}else if($attendence>79){
		$remark1="<font color='green'>D</font>";
	}else{
		$remark1='-';
	}
	
	if($assignment<35){
		$remark2="<font color='red'>*</font>";
		$count++;
		$s=$s.' and '.$eng;
	}else if($assignment>79){
		$remark2="<font color='green'>D</font>";
	}else{
		$remark2='-';
	}

	if($ct<35){
		$remark3="<font color='red'>*</font>";
		$count++;
		$s=$s.' and '.$math;
	}else if($ct>79){
		$remark3="<font color='green'>D</font>";
	}else{
		$remark3='-';
	}

	if($midterm<35){
		$remark4="<font color='red'>*</font>";
		$count++;
		$s=$s.' and '.$phy;
	}else if($midterm>79){
		$remark4="<font color='green'>D</font>";
	}else{
		$remark4='-';
	}
	
	if($final<35){
		$remark5="<font color='red'>*</font>";
		$count++;
		$s=$s.' and '.$chem;
	}else if($final>79){
		$remark5="<font color='green'>D</font>";
	}else{
		$remark5='-';
	}

	$s=str_replace('a and', '', $s);
	if($count>2){
		$s="Fail";
	}else if($count==0){
		$s="Pass";
	}else if($count<=2){
		$s="Compartment in ".' '.$s;
	}
?>

<center>
	<table border=1>
		<tr>
		<td>
			<table  width=100%>
			<tr>
				<td>
					<img src='images.jpg' width=120 height=120>
				</td>
				<td>
					<b><font size='5'>TMU Result</font>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><br><br>
					<font size='4' color='grey'><b><?php  echo "$sn"; ?></b></font>
				</td>
			</tr>
			</table>
		</td>
		</tr>
		<tr>
		<td>
			<table width=100%>
				<tr><td><font size='4'><?php echo "$stn"; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo "$gen";?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo" Mr.$fn";?></font></td></tr>
				<tr><td><font size='4'><?php echo "$dob"?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo"$gender";?></font></td></tr>
			</table>
		</td>
		</tr>
		<tr>
		<td>
			<table border=1 width=100%>
				<tr><th><i>Subject code</i></th><th><i>Subject name</i></th><th><i>Min marks</i></th><th><i>Max marks</i></th><th><i>Marks obtained</i></th><th><i>Remark</i></th></tr>
				<tr><td>101</td><td>attendence</td><td>35</td><td>100</td><td><?php echo "$attendence"; ?></td><td><?php echo "$remark1"; ?></td></tr>
				<tr><td>102</td><td>assignment</td><td>35</td><td>100</td><td><?php echo "$assignment"; ?></td><td><?php echo "$remark2"; ?></td></tr>
				<tr><td>103</td><td>ct</td><td>35</td><td>100</td><td><?php echo "$ct"; ?></td><td><?php echo "$remark3"; ?></td></tr>
				<tr><td>104</td><td>midterm</td><td>35</td><td>100</td><td><?php echo "$midterm"; ?></td><td><?php echo "$remark4"; ?></td></tr>
				<tr><td>105</td><td>final</td><td>35</td><td>100</td><td><?php echo "$final"; ?></td><td><?php echo "$remark5"; ?></td></tr>
				<tr><td></td><td></td><td><b>Total</b></td><td><b>400</b></td><td><b><?php echo "$total"; ?><b></td><td></td></tr>
			</table>
		</td>
		</tr>

		<tr>
		<td>
			<table>
				<tr><td><b><font size='4'>Result:&nbsp;&nbsp;&nbsp;&nbsp;<?php echo "$s"; ?></font></b></td></tr>
			</table>
		</td>
		</tr>
	</table>
</center>

</html>
