<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="WebApplication.ShoppingCart" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="../Assets/CSS/Header.css" />
    <link rel="stylesheet" href="../Assets/CSS/Footer.css" />
    <link rel="stylesheet" href="../Assets/CSS/ShoppingCart.css" />
</head>
<body>
    <form id="form1" runat="server">
        <%-- Header --%>
        <uc:Header ID="Header1" runat="server" />


        <div class="container">
            <div class="header">
                <h1>Shopping Cart</h1>
                <div class="breadcrumb">
                    <a href="Default.aspx">Home</a> > <a href="Pages.aspx">Pages</a> > Shopping Cart
                </div>
            </div>

            <div class="cart-container">
                <div class="cart-items">
                    <div class="cart-header">
                        <div>Product</div>
                        <div>Price</div>
                        <div>Quantity</div>
                        <div>Total</div>
                    </div>

                    <asp:Repeater ID="CartRepeater" runat="server">
                        <ItemTemplate>
                            <div class="cart-item">
                                <div class="product-info">
                                    <div class="product-image">
                                        <asp:Image ID="ProductImage" runat="server"
                                            ImageUrl='<%# Eval("ImageUrl") %>'
                                            AlternateText='<%# Eval("ProductName") %>' />
                                    </div>
                                    <div class="product-details">
                                        <h3><%# Eval("ProductName") %></h3>
                                        <p>Color: <%# Eval("Color") %></p>
                                    </div>
                                </div>
                                <div class="price">$<%# Eval("Price", "{0:F2}") %></div>
                                <div class="quantity-control">
                                    <asp:Button ID="DecreaseBtn" runat="server"
                                        CssClass="quantity-btn"
                                        Text="-"
                                        CommandName="Decrease"
                                        CommandArgument='<%# Eval("ProductId") %>'
                                        OnCommand="UpdateQuantity" />
                                    <span class="quantity"><%# Eval("Quantity") %></span>
                                    <asp:Button ID="IncreaseBtn" runat="server"
                                        CssClass="quantity-btn"
                                        Text="+"
                                        CommandName="Increase"
                                        CommandArgument='<%# Eval("ProductId") %>'
                                        OnCommand="UpdateQuantity" />
                                </div>
                                <div class="total">$<%# Eval("Total", "{0:F2}") %></div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                    <div class="cart-actions">
                        <asp:Button ID="UpdateCartBtn" runat="server"
                            CssClass="btn btn-update"
                            Text="Update Cart"
                            OnClick="UpdateCart_Click" />
                        <asp:Button ID="ClearCartBtn" runat="server"
                            CssClass="btn btn-clear"
                            Text="Clear Cart"
                            OnClick="ClearCart_Click" />
                    </div>
                </div>

                <div class="cart-summary">
                    <div class="summary-title">Cart Totals</div>

                    <div class="summary-row">
                        <span class="summary-label">Subtotal:</span>
                        <span class="summary-value">
                            <asp:Label ID="SubtotalLabel" runat="server" Text="$0.00" />
                        </span>
                    </div>

                    <div class="summary-row">
                        <span class="summary-label">Totals:</span>
                        <span class="summary-value">
                            <asp:Label ID="TotalLabel" runat="server" Text="$0.00" />
                        </span>
                    </div>

                    <asp:Button ID="CheckoutBtn" runat="server"
                        CssClass="checkout-btn"
                        Text="Proceed to Checkout"
                        OnClick="Checkout_Click" />

                    <div class="continue-shopping">
                        <a href="Products.aspx">← Continue Shopping</a>
                    </div>

                    <div class="summary-title" style="margin-top: 30px;">Calculate Shipping</div>

                    <div class="shipping-form">
                        <div class="form-group">
                            <label for="CountryDropDown">Country</label>
                            <asp:DropDownList ID="CountryDropDown" runat="server" CssClass="form-control">
                                <asp:ListItem Value="BD">Bangladesh</asp:ListItem>
                                <asp:ListItem Value="US">United States</asp:ListItem>
                                <asp:ListItem Value="CA">Canada</asp:ListItem>
                                <asp:ListItem Value="UK">United Kingdom</asp:ListItem>
                            </asp:DropDownList>
                        </div>

                        <div class="form-group">
                            <label for="StateTextBox">State/Province</label>
                            <asp:TextBox ID="StateTextBox" runat="server"
                                CssClass="form-control"
                                placeholder="Dhaka" />
                        </div>

                        <div class="form-group">
                            <label for="ZipTextBox">Postal Code</label>
                            <asp:TextBox ID="ZipTextBox" runat="server"
                                CssClass="form-control"
                                placeholder="Postal Code" />
                        </div>

                        <asp:Button ID="CalculateShippingBtn" runat="server"
                            CssClass="calculate-btn"
                            Text="Calculate Shipping"
                            OnClick="CalculateShipping_Click" />
                    </div>
                </div>
            </div>
        </div>
        <%-- Footer --%>
        <uc:Footer ID="Footer1" runat="server" />
    </form>

    <script type="text/javascript">
        function updateQuantityClient(button, change) {
            const quantitySpan = button.parentElement.querySelector('.quantity');
            const currentQuantity = parseInt(quantitySpan.textContent);
            const newQuantity = Math.max(1, currentQuantity + change);

            quantitySpan.textContent = newQuantity;

            // Update total for this item
            const cartItem = button.closest('.cart-item');
            const priceElement = cartItem.querySelector('.price');
            const totalElement = cartItem.querySelector('.total');
            const price = parseFloat(priceElement.textContent.replace('$', ''));
            const newTotal = price * newQuantity;

            totalElement.textContent = '$' + newTotal.toFixed(2);

            // Update cart totals
            updateCartTotals();
        }

        function updateCartTotals() {
            const totalElements = document.querySelectorAll('.cart-item .total');
            let subtotal = 0;

            totalElements.forEach(element => {
                subtotal += parseFloat(element.textContent.replace('$', ''));
            });

            const subtotalLabel = document.querySelector('#<%= SubtotalLabel.ClientID %>');
            const totalLabel = document.querySelector('#<%= TotalLabel.ClientID %>');

            if (subtotalLabel) subtotalLabel.textContent = '$' + subtotal.toFixed(2);
            if (totalLabel) totalLabel.textContent = '$' + subtotal.toFixed(2);
        }

        // Page load event
        document.addEventListener('DOMContentLoaded', function () {
            updateCartTotals();
        });
    </script>
</body>
</html>
