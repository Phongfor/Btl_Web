using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Btl_Web.Admin
{
    public partial class Order : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadOrders();
            }
        }

        private void LoadOrders()
        {
            string query = @"SELECT 
                        o.order_id,
                        t.user_name,
                        t.user_email,
                        t.user_phone,
                        o.status,
                        o.total_amount,
                        t.created
                     FROM 
                        [dbo].[order] o
                     JOIN 
                        tbltransaction t ON o.transaction_id = t.transaction_id";



            using (SqlConnection conn = Connection.GetSqlConnection())
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                conn.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                gvOrders.DataSource = reader;
                gvOrders.DataBind();
            }
        }


        protected void gvOrders_SelectedIndexChanged(object sender, EventArgs e)
        {
            int orderId = Convert.ToInt32(gvOrders.SelectedDataKey.Value);
            LoadOrderDetails(orderId);
        }

        private void LoadOrderDetails(int orderId)
        {
            string query = @"SELECT 
                          od.detail_id, 
                          p.namePro, 
                          od.qty, 
                          od.price,                  
                          (od.qty * od.price) AS total_price
                        FROM order_detail od
                        JOIN product p ON od.product_id = p.product_id
                        WHERE od.order_id = @order_id";

            using (SqlConnection conn = Connection.GetSqlConnection())
            {
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@order_id", orderId);
                conn.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                gvOrderDetails.DataSource = dr;
                gvOrderDetails.DataBind();
            }
        }

    }
}
