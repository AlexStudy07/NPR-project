<?php
include ('config.php');
$sql = "CREATE TABLE IF NOT EXISTS `npr3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(100) NOT NULL DEFAULT '(no title)',
  `type` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `street` varchar(100) NOT NULL DEFAULT '(none)',
  `status` varchar(10) NOT NULL,
  `aff_serv` text,
  `priority` text,
  `p_cause` text,
  `r_cause` text,
  `start` datetime DEFAULT NULL,
  `etr` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;";

if ($conn->query($sql) === TRUE) {
    echo "Table MyGuests created successfully";
} else {
    echo "Error creating table: " . $conn->error;
}

$conn->close();
$old_name = "index2.php" ;  
  
// New Name For The File 
$new_name = "index3.php" ;  
  
// using rename() function to rename the file 
rename( $old_name, $new_name) ; 

?>
