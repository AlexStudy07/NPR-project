<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "id9341405_bd";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);
$db = new PDO("mysql:host=localhost;dbname=id9341405_bd","root","");
                
// Check connection
if (!$conn) {
die("Connection ti database failed: " . mysqli_connect_error());
}
//echo "Connected successfully";
?>