<%@ Page Language="C#" AutoEventWireup="true"
    MasterPageFile="~/Admin/AdminMaster.master"
    CodeBehind="Products.aspx.cs"
    Inherits="Btl_Web.Admin.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
     body {
         font-family: Arial, sans-serif;
         background: #f9f9f9;
         padding: 40px;
         color: #333;
     }

     h2, h3 {
         color: #2c3e50;
     }

     input[type="text"], textarea, input[type="file"], select {
         width: 300px;
         padding: 8px 12px;
         margin: 5px 0 15px 0;
         border: 1px solid #ccc;
         border-radius: 4px;
         display: block;
         transition: border-color 0.3s ease;
     }

         input[type="text"]:focus, textarea:focus {
             border-color: #3498db;
             outline: none;
         }

     .aspNet-Button {
         background: #3498db;
         color: #fff;
         border: none;
         padding: 10px 22px;
         border-radius: 5px;
         cursor: pointer;
         font-size: 15px;
         transition: all 0.3s ease;
         box-shadow: 0 3px 6px rgba(0,0,0,0.1);
     }

         .aspNet-Button:hover {
             background: #2980b9;
             box-shadow: 0 5px 10px rgba(0,0,0,0.2);
         }

     hr {
         margin: 40px 0;
         border: 0;
         height: 1px;
         background: #ddd;
     }

     .aspNet-GridView {
         width: 100%;
         border-collapse: collapse;
         background: #fff;
         box-shadow: 0 2px 6px rgba(0,0,0,0.1);
     }

         .aspNet-GridView th {
             background: #3498db;
             color: white;
             padding: 10px;
             text-align: left;
         }

         .aspNet-GridView td {
             padding: 10px;
             border-bottom: 1px solid #ddd;
         }

         .aspNet-GridView tr:nth-child(even) {
             background: #f2f6fa;
         }

         .aspNet-GridView tr:hover {
             background: #e1f0ff;
         }

         .aspNet-GridView td input[type="text"] {
             width: 100%;
         }
         /* Style chung cho các nút CommandField */
         .aspNet-GridView a {
             display: inline-block;
             padding: 5px 12px;
             margin: 2px;
             text-decoration: none;
             border-radius: 4px;
             font-size: 14px;
             transition: all 0.3s ease;
         }

             /* Nút Edit */
             .aspNet-GridView a:contains('Edit') {
                 background: #3498db;
                 color: #fff;
             }

                 .aspNet-GridView a:contains('Edit'):hover {
                     background: #2980b9;
                 }

             /* Nút Delete */
             .aspNet-GridView a:contains('Delete') {
                 background: #e74c3c;
                 color: #fff;
             }

                 .aspNet-GridView a:contains('Delete'):hover {
                     background: #c0392b;
                 }
 </style>

    <h2>Products Management</h2>

    <h3>Add Product</h3>
    <asp:TextBox ID="txtName" runat="server" Placeholder="Name" /><br />
    <asp:TextBox ID="txtPrice" runat="server" Placeholder="Price" /><br />
    <asp:TextBox ID="txtQuantity" runat="server" Placeholder="Quantity" /><br />
    <asp:TextBox ID="txtDiscount" runat="server" Placeholder="Discount" /><br />
    <asp:TextBox ID="txtBrand" runat="server" Placeholder="Brand" /><br />
    <asp:TextBox ID="txtDescription" runat="server" Placeholder="Description" /><br />
    <asp:FileUpload ID="fuImage" runat="server" /><br />
    <asp:Button CssClass="aspNet-Button" ID="btnAdd" runat="server" Text="Add Product" OnClick="btnAdd_Click" />

    <hr />

    <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False"
        OnRowEditing="gvProducts_RowEditing"
        OnRowUpdating="gvProducts_RowUpdating"
        OnRowCancelingEdit="gvProducts_RowCancelingEdit"
        OnRowDeleting="gvProducts_RowDeleting" DataKeyNames="product_id">
        <Columns>
            <asp:BoundField DataField="product_id" HeaderText="ID" ReadOnly="True" />
            <asp:BoundField DataField="namePro" HeaderText="Name" />
            <asp:BoundField DataField="price" HeaderText="Price" />
            <asp:BoundField DataField="quantity" HeaderText="Quantity" />
            <asp:BoundField DataField="discount" HeaderText="Discount" />
            <asp:BoundField DataField="brand" HeaderText="Brand" />
            <asp:BoundField DataField="description" HeaderText="Description" />
            <asp:TemplateField HeaderText="Image">
                <ItemTemplate>
                    <img src='<%# Eval("image_link") %>' alt="Product Image" style="height: 80px; border-radius: 4px;" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>

</asp:Content>
