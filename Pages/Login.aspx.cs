using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Btl_Web
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Lấy danh sách người dùng từ Application
            List<User> userList = Application["UserList"] as List<User>;

            if (userList == null || userList.Count == 0)
            {
                lblMessage.Text = "Không có người dùng nào được lưu.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Tìm người dùng khớp email và mật khẩu
            User user = userList.FirstOrDefault(u =>
                u.Email.Equals(email, StringComparison.OrdinalIgnoreCase) && u.Password == password);

            if (user != null)
            {
                Session["email"] = user.Email;
                Session["fullname"] = user.FullName;
                Session["address"] = user.Adress;

                Response.Redirect("Home.aspx");
            }
            else
            {
                lblMessage.Text = "Email hoặc mật khẩu không đúng.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
