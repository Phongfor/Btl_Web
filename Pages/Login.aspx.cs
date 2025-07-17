using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;         
using System.Drawing;
namespace Btl_Web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string input = txtEmail.Text.Trim(); 
            string password = txtPassword.Text.Trim();

            if (string.IsNullOrEmpty(input) || string.IsNullOrEmpty(password))
            {
                lblMessage.Text = "Vui lòng nhập đầy đủ thông tin.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            try
            {
                using (SqlConnection conn = Connection.GetSqlConnection()) 
                {
                    conn.Open();

                    string sqlAdmin = "SELECT nameTkAd FROM tbladmin WHERE usernameAd = @username AND password = @password";
                    using (SqlCommand cmd = new SqlCommand(sqlAdmin, conn))
                    {
                        cmd.Parameters.AddWithValue("@username", input);
                        cmd.Parameters.AddWithValue("@password", password);

                        object adminName = cmd.ExecuteScalar();
                        if (adminName != null)
                        {
                            Session["username"] = input;
                            Session["name"] = adminName.ToString();
                            Response.Redirect("/Admin/Products.aspx");
                            return;
                        }
                    }

                    string sqlUser = "SELECT nameUser FROM tblusers WHERE email = @username AND password = @password";
                    using (SqlCommand cmd = new SqlCommand(sqlUser, conn))
                    {
                        cmd.Parameters.AddWithValue("@username", input);
                        cmd.Parameters.AddWithValue("@password", password);

                        object userName = cmd.ExecuteScalar();
                        if (userName != null)
                        {
                            Session["email"] = input;
                            Session["name"] = userName.ToString();
                            Response.Redirect("Home.aspx");
                            return;
                        }
                    }

                    lblMessage.Text = "Sai tên đăng nhập hoặc mật khẩu!";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
            }
            catch (SqlException ex)
            {
                lblMessage.Text = "Lỗi kết nối cơ sở dữ liệu: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Đã xảy ra lỗi hệ thống: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }

    }
}
