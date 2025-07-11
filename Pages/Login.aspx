<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Btl_Web.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="../Assets/CSS/Footer.css">
    <link rel="stylesheet" href="../Assets/CSS/Header.css">
    <link rel="stylesheet" href="../Assets/CSS/Login.css">
</head>
<body>
    <!-- ✅ Header giữ nguyên -->
    <header>
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
                    <input type="text" placeholder="Search..." />
                    <button>🔍</button>
                </div>
            </div>
        </div>
    </header>

    <!-- ✅ Nội dung login đặt trong form -->
    <form id="form1" runat="server">
        <div class="Tieude">
            <h1>My Account</h1>
            <div class="breadcrumb">Home > Pages > My Account</div>
        </div>

        <main>
            <div class="login-container">
                <h2>Login</h2>
                <p class="subtext">Please login using account detail below.</p>

                <asp:TextBox ID="txtEmail" runat="server" CssClass="input-box" Placeholder="Email Address" TextMode="Email"></asp:TextBox>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="input-box" Placeholder="Password" TextMode="Password"></asp:TextBox>

                <a href="#" class="forgot-password">Forgot your password?</a>

                <asp:Button ID="btnLogin" runat="server" Text="Sign In" CssClass="login-button" OnClick="btnLogin_Click" />

                <p class="create-account">Don't have an Account? <a href="Register.aspx">Create account</a></p>
            </div>
        </main>
    </form>

    <!-- ✅ Footer giữ nguyên -->
    <footer>
        <div class="footer-column footer-newsletter">
            <h4>Hekto</h4>
            <input type="email" placeholder="Enter Email Address" />
            <button>Sign Up</button>
            <ul>
                <li>Contact Info</li>
                <li>17 Princess Road, London, Greater London NW1 8JR, UK</li>
            </ul>
        </div>
        <div class="footer-column">
            <h4>Categories</h4>
            <ul>
                <li>Laptops & Computers</li>
                <li>Cameras & Photography</li>
                <li>Smart Phones & Tablets</li>
                <li>Video Games & Consoles</li>
                <li>Waterproof Headphones</li>
            </ul>
        </div>
        <div class="footer-column">
            <h4>Customer Care</h4>
            <ul>
                <li>My Account</li>
                <li>Discount</li>
                <li>Returns</li>
                <li>Orders History</li>
                <li>Order Tracking</li>
            </ul>
        </div>
        <div class="footer-column">
            <h4>Pages</h4>
            <ul>
                <li>Blog</li>
                <li>Browse the Shop</li>
                <li>Category</li>
                <li>Pre-Built Pages</li>
                <li>Visual Composer Elements</li>
                <li>WooCommerce Pages</li>
            </ul>
        </div>
    </footer>

    <div class="copyright">
        © Webecy - All Rights Reserved
    </div>
</body>
</html>
