<?php

if (session_status() == PHP_SESSION_NONE) {
    session_start();
}
if (!(isset($_SESSION['users_role']))){
	echo '<label> Hello: Guest</label></br>';
	echo '<a href="login.php">Log in as admin</a>';
}
else{
	
    include ('get_name.php');
    echo '<a href="logout.php">Log out</a>';
   

    }

?>