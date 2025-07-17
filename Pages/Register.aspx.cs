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
    public partial class Register : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e) { }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            string fullName = txtFullName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;
            string address = txtAddress.Text;

            if (string.IsNullOrEmpty(fullName) || string.IsNullOrEmpty(email) ||
                string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmPassword) ||
                string.IsNullOrEmpty(address))
            {
                lblMessage.Text = "Vui lòng điền đầy đủ thông tin.";
                return;
            }

            if (password != confirmPassword)
            {
                lblMessage.Text = "Mật khẩu xác nhận không khớp.";
                return;
            }

            try
            {
                using (SqlConnection conn = Connection.GetSqlConnection())
                {
                    conn.Open();

                    // Kiểm tra email đã tồn tại
                    string checkQuery = "SELECT COUNT(*) FROM tblusers WHERE email = @Email";
                    SqlCommand checkCmd = new SqlCommand(checkQuery, conn);
                    checkCmd.Parameters.AddWithValue("@Email", email);
                    int count = (int)checkCmd.ExecuteScalar();

                    if (count > 0)
                    {
                        lblMessage.Text = "Email đã tồn tại.";
                        return;
                    }

                    // Thêm người dùng mới
                    string insertQuery = "INSERT INTO tblusers (nameUser, email, password, address, created) VALUES (@FullName, @Email, @Password, @Address, GETDATE())";
                    SqlCommand insertCmd = new SqlCommand(insertQuery, conn);
                    insertCmd.Parameters.AddWithValue("@FullName", fullName);
                    insertCmd.Parameters.AddWithValue("@Email", email);
                    insertCmd.Parameters.AddWithValue("@Password", password);
                    insertCmd.Parameters.AddWithValue("@Address", address);

                    insertCmd.ExecuteNonQuery();
                }

                // Chuyển sang trang đăng nhập sau khi đăng ký thành công
                Response.Redirect("login.aspx");
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Lỗi khi đăng ký: " + ex.Message;
            }
        }
            protected void btnSign_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

    }
}