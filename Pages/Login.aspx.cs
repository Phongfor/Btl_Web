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
        protected void Page_Load(object sender, EventArgs e)
        {
            // Không xử lý đăng nhập ở đây!
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();
            string password = txtPassword.Text.Trim();

            // Lấy danh sách người dùng từ Application
            List<User> userList = Application["UserList"] as List<User>;

            if (userList == null || userList.Count == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Không có người dùng nào được lưu.');", true);
                return;
            }

            // Tìm người dùng khớp email và mật khẩu
            User user = userList.FirstOrDefault(u =>
                u.Email.Equals(email, StringComparison.OrdinalIgnoreCase) && u.Password == password);

            if (user != null)
            {
                // Lưu thông tin user vào session
                Session["email"] = user.Email;
                Session["fullname"] = user.FullName;
                Session["address"] = user.Adress;

                Response.Redirect("Home.aspx");
            }
            else
            {
                // Thông báo lỗi
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Email hoặc mật khẩu không đúng.');", true);
            }
        }
    }
}