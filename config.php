<?php
$servername = "localhost";
$username = "id9341405_root";
$password = "Or@ng3";
$database = "id9341405_bd";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);
$db = new PDO("mysql:host=localhost;dbname=id9341405_bd","id9341405_root","Or@ng3");
                
// Check connection
if (!$conn) {
die("Connection ti database failed: " . mysqli_connect_error());
}
//echo "Connected successfully";
?>