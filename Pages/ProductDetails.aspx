<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Btl_Web.Pages.ProductDetails" %>

<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/CSS/Header.css">
    <link rel="stylesheet" href="../Assets/CSS/Footer.css">
    <link rel="stylesheet" href="../Assets/CSS/ProductDetails.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <%-- Header --%>
    <uc:Header ID="Header" runat="server" />

    <form id="form1" runat="server">

        <div class="breadcrumb">
            <p><a href="#">Home</a> . Pages . <span>Product Details</span></p>
            <h1>Product Details</h1>
        </div>

        <div class="product-container">
            <div class="gallery">
                <div class="thumbnails">
                    <img id="thumb1" runat="server" src="../Assets/Images/sp1.png" alt="Thumbnail 1" />
                    <img id="thumb2" runat="server" src="../Assets/Images/sp1.png" alt="Thumbnail 2" />
                    <img id="thumb3" runat="server" src="../Assets/Images/sp1.png" alt="Thumbnail 3" />
                </div>
                <div class="main-image">
                    <img id="mainImage" runat="server" src="../Assets/Images/sp1.png" alt="Main Product Image" />
                </div>
            </div>

            <div class="product-details">
                <h2><span id="productName" runat="server">Dictum morbi</span></h2>

                <div class="rating">
                    ⭐⭐⭐⭐⭐ <span>(22)</span>
                </div>

                <div class="price">
                    <span class="new" id="newPrice" runat="server">$26.00</span>
                    <span class="old" id="oldPrice" runat="server">$30.00</span>
                </div>

                <p><strong>Color</strong></p>

                <p class="description">
                    <span id="productDescription" runat="server">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tellus porttitor purus, et volutpat sit.
                    </span>
                </p>

                <div class="order">
                    <button class="add-to-cart">Add To Cart</button>
                    <ion-icon name="heart-outline" class="heart-icon"></ion-icon>
                </div>

                <div class="meta">
                    <p><strong>Categories:</strong> Chair</p>
                    <p><strong>Tags:</strong> Wood, Modern</p>
                    <p><strong>Share:</strong> 🔵 🔴 🟣</p>
                </div>
            </div>
        </div>


        <div class="product-tabs">
            <ul class="tabs">
                <li class="active">Description</li>
                <li>Additional Info</li>
                <li>Reviews</li>
            </ul>

            <div class="tab-content">
                <h3>Varius tempor.</h3>
                <p>
                    Aliquam dis vulputate vulputate integer sagittis. Faucibus dolor ornare faucibus vel sed et eleifend habitasse amet.
                    Montes, mauris varius ac est bibendum. Scelerisque a, risus ac ante. Velit consectetur neque, elit, aliquet.
                    Non varius proin sed urna, egestas consequat laoreet diam tincidunt.
                </p>

                <h4>More details</h4>
                <ul class="details-list">
                    <li><span class="arrow">➔</span> Aliquam dis vulputate vulputate integer sagittis.</li>
                    <li><span class="arrow">➔</span> Faucibus ac diam arcu, nulla lobortis justo netus dis.</li>
                    <li><span class="arrow">➔</span> Eu in fringilla vulputate nunc nec.</li>
                    <li><span class="arrow">➔</span> Dui, massa viverra facilisis mauris.</li>
                </ul>
            </div>
        </div>


        <div class="related-products">
            <h2>Related Products</h2>
            

            <div class="product-list">
                <asp:Literal ID="litRelatedProducts" runat="server"></asp:Literal>
                <%--<div class="product-card">
                    <img src="../Assets/Images/sp2.png" alt="Mens Fashion Wear">
                    <div class="desc">
                        <h4>Mens Fashion Wear</h4>
                        <p>$43.00</p>
                        <div class="stars">★★★★★</div>
                    </div>
                </div>

                <div class="product-card">
                    <img src="../Assets/Images/sp3.png" alt="Women's Fashion">
                    <div class="desc">
                        <h4>Women's Fashion</h4>
                        <p>$67.00</p>
                        <div class="stars">★★★★★</div>
                    </div>
                </div>

                <div class="product-card">
                    <img src="../Assets/Images/sp4.png" alt="Wok Dummy Fashion">
                    <div class="desc">
                        <h4>Wok Dummy Fashion</h4>
                        <p>$67.00</p>
                        <div class="stars">★★★★★</div>
                    </div>
                </div>

                <div class="product-card">
                    <img src="../Assets/Images/sp5.png" alt="Top Wall Digital Clock">
                    <div class="desc">
                        <h4>Top Wall Digital Clock</h4>
                        <p>$31.00</p>
                        <div class="stars">★★★★☆</div>
                    </div>
                </div>--%>
            </div>
        </div>

        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    </form>
    <%-- Footer --%>
    <uc:Footer ID="Footer" runat="server" />
</body>
</html>
