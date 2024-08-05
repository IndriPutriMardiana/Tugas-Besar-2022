<?php

include 'config.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if(!isset($admin_id)){
   header('location:login.php');
};

if(isset($_POST['add_ongkir'])){

//   $id_ongkir = $_POST['id_ongkir'];
   $prov = $_POST['prov'];
   $biaya = $_POST['biaya'];

   $select_product_name = mysqli_query($connect, "SELECT prov FROM `ongkir` WHERE prov = '$prov'") or die('query failed');

   if(mysqli_num_rows($select_product_name) > 0){
      $message[] = 'state already added';
   }else{
      $add_product_query = mysqli_query($connect, "INSERT INTO `ongkir`(prov, biaya) 
      VALUES('$prov', '$biaya')") or die('query failed');
       $message[] = 'ongkir added successfully!';
   }
}

if(isset($_GET['delete'])){
   $delete_id = $_GET['id_ongkir'];
   $delete_prov = mysqli_query($connect, "SELECT prov FROM `ongkir` WHERE id = '$delete_id'") or die('query failed');
   $fetch_delete_image = mysqli_fetch_assoc($delete_prov);
   mysqli_query($connect, "DELETE FROM `ongkir` WHERE id_ongkir = '$delete_id'") or die('query failed');
   $message[] = 'ongkir delete successfully!';
   header('location:admin_products.php');
}

if(isset($_POST['update_product'])){

   $update_p_id = $_POST['update_p_id'];
   $update_prov = $_POST['update_prov'];
   $update_biaya = $_POST['update_biaya'];

   mysqli_query($connect, "UPDATE `ongkir` SET prov = '$update_prov', biaya = '$update_biaya' WHERE id_ongkir = '$update_p_id'") or die('query failed');
   $message[] = 'ongkir update successfully!';

   header('location:admin_products.php');

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>products</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/admin_style.css">

</head>
<body>
   
<?php include 'admin_header.php'; ?>

<!-- ongkir CRUD section starts  -->

<section class="add-products">

   <h1 class="title">list biaya pengiriman</h1>

   <form action="" method="post" enctype="multipart/form-data">
      <h3>add ongkir</h3>
      <input type="text" name="prov" class="box" placeholder="enter province" required>
      <input type="number" name="biaya" class="box" placeholder="enter price" required>
      <input type="submit" value="add product" name="add_ongkir" class="btn">
   </form>

</section>

<!-- ongkir CRUD section ends -->

<!-- show products  -->

<section class="show-products">

   <div class="box-container">

      <?php
         $select_products = mysqli_query($connect, "SELECT * FROM `ongkir`") or die('query failed');
         if(mysqli_num_rows($select_products) > 0){
            while($fetch_products = mysqli_fetch_assoc($select_products)){
      ?>
      <div class="box">
         <div class="id_ongkir"><?php echo $fetch_products['id_ongkir']; ?></div>
         <div class="prov"><?php echo $fetch_products['prov']; ?></div>
         <div class="biaya"><?php echo $fetch_products['biaya']; ?></div>
         <a href="admin_ongkir.php?update=<?php echo $fetch_products['id_ongkir']; ?>" class="option-btn">update</a>
         <a href="admin_ongkir.php?delete=<?php echo $fetch_products['id_ongkir']; ?>" class="delete-btn" onclick="return confirm('delete this product?');">delete</a>
      </div>
      <?php
         }
      }else{
         echo '<p class="empty">no ongkir added yet!</p>';
      }
      ?>
   </div>

</section>

<section class="edit-product-form">

   <?php
      if(isset($_GET['update'])){
         $update_id = $_GET['update'];
         $update_query = mysqli_query($connect, "SELECT * FROM `ongkir` WHERE id_ongkir = '$update_id'") or die('query failed');
         if(mysqli_num_rows($update_query) > 0){
            while($fetch_update = mysqli_fetch_assoc($update_query)){
   ?>
   <form action="" method="post" enctype="multipart/form-data">
      <input type="text" name="update_prov" value="<?php echo $fetch_update['prov']; ?>" class="box" required placeholder="enter province">
      <input type="number" name="update_price" value="<?php echo $fetch_update['price']; ?>" class="box" required placeholder="enter price">
      <input type="submit" value="update" name="update_product" class="btn">
   </form>
   <?php
         }
      }
      }else{
         echo '<script>document.querySelector(".edit-product-form").style.display = "none";</script>';
      }
   ?>

</section>







<!-- custom admin js file link  -->
<script src="js/admin_script.js"></script>

</body>
</html>