using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Btl_Web.Pages
{
    public partial class Shoplist : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var products = GetProductsFromDatabase();
                ProductHtml.Text = GenerateProductHtml(products);
            }
        }

        private List<Product> GetProductsFromDatabase()
        {
            var products = new List<Product>();

            
            using (SqlConnection conn = Connection.GetSqlConnection())
            {
                conn.Open();

                // Lấy Product + thông tin cơ bản
                string sql = @"
            SELECT p.product_id, p.namePro, p.price, p.discount, 
                   p.created, p.catalog_id, c.namecatalog,p.description,p.brand                
            FROM product p
            JOIN tblcatalog c ON p.catalog_id = c.catalog_id";

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        var product = new Product
                        {
                            Id = reader.GetInt32(reader.GetOrdinal("product_id")),
                            Name = reader.GetString(reader.GetOrdinal("namePro")),
                            Price = (double)reader.GetDecimal(reader.GetOrdinal("price")),
                            OldPrice = (double)(reader.GetDecimal(reader.GetOrdinal("price")) + reader.GetDecimal(reader.GetOrdinal("discount"))),
                            Description = reader.GetString(reader.GetOrdinal("description")),
                            Brand = reader.GetString(reader.GetOrdinal("brand")), 
                            Category = reader.GetString(reader.GetOrdinal("namecatalog")),
                            Images = new List<string>()
                        };
                        products.Add(product);
                    }
                }

                // Lấy Images cho từng Product
                foreach (var product in products)
                {
                    string sqlImg = "SELECT image_link FROM product_images WHERE product_id = @product_id";
                    using (SqlCommand cmdImg = new SqlCommand(sqlImg, conn))
                    {
                        cmdImg.Parameters.AddWithValue("@product_id", product.Id);
                        using (SqlDataReader imgReader = cmdImg.ExecuteReader())
                        {
                            while (imgReader.Read())
                            {
                                product.Images.Add(imgReader.GetString(0));
                            }
                        }
                    }
                }
            }

            return products;
        }

        private string GenerateProductHtml(List<Product> products)
        {
            string html = "";

            foreach (var p in products)
            {
                html += $@"
 <div class='product-card' 
      data-id='{p.Id}' 
      data-brand='{p.Brand}' 
      data-category='{p.Category}' 
      data-price='{p.Price}'>
     <div class='image-container'>
         <img src='{(p.Images.Count > 0 ? p.Images[0] : "default.jpg")}' alt='{p.Name}'>
     </div>
     <h4>{p.Name}</h4>
     <p>${p.Price:F2} <span>${p.OldPrice:F2}</span></p>
     <span>★★★★☆</span>
     <p>{p.Description}</p>
     <div class='button-group'>
         <button>Buy</button>
         <button>♥</button>
         <button>ℹ</button>
     </div>
 </div>";
            }

            return html;
        }



    }
}