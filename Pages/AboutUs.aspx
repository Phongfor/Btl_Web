<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="Btl_Web.AboutUs" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link rel="stylesheet" href="../Assets/CSS/AboutUS.css">
</head>
<body>
     <uc:Header ID="Header" runat="server" />
   

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


     <uc:Footer ID="Footer" runat="server" />
    
   
</body>
</html>
