<?php
$servername="localhost";
$username="root";
$password="";
$dbname="assignment";

//creating connection
$conn=new mysqli($servername,$username,$password,$dbname);

//checking connection
if($conn->connect_error)
{
    die("Connection failed: ".$conn->connect_error);
}
else
{
    $Username=$_POST["username"];
    $Password=$_POST["password"];

    $query="select User_ID from user where Username = '$Username' && Password='$Password'";
    $result=mysqli_query($conn,$query);

$result=mysqli_query($conn,$query);
    $rows=mysqli_num_rows($result);

    if($rows==1)
    {
        $_SESSION['Username']=$Username;
         echo "Login successful";
        header("Location: index.php");
    }else
    {
        include 'login.php';
    }
  }







?>
