
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 

            "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf8_general_ci">
<title>Network problem reports-Modified</title>
</head>
<body>
<?php 
session_start();
if (!(isset($_SESSION['users_role']))){
    header ("Location: all_reports.php");
    exit();
}
else{
    switch($_SESSION['users_role']){

        case 'admin':

            include('admin_page.php');

            break;

        case 'user':

            include('all_reports.php');

            break;

    }
}
?>
</body>
</html>