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
   <title>About</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>
   
<?php include 'header.php'; ?>

<div class="heading">
   <h3>About us</h3>
   <p> <a href="home.php">Home</a> / About </p>
</div>

<section class="about">

   <div class="flex">

      <div class="image">
         <img src="images/logo.png" alt="">
      </div>

      <div class="content">
         <h3>Why choose us?</h3>
         <p>Our story began with a passion for providing families and individuals with easy access to essential milk goodness. We understand the importance of milk in your daily life, from a glass of cold milk in the morning to that creamy touch after your afternoon snacks. That's why we have made it our mission to ensure that you never run out of your dairy essentials.</p>
         <p>What makes MilkMart Special:<br>1. Farm-Fresh Goodness <br>2. Wide Variety<br>3. Convenient Shopping<br>4. Quality Assurance 
         </p>
         <a href="contact.php" class="btn">Contact us</a>
      </div>

   </div>

</section>

<section class="reviews">

   <h1 class="title">Client's reviews</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/siddhant.jpeg" alt="">
         <p>"Almond milk has won me over with its light, slightly nutty essence that adds a delightful touch to my coffee and oatmeal."</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Siddhant Kulkarni</h3>
      </div>

      <div class="box">
         <img src="images/malhar.jpeg" alt="">
         <p>“Soy milk is a versatile dairy alternative, rich in flavor and nutrients, perfect for my plant-based lifestyle.”</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Malhar Maid</h3>
      </div>

      <div class="box">
         <img src="images/khushi.jpeg" alt="">
         <p>“Delicious and nutritious, cow’s milk is a timeless classic for its creamy taste and essential nutrients.”</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Khushi Walje</h3>
      </div>

      <div class="box">
         <img src="images/shanky.jpeg" alt="">
         <p>“Smooth and creamy cashew milk: a delightful dairy-free choice with a mild, nutty taste that complements everything.”</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Vrushank Marathe</h3>
      </div>

      <div class="box">
         <img src="images/ameya.jpeg" alt="">
         <p>"Goat milk: An acquired taste with unique richness, it's a nutritious alternative for those seeking variety."</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Ameya Masurkar</h3>
      </div>

      <div class="box">
         <img src="images/shreya.jpeg" alt="">
         <p>"Sheep milk: A rich, creamy delight with a distinctive flavor, perfect for those who appreciate dairy diversity."</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Shreya Walunj</h3>
      </div>

   </div>

</section>

<section class="partners">

   <h1 class="title">Our Partners</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/sofit.png" alt="">
         <div class="share">
            <a href="https://www.facebook.com/HersheysIndia/" class="fab fa-facebook-f"></a>
            <a href="https://twitter.com/HersheysIndia/" class="fab fa-twitter"></a>
            <a href="https://www.instagram.com/hersheysindia/" class="fab fa-instagram"></a>
            <a href="https://www.linkedin.com/company/the-hershey-company" class="fab fa-linkedin"></a>
         </div>
         <h3>Sofit</h3>
      </div>

      <div class="box">
         <img src="images/amul.png" alt="">
         <div class="share">
         <a href="https://www.facebook.com/amul.coop/" class="fab fa-facebook-f"></a>
         <a href="https://twitter.com/amul_india/" class="fab fa-twitter"></a>
         <a href="https://www.instagram.com/amul_india/" class="fab fa-instagram"></a>
         <a href="https://www.linkedin.com/company/Amul" class="fab fa-linkedin"></a>
         </div>
         <h3>Amul Milk</h3>
      </div>

      <div class="box">
         <img src="images/dessertfarms.png" alt="">
         <div class="share">
         <a href="https://www.facebook.com/" class="fab fa-facebook-f"></a>
         <a href="https://twitter.com/" class="fab fa-twitter"></a>
         <a href="https://www.instagram.com/" class="fab fa-instagram"></a>
         <a href="https://www.linkedin.com/" class="fab fa-linkedin"></a>
         </div>
         <h3>Dessert Farms</h3>
      </div>

   </div>

</section>







<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>