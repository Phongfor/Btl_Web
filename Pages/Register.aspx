<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Btl_Web.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/CSS/Footer.css">
    <link rel="stylesheet" href="../Assets/CSS/Header.css">
    <link rel="stylesheet" href="../Assets/CSS/Register.css">
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

    <main class="form-wrapper">
    <form id="form1" runat="server">
        <div class="container">
            <h2>Register</h2>

            <asp:TextBox ID="txtFullName" runat="server" CssClass="input-box" Placeholder="Full Name" />
            <asp:TextBox ID="txtEmail" runat="server" CssClass="input-box" Placeholder="Email" />
            <asp:TextBox ID="txtPassword" runat="server" CssClass="input-box" TextMode="Password" Placeholder="Password" />
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="input-box" TextMode="Password" Placeholder="Confirm Password" />
             <asp:TextBox ID="txtAddress" runat="server" CssClass="input-box" Placeholder="Address" />

            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="register-button" OnClick="btnRegister_Click" />
             <asp:Button ID="btnSign" runat="server" Text="Sign" CssClass="signin-button" OnClick="btnSign_Click" />
            <asp:Label ID="lblMessage" runat="server" CssClass="message" />
        </div>
    </form>

        </main>

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
</body>
</html>
