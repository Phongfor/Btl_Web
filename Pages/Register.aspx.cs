using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            string adress = txtAddress.Text;

            if (string.IsNullOrEmpty(fullName) || string.IsNullOrEmpty(email) ||
                string.IsNullOrEmpty(password) || string.IsNullOrEmpty(confirmPassword)
                || string.IsNullOrEmpty(adress))
            {
                lblMessage.Text = "Vui lòng điền đầy đủ thông tin.";
                return;
            }

            if (password != confirmPassword)
            {
                lblMessage.Text = "Mật khẩu xác nhận không khớp.";
                return;
            }

            List<User> userList = Application["UserList"] as List<User>;
            if (userList == null) userList = new List<User>();

            if (userList.Exists(u => u.Email.Equals(email, StringComparison.OrdinalIgnoreCase)))
            {
                lblMessage.Text = "Email đã tồn tại.";
                return;
            }

            User newUser = new User
            {
                FullName = fullName,
                Email = email,
                Password = password
            };

            userList.Add(newUser);
            Application["UserList"] = userList;

            Response.Redirect("login.aspx");
        }
        protected void btnSign_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

    }
}