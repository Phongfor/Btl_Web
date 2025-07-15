<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Btl_Web.Register" %>
<%@ Register Src="Header.ascx" TagName="Header" TagPrefix="uc" %>
<%@ Register Src="Footer.ascx" TagName="Footer" TagPrefix="uc" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../Assets/CSS/Footer.css">
    <link rel="stylesheet" href="../Assets/CSS/Header.css">
    <link rel="stylesheet" href="../Assets/CSS/Register.css">
</head>
<body>
      <!-- ✅ Header giữ nguyên -->
   <uc:Header ID="Header" runat="server" />


    <main class="form-wrapper">
    <form id="form1" runat="server">
        <div class="container">
            <h2>Register</h2>

            <asp:TextBox ID="txtFullName" runat="server" CssClass="input-box" Placeholder="Full Name" />
            <asp:TextBox ID="txtEmail" runat="server" CssClass="input-box" Placeholder="Email" />
            <asp:TextBox ID="txtPassword" runat="server" CssClass="input-box" TextMode="Password" Placeholder="Password" />
            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="input-box" TextMode="Password" Placeholder="Confirm Password" />
             <asp:TextBox ID="txtAddress" runat="server" CssClass="input-box" Placeholder="Address" />

            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="register-button" OnClick="btnRegister_Click" />
             <asp:Button ID="btnSign" runat="server" Text="Sign" CssClass="signin-button" OnClick="btnSign_Click" />
            <asp:Label ID="lblMessage" runat="server" CssClass="message" />
        </div>
    </form>

        </main>

    <uc:Footer ID="Footer" runat="server" />
    <script src="../Scripts/Register.js"></script>
</body>
</html>
