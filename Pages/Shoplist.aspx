<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shoplist.aspx.cs" Inherits="Btl_Web.Pages.Shoplist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/CSS/Header.css">
    <link rel="stylesheet" href="../Assets/CSS/Footer.css">
    <link rel="stylesheet" href="../Assets/CSS/Shoplist.css">
    
</head>
<body>
    <form id="form1" runat="server">

        <%--Header--%>

        <!--  Top Bar  -->
        <div class="top-bar">
            <div class="left">
                <span>abc@gmail.com</span>
                <span>(123)4567890</span>
            </div>
            <div class="right">
                <span>English ▾</span>
                <span>USD ▾</span>
                <span>Login ▾</span>
                <span>Wishlist ♡</span>
                <span>
                    <svg width="18" height="18" viewBox="0 0 18 18" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M0.5 1.25C0.5 1.05109 0.579018 0.860322 0.71967 0.71967C0.860322 0.579018 1.05109 0.5 1.25 0.5H1.808C2.758 0.5 3.328 1.139 3.653 1.733C3.87 2.129 4.027 2.588 4.15 3.004C4.18327 3.00137 4.21663 3.00004 4.25 3H16.748C17.578 3 18.178 3.794 17.95 4.593L16.122 11.002C15.9581 11.5769 15.6114 12.0827 15.1343 12.4428C14.6572 12.803 14.0758 12.9979 13.478 12.998H7.53C6.92749 12.998 6.34165 12.8002 5.86252 12.4349C5.3834 12.0696 5.0375 11.557 4.878 10.976L4.118 8.204L2.858 3.956L2.857 3.948C2.701 3.381 2.555 2.85 2.337 2.454C2.128 2.069 1.96 2 1.809 2H1.25C1.05109 2 0.860322 1.92098 0.71967 1.78033C0.579018 1.63968 0.5 1.44891 0.5 1.25ZM5.573 7.84L6.324 10.579C6.474 11.121 6.967 11.498 7.53 11.498H13.478C13.7497 11.498 14.014 11.4095 14.2309 11.2458C14.4478 11.0821 14.6054 10.8523 14.68 10.591L16.417 4.5H4.585L5.559 7.787L5.573 7.84Z" fill="white" />
                        <path d="M9 16C9 16.5304 8.78929 17.0391 8.41421 17.4142C8.03914 17.7893 7.53043 18 7 18C6.46957 18 5.96086 17.7893 5.58579 17.4142C5.21071 17.0391 5 16.5304 5 16C5 15.4696 5.21071 14.9609 5.58579 14.5858C5.96086 14.2107 6.46957 14 7 14C7.53043 14 8.03914 14.2107 8.41421 14.5858C8.78929 14.9609 9 15.4696 9 16ZM7.5 16C7.5 15.8674 7.44732 15.7402 7.35355 15.6464C7.25979 15.5527 7.13261 15.5 7 15.5C6.86739 15.5 6.74021 15.5527 6.64645 15.6464C6.55268 15.7402 6.5 15.8674 6.5 16C6.5 16.1326 6.55268 16.2598 6.64645 16.3536C6.74021 16.4473 6.86739 16.5 7 16.5C7.13261 16.5 7.25979 16.4473 7.35355 16.3536C7.44732 16.2598 7.5 16.1326 7.5 16Z" fill="white" />
                        <path d="M16 16C16 16.5304 15.7893 17.0391 15.4142 17.4142C15.0391 17.7893 14.5304 18 14 18C13.4696 18 12.9609 17.7893 12.5858 17.4142C12.2107 17.0391 12 16.5304 12 16C12 15.4696 12.2107 14.9609 12.5858 14.5858C12.9609 14.2107 13.4696 14 14 14C14.5304 14 15.0391 14.2107 15.4142 14.5858C15.7893 14.9609 16 15.4696 16 16ZM14.5 16C14.5 15.8674 14.4473 15.7402 14.3536 15.6464C14.2598 15.5527 14.1326 15.5 14 15.5C13.8674 15.5 13.7402 15.5527 13.6464 15.6464C13.5527 15.7402 13.5 15.8674 13.5 16C13.5 16.1326 13.5527 16.2598 13.6464 16.3536C13.7402 16.4473 13.8674 16.5 14 16.5C14.1326 16.5 14.2598 16.4473 14.3536 16.3536C14.4473 16.2598 14.5 16.1326 14.5 16Z" fill="white" />
                    </svg>
                </span>
            </div>
        </div>

        <!-- Main Header -->
        <div class="main-header">
            <div class="logo">
                <svg version="1.0" xmlns="http://www.w3.org/2000/svg"
                    width="100px" height="100px" viewBox="0 0 559.000000 446.000000"
                    preserveAspectRatio="xMidYMid meet">

                    <g transform="translate(0.000000,446.000000) scale(0.100000,-0.100000)"
                        fill="#000000" stroke="none">
                        <path d="M3483 3800 c-69 -28 -142 -107 -168 -183 -18 -55 -20 -57 -55 -57
    -19 0 -40 -4 -46 -8 -12 -8 -114 -306 -114 -333 0 -19 20 -29 58 -29 21 0 32
    -9 47 -37 53 -96 204 -92 245 7 11 26 17 30 52 30 26 0 41 5 45 16 7 20 -93
    335 -110 346 -7 4 -27 8 -44 8 -29 0 -33 3 -33 25 0 57 58 134 130 171 51 27
    162 25 215 -3 55 -29 94 -69 119 -123 20 -45 20 -55 21 -1055 0 -555 -2 -1059
    -5 -1120 l-5 -110 -85 -5 c-67 -4 -85 -8 -85 -20 0 -13 29 -15 205 -15 176 0
    205 2 205 15 0 12 -19 16 -90 20 l-90 5 -5 1130 c-5 1125 -5 1130 -26 1176
    -26 56 -80 111 -137 141 -61 31 -175 35 -244 8z m-35 -422 c21 -68 37 -126 35
    -130 -2 -5 -73 -8 -158 -8 -85 0 -156 3 -158 8 -2 4 14 62 36 130 l39 122 84
    0 83 0 39 -122z m-48 -196 c0 -16 -36 -42 -66 -48 -21 -4 -37 0 -57 16 -15 12
    -27 26 -27 31 0 5 34 9 75 9 41 0 75 -4 75 -8z" />
                        <path d="M2463 3059 c-293 -27 -536 -259 -586 -559 l-13 -75 -47 -5 c-30 -4
    -55 -14 -70 -28 l-22 -23 -5 -512 -5 -512 -82 -3 c-75 -3 -83 -5 -83 -22 0
    -20 12 -20 982 -18 918 3 983 4 986 20 3 15 -8 18 -80 20 l-83 3 -5 512 -5
    512 -22 23 c-15 14 -40 24 -70 28 l-48 5 -17 90 c-27 139 -91 260 -189 356
    -147 144 -325 207 -536 188z m203 -53 c130 -28 275 -118 353 -220 73 -95 130
    -239 131 -328 0 -25 -4 -28 -32 -28 -42 0 -96 -33 -108 -66 -6 -14 -10 -109
    -10 -210 l0 -186 -33 21 c-71 44 -133 51 -432 51 -297 0 -360 -7 -432 -50
    l-33 -19 0 180 c0 208 -8 241 -64 264 -20 8 -47 15 -61 15 -22 0 -25 4 -25 38
    0 86 50 210 123 309 139 187 389 279 623 229z m-670 -649 c8 -8 14 -143 18
    -435 l7 -422 -26 -25 c-23 -24 -30 -25 -109 -22 -50 2 -91 9 -100 16 -14 12
    -16 65 -16 452 0 406 1 439 18 449 22 14 193 3 208 -13z m1285 13 c18 -10 19
    -26 19 -449 0 -396 -2 -440 -17 -452 -22 -19 -197 -19 -215 -1 -10 10 -12 100
    -9 445 2 257 7 437 13 444 16 20 177 29 209 13z m-366 -416 c70 -38 78 -53 86
    -167 4 -56 5 -105 2 -109 -6 -10 -930 -10 -937 0 -2 4 -1 53 2 109 7 95 9 104
    37 133 53 55 85 59 445 57 311 -2 327 -3 365 -23z m93 -416 l-3 -83 -472 -2
    -473 -2 0 84 0 85 475 0 476 0 -3 -82z m-1150 -134 c8 -2 12 -15 10 -31 -3
    -26 -6 -28 -48 -28 -45 0 -45 0 -48 37 l-3 37 38 -5 c21 -3 44 -8 51 -10z
    m1440 -21 c-3 -38 -3 -38 -48 -38 -43 0 -45 1 -48 32 -3 31 -2 32 40 36 24 2
    47 4 51 5 5 1 7 -15 5 -35z m-145 15 c2 -7 1 -23 -4 -35 l-8 -23 -611 0 -610
    0 0 35 0 35 614 0 c482 0 615 -3 619 -12z" />
                        <path d="M2204 2709 c-3 -6 3 -23 14 -39 l20 -27 -20 -21 c-38 -38 3 -72 43
    -36 16 15 20 15 41 0 12 -9 28 -16 36 -16 22 0 25 30 6 51 -17 19 -17 21 0 49
    27 47 -5 70 -46 33 -17 -15 -19 -15 -36 0 -21 19 -48 22 -58 6z" />
                        <path d="M2713 2705 c-3 -9 2 -24 12 -35 17 -19 16 -30 -7 -62 -10 -14 -10
    -20 0 -30 10 -10 18 -8 43 6 28 16 32 17 48 2 39 -35 75 -5 42 36 -18 21 -18
    23 1 49 32 43 -3 69 -44 32 -17 -15 -19 -15 -36 0 -23 21 -51 22 -59 2z" />
                        <path d="M2206 2333 c-4 -10 1 -24 13 -36 19 -20 19 -20 -1 -47 -32 -44 3 -70
    44 -33 17 15 19 15 36 0 42 -38 81 -4 43 36 l-21 23 22 21 c39 39 -3 74 -44
    36 -17 -15 -19 -15 -36 0 -24 22 -48 22 -56 0z" />
                        <path d="M2713 2335 c-3 -9 2 -24 11 -34 9 -10 16 -21 16 -26 0 -5 -7 -16 -16
    -26 -34 -38 10 -67 48 -32 17 15 19 15 36 0 41 -37 76 -11 44 32 -19 26 -19
    28 -1 49 33 41 -3 71 -42 36 -16 -15 -20 -15 -41 0 -28 20 -47 20 -55 1z" />
                        <path d="M1528 855 l-3 -145 88 0 87 0 0 27 0 27 -16 -22 c-12 -18 -25 -22
    -65 -22 l-49 0 0 66 0 67 40 -6 c34 -4 40 -2 40 13 0 15 -6 17 -40 13 l-40 -6
    0 62 0 61 40 0 c32 0 47 -6 67 -27 l26 -28 -6 25 c-4 14 -7 28 -7 33 0 4 -36
    7 -79 7 l-80 0 -3 -145z" />
                        <path d="M1846 985 c-12 -32 -6 -35 23 -14 17 13 36 19 46 15 14 -5 16 -23 13
    -141 -3 -134 -3 -135 20 -135 22 0 22 1 22 140 0 125 2 140 17 140 9 0 28 -10
    41 -22 l24 -23 -4 25 c-3 24 -5 25 -99 28 -81 2 -98 0 -103 -13z" />
                        <path d="M2200 855 c0 -144 0 -145 23 -145 21 0 22 4 22 67 l0 68 45 0 45 0 0
    -68 c0 -60 2 -67 20 -67 19 0 20 7 20 145 0 140 -1 145 -21 145 -19 0 -21 -6
    -20 -67 l1 -68 -47 -3 -48 -3 0 70 c0 64 -2 71 -20 71 -19 0 -20 -7 -20 -145z" />
                        <path d="M2538 855 l-3 -145 88 0 87 0 0 27 0 27 -16 -22 c-12 -18 -25 -22
    -65 -22 l-49 0 0 66 0 67 40 -6 c34 -4 40 -2 40 13 0 15 -6 17 -40 13 l-40 -6
    0 62 0 61 39 0 c24 0 48 -8 67 -22 24 -19 27 -20 21 -4 -4 10 -7 22 -7 27 0 5
    -36 9 -79 9 l-80 0 -3 -145z" />
                        <path d="M2868 855 c-3 -145 -3 -145 20 -145 22 0 22 1 22 140 l0 140 26 0
    c72 0 87 -58 29 -116 -19 -19 -35 -42 -35 -51 0 -26 40 -83 70 -98 51 -26 64
    -17 25 16 -35 31 -65 77 -65 99 0 6 18 30 40 54 22 24 40 50 40 59 0 29 -41
    47 -107 47 l-62 0 -3 -145z" />
                        <path d="M3220 998 c0 -2 -1 -67 -3 -146 l-2 -143 85 3 c82 3 85 4 88 28 l4
    25 -22 -23 c-18 -19 -30 -22 -68 -20 l-47 3 -3 59 c-3 67 5 78 49 66 24 -7 29
    -6 29 8 0 14 -7 17 -41 14 l-40 -4 3 58 3 59 42 3 c32 2 47 -2 63 -18 l22 -22
    -4 24 c-3 22 -8 23 -80 26 -43 2 -78 2 -78 0z" />
                        <path d="M3579 878 c-52 -107 -59 -129 -50 -147 7 -11 17 -21 23 -21 9 0 9 3
    0 12 -7 7 -12 21 -12 33 0 27 76 185 89 185 5 0 18 -27 29 -59 l20 -60 -25
    -16 c-13 -9 -31 -32 -39 -50 -7 -18 -19 -35 -26 -38 -11 -4 -11 -6 0 -6 7 -1
    22 15 33 34 20 34 50 52 69 40 5 -3 12 -21 16 -40 5 -29 11 -35 30 -35 21 0
    23 3 14 19 -5 11 -29 73 -51 138 -23 65 -45 122 -50 127 -4 5 -35 -45 -70
    -116z" />
                        <path d="M3908 855 l-3 -145 88 0 87 0 0 27 0 27 -16 -22 c-12 -18 -25 -22
    -65 -22 l-49 0 0 140 c0 132 -1 140 -19 140 -19 0 -20 -9 -23 -145z" />
                    </g>
                </svg>
            </div>
            <nav>
                <ul>
                    <li><a href="#" class="active">Home</a></li>
                    <li><a href="#">Pages</a></li>
                    <li><a href="#">Products</a></li>
                    <li><a href="#">About us</a></li>
                    <li><a href="#">Shop</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </nav>
            <div class="search-cart">
                <div class="search-box">
                    <input type="text" placeholder="Search...">
                    <button>
                        <svg width="24" height="24" viewBox="0 0 24 24" fill="#fff" xmlns="http://www.w3.org/2000/svg">
                            <path d="M21.7099 20.2899L17.9999 16.6099C19.44 14.8143 20.1374 12.5352 19.9487 10.2412C19.76 7.94721 18.6996 5.81269 16.9854 4.27655C15.2713 2.74041 13.0337 1.91941 10.7328 1.98237C8.43194 2.04534 6.24263 2.98747 4.61505 4.61505C2.98747 6.24263 2.04534 8.43194 1.98237 10.7328C1.91941 13.0337 2.74041 15.2713 4.27655 16.9854C5.81269 18.6996 7.94721 19.76 10.2412 19.9487C12.5352 20.1374 14.8143 19.44 16.6099 17.9999L20.2899 21.6799C20.3829 21.7736 20.4935 21.848 20.6153 21.8988C20.7372 21.9496 20.8679 21.9757 20.9999 21.9757C21.1319 21.9757 21.2626 21.9496 21.3845 21.8988C21.5063 21.848 21.6169 21.7736 21.7099 21.6799C21.8901 21.4934 21.9909 21.2442 21.9909 20.9849C21.9909 20.7256 21.8901 20.4764 21.7099 20.2899ZM10.9999 17.9999C9.61544 17.9999 8.26206 17.5894 7.11091 16.8202C5.95977 16.051 5.06256 14.9578 4.53275 13.6787C4.00293 12.3996 3.86431 10.9921 4.13441 9.63427C4.4045 8.27641 5.07119 7.02912 6.05016 6.05016C7.02912 5.07119 8.27641 4.4045 9.63427 4.13441C10.9921 3.86431 12.3996 4.00293 13.6787 4.53275C14.9578 5.06256 16.051 5.95977 16.8202 7.11091C17.5894 8.26206 17.9999 9.61544 17.9999 10.9999C17.9999 12.8564 17.2624 14.6369 15.9497 15.9497C14.6369 17.2624 12.8564 17.9999 10.9999 17.9999Z" fill="url(#paint0_linear_761_1921)" />
                            <defs>
                                <linearGradient id="paint0_linear_761_1921" x1="1.979" y1="1.979" x2="25.4288" y2="16.376" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#636365" />
                                    <stop offset="1" stop-color="#636365" />
                                </linearGradient>
                            </defs>
                        </svg>
                    </button>
                </div>
            </div>
        </div>


        <div class="container">
            <!-- Side bar -->
            <div class="sidebar">
                <h3>Product Brand</h3>
                <ul>
                    <li>
                        <input type="checkbox">
                        Coaster Furniture</li>
                    <li>
                        <input type="checkbox">
                        Fusion Dot High Fashion</li>
                    <li>
                        <input type="checkbox">
                        Unique Furniture Restorer</li>
                    <li>
                        <input type="checkbox">
                        Dream Furniture Flipping</li>
                    <li>
                        <input type="checkbox">
                        Young Repurposed</li>
                    <li>
                        <input type="checkbox">
                        Green DIY Furniture</li>
                </ul>
                <h3>Categories</h3>
                <ul>
                    <li>
                        <input type="checkbox">
                        Prestashop</li>
                    <li>
                        <input type="checkbox">
                        Magentor</li>
                    <li>
                        <input type="checkbox">
                        Bigcommerce</li>
                    <li>
                        <input type="checkbox">
                        osCommerce</li>
                    <li>
                        <input type="checkbox">
                        3dcart</li>
                    <li>
                        <input type="checkbox">
                        Accessories</li>
                    <li>
                        <input type="checkbox">
                        Jewellery</li>
                </ul>
                <h3>Price filter</h3>
                <ul>
                    <li>
                        <input type="checkbox">
                        $0.00 - $150.00</li>
                    <li>
                        <input type="checkbox">
                        $150.00 - $350.00</li>
                    <li>
                        <input type="checkbox">
                        $150.00 - $500.00</li>
                    <li>
                        <input type="checkbox">
                        $500.00 +</li>
                </ul>

            </div>

            <!-- Products -->
            <div class="main-content">
                <div class="header">
                    <h2>Ecommerce Accessories & Fashion Item</h2>
                    <div class="filters">
                        <label for="perpage">Per Page: </label>
                        <input type="text" placeholder="" name="perpage">
                        <label for="Sort">Sort By:</label>
                        <select name="Sort">
                            <option>Best Match</option>
                        </select>
                    </div>
                </div>
                <div class="product-grid">
                    <div class="product-card" data-id="1">
                        <div class="image-container">
                            <img src="../Assets/Images/sp1.png" alt="Product 1">
                        </div>
                        <h4>Dictum morbi</h4>
                        <p>$26.00 <span>$30.00</span></p>
                        <span>★★★★☆</span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Magna in est adipiscing in pharetra non in justo.</p>
                        <div class="button-group">
                            <button>Buy</button>
                            <button>♥</button>
                            <button>ℹ</button>
                        </div>
                    </div>
                    <div class="product-card" data-id="2">
                        <div class="image-container">
                            <img src="../Assets/Images/sp6.png" alt="Product 2">
                        </div>
                        <h4>Sodales sit</h4>
                        <p>$26.00 <span></span></p>
                        <span>★★★★☆</span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Magna in est adipiscing in pharetra non in justo.</p>
                        <div class="button-group">
                            <button>Buy</button>
                            <button>♥</button>
                            <button>ℹ</button>
                        </div>
                    </div>
                    <div class="product-card" data-id="3">
                        <div class="image-container">
                            <img src="../Assets/Images/sp4.png" alt="Product 3">
                        </div>
                        <h4>Nibh varius</h4>
                        <p>$26.00 <span>$30.00</span></p>
                        <span>★★★★☆</span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Magna in est adipiscing in pharetra non in justo.</p>
                        <div class="button-group">
                            <button>Buy</button>
                            <button>♥</button>
                            <button>ℹ</button>
                        </div>
                    </div>
                    <div class="product-card" data-id="4">
                        <div class="image-container">
                            <img src="../Assets/Images/sp5.png" alt="Product 3">
                        </div>
                        <h4>Nibh varius</h4>
                        <p>$26.00 <span>$30.00</span></p>
                        <span>★★★★☆</span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Magna in est adipiscing in pharetra non in justo.</p>
                        <div class="button-group">
                            <button>Buy</button>
                            <button>♥</button>
                            <button>ℹ</button>
                        </div>
                    </div>
                    <div class="product-card" data-id="5">
                        <div class="image-container">
                            <img src="../Assets/Images/sp2.png" alt="Product 3">
                        </div>
                        <h4>Nibh varius</h4>
                        <p>$26.00 <span>$30.00</span></p>
                        <span>★★★★☆</span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Magna in est adipiscing in pharetra non in justo.</p>
                        <div class="button-group">
                            <button>Buy</button>
                            <button>♥</button>
                            <button>ℹ</button>
                        </div>
                    </div>
                    <div class="product-card" data-id="6">
                        <div class="image-container">
                            <img src="../Assets/Images/sp3.png" alt="Product 3">
                        </div>
                        <h4>Nibh varius</h4>
                        <p>$26.00 <span>$30.00</span></p>
                        <span>★★★★☆</span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Magna in est adipiscing in pharetra non in justo.</p>
                        <div class="button-group">
                            <button>Buy</button>
                            <button>♥</button>
                            <button>ℹ</button>
                        </div>
                    </div>
                    <div class="product-card" data-id="7">
                        <div class="image-container">
                            <img src="../Assets/Images/sp7.png" alt="Product 3">
                        </div>
                        <h4>Nibh varius</h4>
                        <p>$26.00 <span>$30.00</span></p>
                        <span>★★★★☆</span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Magna in est adipiscing in pharetra non in justo.</p>
                        <div class="button-group">
                            <button>Buy</button>
                            <button>♥</button>
                            <button>ℹ</button>
                        </div>
                    </div>
                    <div class="product-card" data-id="8">
                        <div class="image-container">
                            <img src="../Assets/Images/sp8.png" alt="Product 3">
                        </div>
                        <h4>Nibh varius</h4>
                        <p>$26.00 <span>$30.00</span></p>
                        <span>★★★★☆</span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Magna in est adipiscing in pharetra non in justo.</p>
                        <div class="button-group">
                            <button>Buy</button>
                            <button>♥</button>
                            <button>ℹ</button>
                        </div>
                    </div>
                    <div class="product-card" data-id="9">
                        <div class="image-container">
                            <img src="../Assets/Images/sp9.png" alt="Product 3">
                        </div>
                        <h4>Nibh varius</h4>
                        <p>$26.00 <span>$30.00</span></p>
                        <span>★★★★☆</span>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Magna in est adipiscing in pharetra non in justo.</p>
                        <div class="button-group">
                            <button>Buy</button>
                            <button>♥</button>
                            <button>ℹ</button>
                        </div>
                    </div>
                </div>
                <div class="pagination">
                    <button>Previous</button>
                    <button>1</button>
                    <button>2</button>
                    <button>3</button>
                    <button>Next</button>
                </div>
            </div>
        </div>
        </div>

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

    </form>
    <script src="../Scripts/Shoplist.js"></script>
</body>
</html>
