<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Btl_Web.Login" %>

<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   
   
    <link rel="stylesheet" href="../Assets/CSS/Login.css">
</head>
<body>
    <!-- ✅ Header giữ nguyên -->
     <uc:Header ID="Header" runat="server" />


    <!-- ✅ Nội dung login đặt trong form -->
    <form id="form1" runat="server">
        <div class="Tieude">
            <h1>My Account</h1>
            <div class="breadcrumb">Home > Pages > My Account</div>
        </div>

        <main>
            <div class="login-container">
                <h2>Login</h2>
                <p class="subtext">Please login using account detail below.</p>

                <asp:TextBox ID="txtEmail" runat="server" CssClass="input-box" Placeholder="Email Address" TextMode="Email"></asp:TextBox>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="input-box" Placeholder="Password" TextMode="Password"></asp:TextBox>

                <a href="#" class="forgot-password">Forgot your password?</a>

                <asp:Button ID="btnLogin" runat="server" Text="Sign In" CssClass="login-button" OnClick="btnLogin_Click" />

                <p class="create-account">Don't have an Account? <a href="Register.aspx">Create account</a></p>
            </div>
        </main>
    </form>

   <uc:Footer ID="Footer" runat="server" />
   

   
</body>
</html>
