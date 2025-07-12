<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Btl_Web.AboutUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/CSS/Header.css">
    <link rel="stylesheet" href="../Assets/CSS/Footer.css">
    <link rel="stylesheet" href="../Assets/CSS/AboutUS.css">
</head>
<body>
   <div class="top-bar">
    <div class="left">
      <span>mhkhoanui@gmail.com</span>
      <span>(123)4567890</span>
    </div>
    <div class="right">
      <span>English ▾</span>
      <span>USD ▾</span>
      <span>Login ▾</span>
      <span>Wishlist ♡</span>
      <span>🛒</span>
    </div>
  </div>

  <!-- Main Header -->
  <div class="main-header">
    <div class="logo">Hekto</div>
    <nav>
      <ul>
        <li><a href="#" class="active">Home</a></li>
        <li><a href="#">Pages</a></li>
        <li><a href="#">Products</a></li>
        <li><a href="#">Blog</a></li>
        <li><a href="#">Shop</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </nav>
    <div class="search-cart">
      <div class="search-box">
        <input type="text" placeholder="Search...">
        <button>🔍</button>
      </div>
    </div>
  </div>

<main>
    <section class="about-us">
        <div class="about-content">
            <div class="about-image">
                <img src="../Assets/Images/aboutUS1.png" alt="About Us Image">
            </div>
            <div class="about-text">
                <h2>Know About Our Ecommerce Business, History</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mattis neque utrices mattis aliquam, malesuada diam. Malesuada sem tristique amet erat vitae eget dolor lobortis. Accumsan faucibus vitae auctor quis bibendum quam.</p>
                <button class="contact-btn">Contact us</button>
            </div>
        </div>
    </section>

    <section class="features">
        <h2>Our Features</h2>
        <div class="features-grid">
            <div class="feature-item">
                <img src="../Assets/Images/aboutUS2.png" alt="Free Delivery">
                <h3>Free Delivery</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Massa purus gravida.</p>
            </div>
            <div class="feature-item">
                <img src="../Assets/Images/aboutUS3.png" alt="100% Cash Back">
                <h3>100% Cash Back</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Massa purus gravida.</p>
            </div>
            <div class="feature-item">
                <img src="../Assets/Images/aboutUS4.png" alt="Quality Product">
                <h3>Quality Product</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Massa purus gravida.</p>
            </div>
            <div class="feature-item">
                <img src="../Assets/Images/aboutUS5.png" alt="24/7 Support">
                <h3>24/7 Support</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Massa purus gravida.</p>
            </div>
        </div>
    </section>
</main>



    <footer class="footer">
        <div class="footer-container">
            <div class="footer-col">
                <h2 class="footer-logo">Ethereal</h2>
                <form class="subscribe-form">
                    <input type="email" placeholder="Enter Email Address" />
                    <button type="submit">Sign Up</button>
                </form>
                <p class="contact-title">Contact Info</p>
                <p class="contact-info">17 Princess Road, London, Greater London NW1 8JR, UK</p>
            </div>

            <div class="footer-col">
                <h3>Catagories</h3>
                <ul>
                    <li><a href="#">Laptops & Computers</a></li>
                    <li><a href="#">Cameras & Photography</a></li>
                    <li><a href="#">Smart Phones & Tablets</a></li>
                    <li><a href="#">Video Games & Consoles</a></li>
                    <li><a href="#">Waterproof Headphones</a></li>
                </ul>
            </div>

            <div class="footer-col">
                <h3>Customer Care</h3>
                <ul>
                    <li><a href="#">My Account</a></li>
                    <li><a href="#">Discount</a></li>
                    <li><a href="#">Returns</a></li>
                    <li><a href="#">Orders History</a></li>
                    <li><a href="#">Order Tracking</a></li>
                </ul>
            </div>

            <div class="footer-col">
                <h3>Pages</h3>
                <ul>
                    <li><a href="#">Blog</a></li>
                    <li><a href="#">Browse the Shop</a></li>
                    <li><a href="#">Category</a></li>
                    <li><a href="#">Pre-Built Pages</a></li>
                    <li><a href="#">Visual Composer Elements</a></li>
                    <li><a href="#">WooCommerce Pages</a></li>
                </ul>
            </div>
        </div>
        </div>
        <div class="footer-bottom">
            <p>©Webecy - All Rights Reserved</p>
            <div class="social-icons">
                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-instagram"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
            </div>
    </footer>
    
   
</body>
</html>
