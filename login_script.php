<?php
include 'connect.php';
 
$userName    =    mysql_real_escape_string($_POST['txtUser']);
$password    =    mysql_real_escape_string($_POST['txtPassword']);

$password    =    md5($password);


 
if(isset($_POST['btnLogin'])) 
{
$query  =    "select * from users where u_name='$userName' and u_pass='$password'";
$res    =    mysql_query($query);
$count	=	mysql_num_rows($res);
if($count==1){

  session_start(); 
  $_SESSION['user']=$userName;
  header("location:qsearch.php");
} 
else 
{
header("location:wrong_login.php");
 
}
}
 
?>