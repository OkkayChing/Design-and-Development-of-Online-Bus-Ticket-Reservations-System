<?php
include"connect.php";
if(isset($_GET['seat']))
{
$deleted=$_GET['seat'];
$sql = mysql_query("DELETE FROM `bus` WHERE `b_id`='$deleted'");
echo "success";

HEADER('location:admin.php');
exit();
}
 
?>

