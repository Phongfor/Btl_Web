<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Btl_Web.Pages.Home" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
    <link rel="stylesheet" href="../Assets/CSS/Home.css"/>
    
  <link rel="stylesheet" href="../Assets/CSS/Home.css?v=123" />

    
</head>
<body>

    <%-- Header --%>
    <uc:Header ID="Header" runat="server" />

     <!-- ✅ Banner Section -->
        <div class="banner">
            <div class="banner-text">
                <h5>Best Furniture For Your Castle...</h5>
                <h1>New Furniture Collection Trends in 2020</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Magna in est adipiscing in phasellus non in justo.</p>
                <button>Shop Now</button>
            </div>
            <div class="banner-image">
                <img src="../Assets/Images/imageBanner.png" alt="Pink Chair" />
            </div>
        </div>
    <!-- ✅ Featured Products -->
<section class="feature-wrapper">
    <h2>Featured Products</h2>
    <div class="feature-grid">
        <a href="ProductDetails.aspx?id=1" class="feature-card">
            <img src="../Assets/Images/sp6.png" alt="Chair 1" />
            <h4>Cantilever chair</h4>
            <p>Code - Y523201</p>
            <p>$42.00</p>
        </a>
        <a href="ProductDetails.aspx?id=2" class="feature-card">
            <img src="../Assets/Images/sp3.png" alt="Chair 2" />
            <h4>Cantilever chair</h4>
            <p>Code - Y523202</p>
            <p>$45.00</p>
        </a>
        <a href="ProductDetails.aspx?id=3" class="feature-card">
            <img src="../Assets/Images/sp4.png" alt="Chair 3" />
            <h4>Cantilever chair</h4>
            <p>Code - Y523203</p>
            <p>$40.00</p>
        </a>
        <a href="ProductDetails.aspx?id=4" class="feature-card">
            <img src="../Assets/Images/sp5.png" alt="Chair 4" />
            <h4>Cantilever chair</h4>
            <p>Code - Y523204</p>
            <p>$38.00</p>
        </a>
    </div>
</section>



   <!-- ✅ Latest Products -->
<section class="latest-wrapper">
    <h2>Latest Products</h2>
    <div class="latest-categories">
        <span class="active">New Arrival</span>
        <span>Best Seller</span>
        <span>Featured</span>
        <span>Special Offer</span>
    </div>
    <div class="latest-grid">
        <a href="ProductDetails.aspx?id=5" class="latest-card">
            <img src="../Assets/Images/sp3.png" alt="Red Chair" />
            <h4>Comfort Handy Craft</h4>
            <p><span>$42.00</span> <span class="price-old">$65.00</span></p>
        </a>
        <a href="ProductDetails.aspx?id=6" class="latest-card">
            <img src="../Assets/Images/sp4.png" alt="Yellow Chair" />
            <h4>Comfort Handy Craft</h4>
            <p><span>$42.00</span> <span class="price-old">$65.00</span></p>
        </a>
        <a href="ProductDetails.aspx?id=7" class="latest-card">
            <img src="../Assets/Images/sp5.png" alt="White Chair" />
            <h4>Comfort Handy Craft</h4>
            <p><span>$42.00</span> <span class="price-old">$65.00</span></p>
        </a>
    </div>
    <div class="latest-grid">
        <a href="ProductDetails.aspx?id=8" class="latest-card">
            <img src="../Assets/Images/sp6.png" alt="Chair" />
            <h4>Comfort Handy Craft</h4>
            <p><span>$42.00</span> <span class="price-old">$65.00</span></p>
        </a>
        <a href="ProductDetails.aspx?id=9" class="latest-card">
            <img src="../Assets/Images/sp13.png" alt="Chair" />
            <h4>Comfort Handy Craft</h4>
            <p><span>$42.00</span> <span class="price-old">$65.00</span></p>
        </a>
        <a href="ProductDetails.aspx?id=1" class="latest-card">
            <img src="../Assets/Images/sp8.png" alt="Chair" />
            <h4>Comfort Handy Craft</h4>
            <p><span>$42.00</span> <span class="price-old">$65.00</span></p>
        </a>
    </div>
</section>
    <!-- ✅ What Shopex Offer -->
<section class="offer-section">
    <h2>What Shopex Offer!</h2>
    <div class="offer-grid">
        <div class="offer-card">
            <img src="../Assets/Images/aboutUS2.png" alt="Free Delivery" />
            <h4>24/7 Support</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        </div>
        <div class="offer-card">
            <img src="../Assets/Images/aboutUS3.png" alt="Support" />
            <h4>100% Authentic</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        </div>
        <div class="offer-card">
            <img src="../Assets/Images/aboutUS4.png" alt="Quality" />
            <h4>Free Delivery</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        </div>
        <div class="offer-card">
            <img src="../Assets/Images/aboutUS5.png" alt="Customer Care" />
            <h4>Easy Returns</h4>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        </div>
    </div>
</section>

<!-- ✅ Unique Features -->
<section class="unique-feature">
    <div class="feature-image">
        <img src="../Assets/Images/sofa.png" alt="Sofa" />
    </div>
    <div class="feature-content">
        <h2>Unique Features Of Latest & Trending Products</h2>
        <ul>
            <li>All frames constructed with hardwood solids and laminates</li>
            <li>Reinforced with double wood dowels, glue, screw – nails</li>
            <li>Arms, backs and seats are structurally reinforced</li>
        </ul>
        <button>Add To Cart</button>
        <p class="product-name">B&B Italian Sofa <span>$32.00</span></p>
    </div>
</section>
<!-- ✅ Trending Products -->
<section class="trending-products">
    <h2>Trending Products</h2>
    <div class="trending-grid">
        <a href="ProductDetails.aspx?productId=2" class="trending-card">
            <img src="../Assets/Images/sp10.png" alt="Chair" />
            <h4>Cantilever chair</h4>
            <p><span>$26.00</span> <span class="price-old">$42.00</span></p>
        </a>
        <a href="ProductDetails.aspx?productId=2" class="trending-card">
            <img src="../Assets/Images/sp11.png" alt="Chair" />
            <h4>Cantilever chair</h4>
            <p><span>$26.00</span> <span class="price-old">$42.00</span></p>
        </a>
        <a href="ProductDetails.aspx?productId=3" class="trending-card">
            <img src="../Assets/Images/sp12.png" alt="Chair" />
            <h4>Cantilever chair</h4>
            <p><span>$26.00</span> <span class="price-old">$42.00</span></p>
        </a>
        <a href="ProductDetails.aspx?productId=4" class="trending-card">
            <img src="../Assets/Images/sp7.png" alt="Chair" />
            <h4>Cantilever chair</h4>
            <p><span>$26.00</span> <span class="price-old">$42.00</span></p>
        </a>
    </div>
</section>

      <script src="../Scripts/Home.js"></script>

  
    <%-- Footer --%>
    <uc:Footer ID="Footer" runat="server" />

</body>
</html>
