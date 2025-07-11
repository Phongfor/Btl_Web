<%@ Page Language="C#" AutoEventWireup="true" %>

<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hekto Demo</title>
    <link rel="stylesheet" href="../Assets/CSS/HektoDemo.css" />
</head>
<body>
    <uc:Header ID="Header1" runat="server" />
    <main>
        <h1>Hekto Demo</h1>
        <section class="checkout">
            <div class="contact-form">
                <h3>Contact Information</h3>
                <input type="email" placeholder="Email or mobile phone number" />
                <label class="checkbox-label">
                    <input type="checkbox" />
                    Keep me up to date on news and exclusive offers
                </label>

                <h3>Shipping Address</h3>
                <input type="text" placeholder="First name" />
                <input type="text" placeholder="Last name" />
                <input type="text" placeholder="Address" />
                <input type="text" placeholder="Apartment, suite, etc. (optional)" />
                <input type="text" placeholder="City" />
                <input type="text" placeholder="Bangladesh" />
                <input type="text" placeholder="Postal Code" />
                <button>Continue Shipping</button>
            </div>
            <div class="order-summary">
                <h3>Order Summary</h3>
                <ul>
                    <li>Uk denim consquat <span>$100</span></li>
                    <li>Uk denim consquat <span>$50</span></li>
                    <li>Cake Brown <span>$50</span></li>
                    <li>Uk denim consquat <span>$100</span></li>
                </ul>
                <div class="subtotal">Subtotal: <span>£219.00</span></div>
                <div class="shipping">Shipping: Calculated at checkout</div>
                <div class="total">Total: <span>£219.00</span></div>
                <button>Proceed to Checkout</button>
            </div>
        </section>
    </main>
    <uc:Footer ID="Footer1" runat="server" />
</body>
</html>
