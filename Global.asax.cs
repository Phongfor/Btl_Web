using System;
using System.Collections.Generic;
using System.Drawing.Drawing2D;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Btl_Web
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {

            var users = new List<User>
    {
        new User { FullName = "Nguyễn Văn A", Email = "a@gmail.com", Password = "123456", Adress = "123 Lê Duẩn, Đà Nẵng" },
        new User { FullName = "Trần Thị B", Email = "b@yahoo.com", Password = "abc123", Adress = "456 Nguyễn Huệ, Huế" },
        new User { FullName = "Lê Văn C", Email = "c@hotmail.com", Password = "pass@123", Adress = "789 Trần Hưng Đạo, TP.HCM" }
    };

            if (Application["UserList"] == null)
            {
                Application["UserList"] = users; 
            }
        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}