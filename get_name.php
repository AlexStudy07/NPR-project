<?php
include ('config.php');
if (session_status() == PHP_SESSION_NONE) {
session_start();	}
$id=$_SESSION['users_id'];
$get_name = $db->prepare("SELECT * FROM `users` WHERE `users_id`='$id'");	
$get_name->execute();
$result = $get_name->fetch();
?>
<div id='username'>
<label> Hello: <?php echo $result['users_fname'];?> <?php echo $result['users_lname'];?> </label>
</div>