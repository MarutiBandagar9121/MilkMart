<?php
// error_reporting(E_ALL);
// ini_set('display_errors', 1);
$host = "localhost";
$port = "5432";
$user = "postgres";
$dbname = "milkmart";
$password = "maruti9121";
// $conn = pg_connect('localhost','root','','milkmart') or die('connection failed');
$conn = pg_connect("host=$host port=$port dbname=$dbname user=$user password=$password");
if (!$conn) {
    //echo"not sucucess";
    die("Connection failed: " . pg_last_error());
}
else{
   // echo"conn sucucess";
}
// echo phpinfo();
?>
