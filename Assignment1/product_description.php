<?php
session_start();
?>

 <?php include 'navbar.php';?>

 <?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "Assignment";

$conn = new mysqli($servername, $username, $password, $dbname);

if($conn->connect_error){
die("Connection failed: ". $conn->connect_error);
} ?>

<div class="container-fluid">







<?php

$sql1 = "SELECT * from Product LIMIT 1";

$result1 = mysqli_query($conn,$sql1);

if (mysqli_num_rows($result1) > 0)
{

  ?>
<hr>
  <div class="col-md-12 align-self-center" style="background-color:white;">
      <h2 class="title text-center" style="background-color:Blue;">Product Description</h2><hr/>
      <div class="row">
<?php

while($row = mysqli_fetch_assoc($result1)){

?>


    <div class="col-md-4">
      <div class="card" style="width:310px; margin-bottom:20px;">
          <img class="card-img-top img-thumbnail img-responsive" style="height:350px; width:310px; " src="Game_Image/<?php echo $row["Image_Name"];?>" alt="<?php echo $row["Image_Alt"];?>" />
         <div class="card-body">
              <h3 class="card-title text-center" style="margin-top:-10px;">
                  <?php echo "<b>".$row["Product_Name"]."</b>";?></h3>

          </div>
      </div>
</div>
     <div class="col-sm-7 align-self-center">
							<div class="product-information"><!--/product-information-->

								<h2><?php echo $row["Product_Name"];?></h2>
								<?php echo $row["Product_Description"];?><br/>

								<span>
									<span><?php echo "US $". $row["Product_Price"];?></span><br/>
									<label>Quantity:</label>
									<input type="text" value="3" />
									<button type="button" class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										Add to cart
									</button>
								</span>
								<p><b>Availability:</b> In Stock</p>
								<p><b>Condition:</b> New</p>
								<p><b>Brand:</b> Epic Games</p>

							</div><!--/product-information-->
						</div>

<?php }} ?>

</div>




</div>


<hr/>


<?php include 'footer.php'?>



    </div>
    </div>

</body>
</html>
