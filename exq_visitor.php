<?php
include 'config.php';
$q = intval($_GET['q']);
include 'config.php';
  $stmt = $db->prepare("select * from npr where id=$q");
  $stmt->execute();
  $row = $stmt->fetch() 
?>

<form action="insert.php" method="post">
<div class="form-row">
     <div class="form-group col-md-1">
      <label for="inputTitle4">Id:</label>
      <input  class="form-control" name="id" id="inputTitle4" placeholder="Title" value="<?php echo htmlspecialchars($row['id']); ?> " readonly> 
	</div>
    <div class="form-group col-md-7">
      <label for="inputTitle4">Title</label>
      <input  class="form-control" name="title" id="inputTitle4" placeholder="Title" value="<?php echo htmlspecialchars($row['name']); ?>" readonly> 
	</div>
	
	<div class="form-group col-md-2">
	  <label for="inputStatus4">Status</label>
	  <select name="status" class="form-control" value="" readonly>
	  <option value="<?php echo $row['status'] ?>" selected hidden><?php echo $row['status'] ?></option>
      <option value="Processing">Processing</option>
	  <option value="Solved" >Solved</option>
      </select>
	  
    </div>
	
	<div class="form-group col-md-2">
	  <label for="inputStatus4">Category</label>
	   <select name="type" class="form-control" readonly>
       <option value="<?php echo $row['type'] ?>" selected hidden><?php echo $row['type'] ?></option>
	   <option value="Mobile">Mobile</option>
	   <option value="B2B">B2B</option>
	   <option value="Fix & TV">Fix & TV</option>
	   <option value="Fix in House">Fix in House</option>	
       </select>
    </div>
  </div>
  
    <div class="form-row">
       <div class="form-group col-md-6">
       <label for="inputArea">Affected service:</label>
       <input type="text" name="services" class="form-control" id="inputService" value="<?php echo htmlspecialchars($row['aff_serv']); ?>" readonly>
       </div>
	   <div class="form-group col-md-3">
	   <label for="inputCity">City:</label>
       <input type="text" name="city" class="form-control" id="inputArea" value="<?php echo $row['city'];?>" readonly>
       </div>
	   <div class="form-group col-md-3">
	   <label for="inputCity">Street:</label>
       <input type="text" name="street" class="form-control" id="inputArea" value="<?php echo $row['street']; ?>" readonly>
       </div>
	</div>
	
	<div class="form-row">
	   <div class="form-group col-md-6">
       <label  for="inputPCause">Probable cause:</label>
       <input type="text" name="p_cause" class="form-control" id="inputPCause" value="<?php echo htmlspecialchars($row['p_cause']); ?>" readonly>
       </div>
	</div>

    <div class="form-row">
	   <div class="form-group col-md-3">
       <label for="inputStart">Start of problem:</label>
       <input  class="form-control" id="inputStart" type="datetime" name="date" value="<?php echo $row['start'];?>" readonly>
       </div>
	   <div class="form-group col-md-3">
       <label for="inputEtr">Estimated time to resolve:</label>
       <input  class="form-control" id="inputEtr" type="datetime" name="date" value="<?php echo $row['etr'];?>" readonly>
       </div>
	</div>
	<div class = "modal-footer">
            <button type = "button" class = "btn btn-default" data-dismiss = "modal">
               Close
            </button>
            
            <input type="submit" class = "btn btn-dark" value="Submit"  />
         </div>
</form>





