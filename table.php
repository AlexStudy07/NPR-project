
 <div  >
 <b><h3><?php if (empty($_GET)) {echo 'All';} else {echo $_GET['rep'];} ?> Problem Reports</h3></b>
        <table id="mytable" class="w3-table-all">
            <thead>
                <tr>
                 <th class="skip-filter">Id</th>
                 <th class="skip-filter">Name</th>
                 <th>Type</th>
				 <th>Status</th>
                 <th>City</th>
                 <th class="skip-filter">Street</th>
                </tr>
            </thead>
            <tbody>
                <?php
                include 'config.php';
				
				if (empty($_GET)){
					$stmt = $db->prepare("select * from npr");
				
				}
				else {
					$type=$_GET['rep'];
					$stmt = $db->prepare("select * from npr where type='$type'");
				}
				//$stmt = $db->prepare("select * from npr");
                $stmt->execute();
                while($row = $stmt->fetch()){
                ?>
                <tr >
                    <td width="5%"><?php echo $row['id'] ?></td>
                    <td width="50%"><a href="#" name="<?php echo $row['id']?>" onclick="showUser(this.name)" class="pr" data-toggle = "modal" data-target = "#myModal"><?php echo $row['name']?></a></td>
                    <td width="10%"><?php echo $row['type'] ?></td>
                    <td width="10%"><?php echo $row['status'] ?></td>
					<td width="10%"><?php echo $row['city'] ?></td>
				<td width="15%" maxlength="10" size="10"><input class="td_text" type="text" value="<?php echo $row['street'] ?> " readonly></td>
                </tr>  
                <?php
                }
				
              include 'modal.php'; 
?>
            </tbody>
        </table>

    </div>

    <script src="script/jquery.min.js"></script>
    <script src="script/ddtf.js"></script>
    <script>
        $('#mytable').ddTableFilter();
    </script>