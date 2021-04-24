<html>
<body>
<?PHP
	session_start();
	session_destroy();


echo '<script type="text/javascript">'; 
echo 'alert("you are logged out.");'; 
echo 'window.location.href = "all_reports.php";';
echo '</script>';
?>
</body>
</html>