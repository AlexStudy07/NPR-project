<?php
session_start();

// Grab User submitted information
$email = $_POST["users_email"];
$pass = $_POST["users_pass"];

// Connect to the database
$con = mysqli_connect("localhost","id9341405_root","Or@ng3");
$mysqli = new mysqli("localhost", "id9341405_root", "Or@ng3", "id9341405_bd");
// Make sure we connected successfully
if(! $con)
{
    die('Connection Failed'.mysql_error());
}

$result = $mysqli->query("SELECT users_id, users_email, users_role FROM users WHERE users_email = '$email' AND users_pass = '$pass'");
    
$total=$result->num_rows;
printf("Select returned %d rows.\n", $total);
    /* free result set */
   
$protocol = $_SERVER['HTTPS'] ? "https" : "http";
$url = $protocol.'://'.$_SERVER['HTTP_HOST'];
	
if($total == 1){
    // Credentials match so we create session variables
    $row = $result->fetch_assoc();
    $_SESSION['users_id'] = $row['users_id'];
    $_SESSION['users_email'] = $row['users_email'];
    $_SESSION['users_role'] = $row['users_role'];
    
    // After assigning the session variables, 
    // set the url to redirect the user to members page.    
    $url .= '/index.php';    
}
else{
    // If not, then redirect the user the login page with an error
    $url .= '/login.php?error=true';
}
 $result->close();
header("Location: $url");
exit;
?>