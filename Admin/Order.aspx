<%@ Page Language="C#" AutoEventWireup="true"
    MasterPageFile="~/Admin/AdminMaster.master"
    CodeBehind="Order.aspx.cs"
    Inherits="Btl_Web.Admin.Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f9f9f9;
            margin: 0;
            padding: 40px;
            color: #333;
        }

        h2 {
            color: #2c3e50;
            margin-bottom: 20px;
        }

        h3 {
            color: #2980b9;
            margin-top: 40px;
        }

        .gridview {
            width: 100%;
            border-collapse: collapse;
            background: #fff;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            margin-bottom: 40px;
        }

        .gridview th, .gridview td {
            text-align: left;
            padding: 12px 16px;
        }

        .gridview th {
            background: #3498db;
            color: #fff;
        }

        .gridview tr:nth-child(even) {
            background: #f2f6fa;
        }

        .gridview tr:hover {
            background: #e8f4fd;
        }

        a {
            color: #3498db;
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }

        hr {
            margin: 30px 0;
            border: 0;
            height: 1px;
            background: #ddd;
        }
    </style>

    <h2>Orders Management</h2>

    <asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="False"
        CssClass="gridview"
        DataKeyNames="order_id"
        OnSelectedIndexChanged="gvOrders_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="order_id" HeaderText="Order ID" />
            <asp:BoundField DataField="user_name" HeaderText="Name" />
            <asp:BoundField DataField="user_email" HeaderText="Email" />
            <asp:BoundField DataField="user_phone" HeaderText="Phone" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            <asp:BoundField DataField="total_amount" HeaderText="Total Amount" DataFormatString="{0:C}" />
            <asp:BoundField DataField="created" HeaderText="Created" DataFormatString="{0:yyyy-MM-dd}" />
            <asp:CommandField ShowSelectButton="True" SelectText="View Details" />
        </Columns>
    </asp:GridView>

    <hr />

    <h3>Order Details</h3>
    <asp:GridView ID="gvOrderDetails" runat="server" AutoGenerateColumns="False" CssClass="gridview">
        <Columns>
            <asp:BoundField DataField="detail_id" HeaderText="Detail ID" />
            <asp:BoundField DataField="namePro" HeaderText="Product Name" />
            <asp:BoundField DataField="qty" HeaderText="Quantity" />
            <asp:BoundField DataField="price" HeaderText="Price" DataFormatString="{0:C}" />
            <asp:BoundField DataField="total_price" HeaderText="total_price" DataFormatString="{0:C}" />
        </Columns>
    </asp:GridView>
</asp:Content>
