<?php
$connect=mysqli_connect("localhost","root","","test");
//Insert start
if(isset($_POST["insert"]))
{
	$id =$_POST["id"];
	$name=$_POST["name"];
	$phone=$_POST["ph_number"];
	$insert="insert into test(ID,Name,Ph_Num) values('$id','$name', '$phone')";
	$result=mysqli_query($connect,$insert);
	if($result==1)
	{
		echo"Successfully insert a record!";
	}
}  
//Insert end
if(isset($_POST["select"])){

$query="SELECT * FROM test"; //ORDER BY id ASC";";
$result=mysqli_query($connect,$query);
if($result==true){
	echo "All  Registered Students List <br>";
echo "<table cellpadding=10 border='1'>
<tr>
<th>ID</th> 
<th>Name</th>
<th>Phone Number</th>
</tr>";
 if(mysqli_num_rows($result) > 0)
{
while($row = mysqli_fetch_array($result))
{	
echo "<tr>";
echo "<td style='color:black'>" . $row['ID'] ."</td>";
echo "<td style='color:black'>" . $row['Name'] . "</td>";
echo "<td style='color:black'>" . $row['Ph_Num'] . "</td>";
echo "</tr>";
}
echo "</table>";
}
} else
{
	echo "No record found!";
}
}
?>
<html>
<head>
	<title>Student Registration Form</title>
	<style type="text/css">
		body{
			text-align: center;
           font-size: 25px;
		}
		input{
			font-size: 20px;
		}
		table
		{
			margin: auto;
			font-size: 20px;
		}
	</style>
</head>
<body>
	<h2>Student's Registration Form </h2>
<form method="post"action="">
<table border="0" style="text-align:left" >
        <tr>
           <th >ID</th>
           <td><input type="text" name="id"  required></td>
         </tr>
		 <tr>
           <th>Name</th>
        <td><input type="text" name="name" ></td>
         </tr>
         <tr>
           <th >Phone Number</th>
           <td><input type="text" name="ph_number"></td>
         </tr>
		 <tr> 
		 	<td colspan="4">
		 		<input type="submit" name="insert" value="Insert">
        <input type="submit" name="select" value="Show">
		 	</td>
		 </tr> 
		 </table> 

		 <br>
</form>
</body>
</html>