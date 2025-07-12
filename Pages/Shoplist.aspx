<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shoplist.aspx.cs" Inherits="Btl_Web.Pages.Shoplist" %>

<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/CSS/Header.css" />
    <link rel="stylesheet" href="../Assets/CSS/Footer.css" />
    <link rel="stylesheet" href="../Assets/CSS/Shoplist.css" />

    <style>
        .hide {
            display: none !important;
        }
    </style>

</head>
<body>
    <%--Header--%>
    <uc:Header ID="Header" runat="server" />

    <form id="form1" runat="server">
        <div class="container">
            <!-- Side bar -->
            <div class="sidebar">
                <h3>Product Brand</h3>
                <ul>
                    <li>
                        <input type="checkbox" value="Coaster Furniture" class="brand-filter">
                        Coaster Furniture</li>
                    <li>
                        <input type="checkbox" value="Fusion Dot High Fashion" class="brand-filter">
                        Fusion Dot High Fashion</li>
                    <li>
                        <input type="checkbox" value="Unique Furniture Restorer" class="brand-filter">
                        Unique Furniture Restorer</li>
                    <li>
                        <input type="checkbox" value="Dream Furniture Flipping" class="brand-filter">
                        Dream Furniture Flipping</li>
                    <li>
                        <input type="checkbox" value="Young Repurposed" class="brand-filter">
                        Young Repurposed</li>
                    <li>
                        <input type="checkbox" value="Green DIY Furniture" class="brand-filter">
                        Green DIY Furniture</li>
                </ul>
                <h3>Categories</h3>
                <ul>
                    <li>
                        <input type="checkbox" value="Prestashop" class="Categories">
                        Prestashop</li>
                    <li>
                        <input type="checkbox" value="Magentor" class="Categories">
                        Magentor</li>
                    <li>
                        <input type="checkbox" value="Bigcommerce" class="Categories">
                        Bigcommerce</li>
                    <li>
                        <input type="checkbox" value="osCommerce" class="Categories">
                        osCommerce</li>
                    <li>
                        <input type="checkbox" value="3dcart" class="Categories">
                        3dcart</li>
                    <li>
                        <input type="checkbox" value="Accessories" class="Categories">
                        Accessories</li>
                    <li>
                        <input type="checkbox" value="Jewellery" class="Categories">
                        Jewellery</li>
                </ul>
                <h3>Price filter</h3>
                <ul>
                    <li>
                        <input type="checkbox" value="0-150" class="price-filter">
                        $0.00 - $150.00</li>
                    <li>
                        <input type="checkbox" value="150-350" class="price-filter">
                        $150.00 - $350.00</li>
                    <li>
                        <input type="checkbox" value="350-500" class="price-filter">
                        $350.00 - $500.00</li>
                    <li>
                        <input type="checkbox" value="500" class="price-filter" />
                        $500.00 +</li>
                </ul>

            </div>

            <!-- Products -->
            <div class="main-content">
                <asp:Literal ID="ProductHtml" runat="server" />
            </div>
        </div>

        </div>
        </div>
    </form>
    <uc:Footer ID="Footer" runat="server" />
    <script src="../Scripts/Shoplist.js"></script>
</body>
</html>
