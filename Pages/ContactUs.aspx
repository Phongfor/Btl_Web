<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Btl_Web.ContactUs" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <link rel="stylesheet" href="../Assets/CSS/ContactUs.css" />
</head>
<body>
    <uc:Header ID="Header" runat="server" />
    <form id="form1" runat="server">
        <div class="contact-header">
            <h2>Contact Us</h2>
            <p><span>Home</span> . Pages . <span class="active">Contact us</span></p>
        </div>

        <section class="contact-info">
            <div class="info-left">
                <h3>Information About us</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mattis neque ultrices mattis aliquam, malesuada diam est. Malesuada sem tristique amet erat vitae eget dolor lobortis. Accumsan faucibus vitae auctor quis bibendum quam.</p>
                <div class="dots">
                    <span class="dot purple"></span>
                    <span class="dot blue"></span>
                    <span class="dot cyan"></span>
                </div>
            </div>
            <div class="info-right">
                <h3>Contact Way</h3>
                <ul>
                    <li><span class="circle purple"></span> Tel: 877-67-88-99 <br /> E-Mail: shop@store.com</li>
                    <li><span class="circle red"></span> Support Forum <br /> For over 24hr</li>
                    <li><span class="circle orange"></span> 20 Margaret st, London <br /> Great Britain, 3NM98-LK</li>
                    <li><span class="circle green"></span> Free standard shipping <br /> on all orders</li>
                </ul>
            </div>
        </section>

        <section class="contact-form-section">
            <div class="form-container">
                <h3>Get In Touch</h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mattis neque ultrices tristique amet erat vitae eget dolor los vitae lobortis quis bibendum quam.</p>
                <div class="contact-form">
                    <input type="text" placeholder="Your Name*" />
                    <input type="email" placeholder="Your E-mail" />
                    <input type="text" placeholder="Subject*" class="subject" />
                    <textarea placeholder="Type Your Message*"></textarea>
                    <button type="submit">Send Mail</button>
                </div>
            </div>
            <div class="form-image">
                <img src="../Assets/Images/Contract.png" alt="Contact illustration" />
            </div>
        </section>
    </form>
     <uc:Footer ID="Footer" runat="server" />
</body>
</html>
