<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>store</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<div class="heading">
   <h3>store</h3>
   <p> <a href="index.php">home</a> / store </p>
</div>

<section class="home">

   <div class="content">
      <h3>Hanafi Book Store.</h3>
      <p>Toko Buku legendaris di probolinggo. Koleksi buku lengkap. Telah berdiri selama puluhan tahun.
      </p>
   </div>

</section>


<section class="authors">

   <h1 class="title">Our Gallery</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/store-offline.jpg" alt="">
      </div>

      <div class="box">
         <img src="images/inside-2.jpg" alt="">
      </div>

      <div class="box">
         <img src="images/inside-3.jpg" alt="">
      </div>

      <div class="box">
         <img src="images/inside-4.jpg" alt="">
      </div>

      <div class="box">
         <img src="images/inside-5.jpg" alt="">
      </div>

      <div class="box">
         <img src="images/inside-6.jpg" alt="">
      </div>
      <div class="box">
         <img src="images/inside-7.jpg" alt="">
      </div>

      <div class="box">
         <img src="images/inside-8.jpg" alt="">
      </div>

      <div class="box">
         <img src="images/inside-9.jpg" alt="">
      </div>

   </div>

</section>


<section class="about">

   <div class="flex">
      <div class="content">
         <h3>Lokasi Toko</h3>
         <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3953.4121836403224!2d113.2182804!3d-7.7460297!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dd7ade1cb5b22bd%3A0x8c345a44cb54721!2sTB.%20Hanafi!5e0!3m2!1sen!2sid!4v1656216129309!5m2!1sen!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
         </div>

      <div class="image">
         <img src="images/inside-8.jpg" alt="">
         <a href="https://www.google.co.id/maps/place/TB.+Hanafi/@-7.7460244,113.2160863,17z/data=!3m1!4b1!4m5!3m4!1s0x2dd7ade1cb5b22bd:0x8c345a44cb54721!8m2!3d-7.7460309!4d113.2182887?hl=id" target="" class="btn">Rute Toko Offline Kami</a>
      </div>

   </div>

</section>


<section class="home-contact">

   <div class="content">
   <h3>Jam Buka</h3>
         <p> SETIAP HARI pukul 08.00–21.00 WIB</p>
   </div>

</section>


<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>
</body>
</html>