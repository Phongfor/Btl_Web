using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web.UI;

namespace Btl_Web.Pages
{
    public partial class HektoDemo : System.Web.UI.Page
    {
        protected global::System.Web.UI.WebControls.Repeater OrderSummaryRepeater;
        protected global::System.Web.UI.WebControls.Label SubtotalLabel;
        protected global::System.Web.UI.WebControls.Label TotalLabel;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadOrderSummary();
        }

        private void LoadOrderSummary()
        {
            List<CartItem> cart = Session["CartItems"] as List<CartItem>;
            if (cart == null)
            {
                cart = new List<CartItem>();
            }

            OrderSummaryRepeater.DataSource = cart;
            OrderSummaryRepeater.DataBind();

            decimal total = 0m;
            if (cart.Count > 0)
            {
                total = cart.Sum(item => item.Total);
            }

            string formattedTotal = $"${total:F2}";
            SubtotalLabel.Text = formattedTotal;
            TotalLabel.Text = formattedTotal;
        }


        protected void CheckoutBtn_Click(object sender, EventArgs e)
        {
            try
            {
                string email = txtEmail.Text.Trim();
                string phone = txtPhone.Text.Trim();
                string address = txtAddress.Text.Trim();

                if (string.IsNullOrWhiteSpace(email) || string.IsNullOrWhiteSpace(address))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert",
                        "alert('Please fill in at least Email and Address.');", true);
                    return;
                }

                var cart = Session["CartItems"] as List<CartItem>;
                if (cart == null || cart.Count == 0)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "alert",
                        "alert('Your cart is empty!');", true);
                    return;
                }

                decimal amount = 0;

                foreach (CartItem item in cart)
                {
                    amount += item.Total;
                }


                using (SqlConnection conn = Connection.GetSqlConnection())
                {
                    conn.Open();
                    string query = @"INSERT INTO tbltransaction (status, user_id, user_name, user_email, user_phone, amount, payment, payment_info)
                                                         VALUES (@status, @uid, @uname, @email, @phone, @amount, @pay, @info)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@status", "Pending");
                        cmd.Parameters.AddWithValue("@uid", DBNull.Value);
                        cmd.Parameters.AddWithValue("@uname", "Guest");
                        cmd.Parameters.AddWithValue("@email", email);
                        cmd.Parameters.AddWithValue("@phone", phone);
                        cmd.Parameters.AddWithValue("@amount", amount);
                        cmd.Parameters.AddWithValue("@pay", "Cash");
                        cmd.Parameters.AddWithValue("@info", address);
                        cmd.ExecuteNonQuery();
                    }
                }

                Session["CartItems"] = null;
                Response.Redirect("OrderCompleted.aspx");
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "alert",
                    $"alert('Lỗi khi đặt hàng: {ex.Message}');", true);
            }
        }

    }
}

