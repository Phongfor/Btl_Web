<%@ Page Language="C#" AutoEventWireup="true" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc" %>

<!DOCTYPE html>
<html>
<head>
    <title>Order Completed - Hekto</title>
    <link rel="stylesheet" href="../Assets/CSS/OrderCompleted.css" />

</head>
<body>
    <uc:Header ID="Header" runat="server" />
    <main>
        <section class="order-completed">
            <h1>Order Completed</h1>
            <div class="breadcrumbs">Home > Pages > Order Completed</div>
            <div class="content-wrapper">
                <div class="left-section">
                    <img src="../Assets/Images/tich.png" alt="Check Mark" class="check-icon" />
                    <h2>Your Order Is Completed!</h2>
                    <p>Thank you for your order! Your order is being processed and will be completed within 3-5 hours. You will receive an email confirmation when your order is completed.</p>
                    <button class="continue-shopping" onclick="window.location.href='Shoplist.aspx'">Continue Shopping</button>
                </div>
            </div>
                <img id="imgPure" src="../Assets/Images/nhat.png" alt="Pure" />
        </section>
    </main>
    <uc:Footer ID="Footer" runat="server" />
</body>
</html>
