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
            var products = new List<Product>
            {
                new Product { Id = 1, Name = "Dictum morbi", Price = 26.00, OldPrice = 30.00,
                            Description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tellus porttitor purus, et volutpat sit." ,
                            Brand = "Coaster Furniture",
                            Category="Prestashop",
                            Images = new List<string>
                            {
                                "../Assets/Images/sp1.png",
                                "../Assets/Images/sp1.png",
                                "../Assets/Images/sp1.png",
                                "../Assets/Images/sp1.png"
                            } },

                new Product { Id = 2, Name = "Sodales sit", Price = 32.00, OldPrice = 52.00,
                            Description = "Mauris tellus porttitor purus Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tellus porttitor purus, et volutpat sit...." ,
                            Brand = "Fusion Dot High Fashion",
                            Category="Magentor",
                            Images = new List<String>{
                            "../Assets/Images/sp2.png",
                            "../Assets/Images/sp2.png",
                            "../Assets/Images/sp2.png",
                            "../Assets/Images/sp2.png",
                            }},

                new Product { Id = 3, Name = "Dictum morbi", Price = 26.00, OldPrice = 30.00,
                            Description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tellus porttitor purus, et volutpat sit." ,
                            Brand = "Unique Furniture Restorer",
                            Category="Bigcommerce",
                            Images = new List<string>
                            {
                                "../Assets/Images/sp3.png",
                                "../Assets/Images/sp3.png",
                                "../Assets/Images/sp3.png",
                                "../Assets/Images/sp3.png"
                            } },

                new Product { Id = 4, Name = "Sodales sit", Price = 32.00, OldPrice = 52.00,
                            Description = "Mauris tellus porttitor purus Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tellus porttitor purus, et volutpat sit...." ,
                            Brand = "Dream Furniture Flipping",
                            Category="osCommerce",
                            Images = new List<String>{
                            "../Assets/Images/sp4.png",
                            "../Assets/Images/sp4.png",
                            "../Assets/Images/sp4.png",
                            "../Assets/Images/sp4.png",
                            }},

                new Product { Id = 5, Name = "Dictum morbi", Price = 26.00, OldPrice = 30.00,
                            Description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tellus porttitor purus, et volutpat sit." ,
                            Brand = "Young Repurposed",
                            Category="3dcart",
                            Images = new List<string>
                            {
                                "../Assets/Images/sp5.png",
                                "../Assets/Images/sp5.png",
                                "../Assets/Images/sp5.png",
                                "../Assets/Images/sp5.png"
                            } },

                new Product { Id = 6, Name = "Sodales sit", Price = 32.00, OldPrice = 52.00,
                            Description = "Mauris tellus porttitor purus Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tellus porttitor purus, et volutpat sit...." ,
                            Brand = "Green DIY Furniture",
                            Category="Accessories",
                            Images = new List<String>{
                            "../Assets/Images/sp6.png",
                            "../Assets/Images/sp6.png",
                            "../Assets/Images/sp6.png",
                            "../Assets/Images/sp6.png",
                            }},

                new Product { Id = 7, Name = "Dictum morbi", Price = 26.00, OldPrice = 30.00,
                            Description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tellus porttitor purus, et volutpat sit." ,
                            Brand = "Fusion Dot High Fashion",
                            Category="Accessories",
                            Images = new List<string>
                            {
                                "../Assets/Images/sp7.png",
                                "../Assets/Images/sp7.png",
                                "../Assets/Images/sp7.png",
                                "../Assets/Images/sp7.png"
                            } },

                new Product { Id = 8, Name = "Sodales sit", Price = 32.00, OldPrice = 52.00,
                            Description = "Mauris tellus porttitor purus Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tellus porttitor purus, et volutpat sit...." ,
                            Brand = "Fusion Dot High Fashion",
                            Category="Jewellery",
                            Images = new List<String>{
                            "../Assets/Images/sp8.png",
                            "../Assets/Images/sp8.png",
                            "../Assets/Images/sp8.png",
                            "../Assets/Images/sp8.png",
                            }},

                new Product { Id = 9, Name = "Dictum morbi", Price = 26.00, OldPrice = 30.00,
                            Description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris tellus porttitor purus, et volutpat sit." ,
                            Brand = "Young Repurposed",
                            Category="Prestashop",
                            Images = new List<string>
                            {
                                "../Assets/Images/sp9.png",
                                "../Assets/Images/sp9.png",
                                "../Assets/Images/sp9.png",
                                "../Assets/Images/sp9.png"
                            } },     

            };

            Application["Products"] = products; // ✅ Gán danh sách sản phẩm

            var users = new List<User>
    {
        new User { FullName = "Nguyễn Văn A", Email = "a@gmail.com", Password = "123456", Adress = "123 Lê Duẩn, Đà Nẵng" },
        new User { FullName = "Trần Thị B", Email = "b@yahoo.com", Password = "abc123", Adress = "456 Nguyễn Huệ, Huế" },
        new User { FullName = "Lê Văn C", Email = "c@hotmail.com", Password = "pass@123", Adress = "789 Trần Hưng Đạo, TP.HCM" }
    };

            if (Application["UserList"] == null)
            {
                Application["UserList"] = users; // ✅ Không ghi đè nếu đã tồn tại
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