<%@ Page Language="C#" AutoEventWireup="true"
    MasterPageFile="~/Admin/AdminMaster.master"
    CodeBehind="Dashboard.aspx.cs"
    Inherits="Btl_Web.Admin.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .dashboard-boxes {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }

        .box {
            flex: 1;
            min-width: 200px;
            background: #3498db;
            color: #fff;
            padding: 30px;
            border-radius: 8px;
            text-align: center;
            box-shadow: 0 3px 6px rgba(0,0,0,0.1);
        }

        .box h3 {
            font-size: 28px;
            margin: 0;
        }

        .box p {
            margin: 8px 0 0;
            font-size: 16px;
        }

        table {
            width: 100%;
            margin-top: 40px;
            border-collapse: collapse;
            background: #fff;
        }

        th, td {
            text-align: left;
            padding: 12px 16px;
            border-bottom: 1px solid #ddd;
        }

        th {
            background: #2980b9;
            color: #fff;
        }

        tr:nth-child(even) {
            background: #f2f6fa;
        }

        tr:hover {
            background: #e1f0ff;
        }
    </style>

    <h2>Admin Dashboard</h2>

    <div class="dashboard-boxes">
        <div class="box">
            <h3><%= TotalOrders %></h3>
            <p>Total Orders</p>
        </div>
        <div class="box">
            <h3><%= TotalRevenue %></h3>
            <p>Total Revenue</p>
        </div>
        <div class="box">
            <h3><%= TotalUsers %></h3>
            <p>Total Users</p>
        </div>
        <div class="box">
            <h3><%= PendingOrders %></h3>
            <p>Pending Orders</p>
        </div>
    </div>

    <h3>Latest Orders</h3>
    <asp:GridView ID="gvLatestOrders" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="order_id" HeaderText="Order ID" />
            <asp:BoundField DataField="user_name" HeaderText="User Name" />
            <asp:BoundField DataField="total_amount" HeaderText="Amount" DataFormatString="{0:C}" />
            <asp:BoundField DataField="status" HeaderText="Status" />
            <asp:BoundField DataField="order_date" HeaderText="Order Date" DataFormatString="{0:yyyy-MM-dd}" />
        </Columns>
    </asp:GridView>
</asp:Content>
