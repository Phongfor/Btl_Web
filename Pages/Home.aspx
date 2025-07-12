<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Btl_Web.Pages.Home" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/CSS/Footer.css"/>
    <link rel="stylesheet" href="../Assets/CSS/Header.css"/>
    <link rel="stylesheet" href="../Assets/CSS/Home.css"/>
    
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
                <img src="../Assets/Images/imageBanner" alt="Pink Chair" />
            </div>
        </div>

        <!-- ✅ Featured Products -->
        <section class="feature-wrapper">
            <h2>Featured Products</h2>
            <div class="feature-grid">
                <div class="feature-card">
                    <img src="../Assets/Images/sp1.png" alt="Chair 1" />
                    <h4>Cantilever chair</h4>
                    <p>Code - Y523201</p>
                    <p>$42.00</p>
                </div>
                <div class="feature-card">
                    <img src="../Assets/Images/sp2.png" alt="Chair 2" />
                    <h4>Cantilever chair</h4>
                    <p>Code - Y523201</p>
                    <p>$42.00</p>
                </div>
                <div class="feature-card">
                    <img src="../Assets/Images/sp1.png" alt="Chair 3" />
                    <h4>Cantilever chair</h4>
                    <p>Code - Y523201</p>
                    <p>$42.00</p>
                </div>
                <div class="feature-card">
                    <img src="../Assets/Images/sp2.png" alt="Chair 4" />
                    <h4>Cantilever chair</h4>
                    <p>Code - Y523201</p>
                    <p>$42.00</p>
                </div>
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
                <div class="latest-card">
                    <img src="../Assets/Images/sp3.png" alt="Red Chair" />
                    <h4>Comfort Handy Craft</h4>
                    <p><span>$42.00</span> <span class="price-old">$65.00</span></p>
                </div>
                <div class="latest-card">
                    <img src="../Assets/Images/sp4.png" alt="Yellow Chair" />
                    <h4>Comfort Handy Craft</h4>
                    <p><span>$42.00</span> <span class="price-old">$65.00</span></p>
                </div>
                <div class="latest-card">
                    <img src="../Assets/Images/sp5.png" alt="White Chair" />
                    <h4>Comfort Handy Craft</h4>
                    <p><span>$42.00</span> <span class="price-old">$65.00</span></p>
                </div>
            </div>
            <div class="latest-grid">
                <div class="latest-card">
                    <img src="../Assets/Images/sp6.png" alt="Chair" />
                    <h4>Comfort Handy Craft</h4>
                    <p><span>$42.00</span> <span class="price-old">$65.00</span></p>
                </div>
                <div class="latest-card">
                    <img src="../Assets/Images/sp7.png" alt="Chair" />
                    <h4>Comfort Handy Craft</h4>
                    <p><span>$42.00</span> <span class="price-old">$65.00</span></p>
                </div>
                <div class="latest-card">
                    <img src="../Assets/Images/sp8.png" alt="Chair" />
                    <h4>Comfort Handy Craft</h4>
                    <p><span>$42.00</span> <span class="price-old">$65.00</span></p>
                </div>
            </div>
        </section>
    <%-- Footer --%>
    <uc:Footer ID="Footer" runat="server" />
</body>
</html>
