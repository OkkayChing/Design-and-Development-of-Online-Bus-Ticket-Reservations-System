<?php
include"connect.php";
if(isset($_GET['seat']))
{
$deleted=$_GET['seat'];
$sql = mysql_query("UPDATE `booking` SET `booked`=0,`price`=0 WHERE `seat`='$deleted'");
echo "success";

HEADER('location:show_booked1.php');
exit();
}
 
?>

