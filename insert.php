<html>
<body>
<?php
include 'config.php';
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "UPDATE npr SET name='$_POST[title]', status='$_POST[status]', type='$_POST[type]', aff_serv='$_POST[services]', city='$_POST[city]', street='$_POST[street]', p_cause='$_POST[p_cause]' WHERE id='$_POST[id]'";

if ($conn->query($sql) === TRUE) {
echo '<script type="text/javascript">'; 
echo 'alert("Changes were performed, you will be redirected to All reports page.");'; 
echo 'window.location.href = "all_reports.php";';
echo '</script>';
} else {
    echo '<script type="text/javascript">'; 
    echo 'alert("An error occurred, you will be redirected to All reports page.");'; 
    echo 'window.location.href = "all_reports.php";';
    echo '</script>';
}

$conn->close();
    
	
?>

</body>
</html>