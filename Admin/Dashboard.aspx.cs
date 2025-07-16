using System;
using System.Data.SqlClient;

namespace Btl_Web.Admin
{
    public partial class Dashboard : System.Web.UI.Page
    {
        public int TotalOrders = 0;
        public decimal TotalRevenue = 0;
        public int TotalUsers = 0;
        public int PendingOrders = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDashboardStats();
                LoadLatestOrders();
            }
        }

        private void LoadDashboardStats()
        {
            using (SqlConnection conn = Connection.GetSqlConnection())
            {
                conn.Open();

                // Tổng số đơn
                SqlCommand cmd1 = new SqlCommand("SELECT COUNT(*) FROM [order]", conn);
                TotalOrders = (int)cmd1.ExecuteScalar();

                // Tổng doanh thu (chỉ đơn hoàn thành)
                SqlCommand cmd2 = new SqlCommand("SELECT ISNULL(SUM(total_amount), 0) FROM [order] WHERE status = 'Completed'", conn);
                TotalRevenue = (decimal)cmd2.ExecuteScalar();

                // Tổng user
                SqlCommand cmd3 = new SqlCommand("SELECT COUNT(*) FROM [tblusers]", conn);
                TotalUsers = (int)cmd3.ExecuteScalar();

                // Đơn chờ xử lý
                SqlCommand cmd4 = new SqlCommand("SELECT COUNT(*) FROM [order] WHERE status = 'Pending'", conn);
                PendingOrders = (int)cmd4.ExecuteScalar();
            }
        }

        private void LoadLatestOrders()
        {
            using (SqlConnection conn = Connection.GetSqlConnection())
            {
                string query = @"SELECT TOP 5 o.order_id, t.user_name, o.total_amount, o.status, o.order_date
                                 FROM [order] o
                                 JOIN tbltransaction t ON o.transaction_id = t.transaction_id
                                 ORDER BY o.order_date DESC";

                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();

                gvLatestOrders.DataSource = dr;
                gvLatestOrders.DataBind();
            }
        }
    }
}
