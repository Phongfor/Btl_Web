<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchProduct.aspx.cs" Inherits="Btl_Web.Pages.SearchProduct" %>

<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/CSS/Footer.css" />
    <link rel="stylesheet" href="../Assets/CSS/Header.css" />
    <link rel="stylesheet" href="../Assets/CSS/SearchProduct.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    
</head>
<body>

    <%-- Header --%>
    <uc:Header ID="Header" runat="server" />

    <main class="container">

        <!-- Search Section -->
        <section class="product-search-section">
            <h2 class="product-search-title">Tìm kiếm sản phẩm</h2>
            <div class="product-search-box">
                <div class="product-search-row">
                    <div class="product-search-input-wrapper">
                        <input type="text" placeholder="Nhập tên sản phẩm, từ khóa..." id="searchInputPage"/>
                        <button class="product-search-icon-btn" >
                            <i class="fas fa-search"></i>
                        </button>
                    </div>

                    <button class="product-search-button" id="searchButtonPage">
                        <i class="fas fa-search"></i>Tìm kiếm
                    </button>
                </div>
                <div class="product-popular-searches">
                    <span>Tìm kiếm phổ biến:</span>
                    <button>iPhone</button>
                    <button>Laptop</button>
                    <button>Giày thể thao</button>
                    <button>Túi xách</button>
                </div>
            </div>
        </section>



        <!-- Products Section -->
        <section class="products-section">
            <div class="product-grid" id="productsGrid">
               
            </div>            
        </section>

    </main>
    <script src="../Scripts/SearchProduct.js"></script>
</body>
</html>
