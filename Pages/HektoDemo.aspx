<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HektoDemo.aspx.cs" Inherits="Btl_Web.Pages.HektoDemo" %>

<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Checkout - Hekto Demo</title>
    <link rel="stylesheet" href="../Assets/CSS/HektoDemo.css" />
</head>
<body>
    <uc:Header ID="Header" runat="server" />
    <form id="form1" runat="server">
        <h2 style="text-align: center;">Hekto Demo</h2>
        <div class="checkout-wrapper">
            <div class="checkout-left">
                <div class="form-section">
                    <h3>Contact Information</h3>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="input" placeholder="Email"></asp:TextBox>
                    <asp:TextBox ID="txtPhone" runat="server" CssClass="input" placeholder="Phone"></asp:TextBox>
                    <label class="checkbox-label">
                        <asp:CheckBox ID="NewsCheckbox" runat="server" />
                        Keep me up to date on news and exclusive offers
                    </label>
                </div>

                <div class="form-section">
                    <h3>Shipping Address</h3>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="input" placeholder="Address"></asp:TextBox>
                    <asp:TextBox ID="txtCity" runat="server" CssClass="input" placeholder="City"></asp:TextBox>
                    <asp:TextBox ID="txtPostal" runat="server" CssClass="input" placeholder="Postal Code"></asp:TextBox>
                </div>
            </div>

            <div class="checkout-right">
                <asp:Repeater ID="OrderSummaryRepeater" runat="server">
                    <ItemTemplate>
                        <div class="cart-item">
                            <div class="cart-item-left">
                                <img src='<%# Eval("ImageUrl") %>' alt="Product" class="cart-thumb" />
                                <div class="cart-info">
                                    <strong><%# Eval("ProductName") %></strong>
                                    <p>Color: <%# Eval("Color") %></p>
                                </div>
                            </div>
                            <div class="cart-price">$<%# Eval("Total", "{0:F2}") %></div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>

                <div class="summary-box">
                    <div class="summary-line">
                        <span>Subtotals:</span>
                        <asp:Label ID="SubtotalLabel" runat="server" CssClass="summary-value" />
                    </div>
                    <div class="summary-line">
                        <span>Totals:</span>
                        <asp:Label ID="TotalLabel" runat="server" CssClass="summary-value total" />
                    </div>
                    <p class="shipping-note">Shipping & taxes calculated at checkout</p>
                    <asp:Button ID="CheckoutBtn" runat="server" Text="Proceed To Checkout"
                        CssClass="btn btn-green" OnClick="CheckoutBtn_Click" />
                </div>
            </div>
        </div>
    </form>
    <uc:Footer ID="Footer" runat="server" />
</body>
</html>

