using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Btl_Web.Pages
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = int.Parse(Request.QueryString["id"]);

                var product = GetProductById(id);
                if (product != null && product.Images.Count > 0)
                {
                    mainImage.Src = product.Images[0];

                    productName.InnerText = product.Name;
                    productDescription.InnerText = product.Description;
                    newPrice.InnerText = "$" + product.Price.ToString("F2");
                    oldPrice.InnerText = product.OldPrice > 0 ? "$" + product.OldPrice.ToString("F2") : "";
                }

                var relatedProducts = GetRelatedProducts(product.Brand, product.Id);

                string html = "";
                foreach (var rp in relatedProducts)
                {
                    html += $@"

                <a href='ProductDetails.aspx?id={rp.Id}' class='product-card'>
                    <img src='{rp.Images[0]}' alt='{rp.Name}'>
                    <div class='desc'>
                        <h4>{rp.Name}</h4>
                        <p>${rp.Price:F2}</p>
                        <div class='stars'>★★★★★</div>
                    </div>
                </a>";

                }
                litRelatedProducts.Text = html;
            }
        }


        //Lấy thông tin sản phẩm từ Shoplist
        private Product GetProductById(int productId)
        {
            Product product = null;

            using (SqlConnection conn = Connection.GetSqlConnection())
            {
                conn.Open();

                string sql = @"
            SELECT p.product_id, p.namePro, p.price, p.discount, c.namecatalog, p.brand,p.description
            FROM product p
            JOIN tblcatalog c ON p.catalog_id = c.catalog_id          
            WHERE p.product_id = @product_id";

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@product_id", productId);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            product = new Product
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
                        }
                    }
                }

                // Lấy images
                if (product != null)
                {
                    string sqlImg = "SELECT image_link FROM product_images WHERE product_id = @product_id";
                    using (SqlCommand cmdImg = new SqlCommand(sqlImg, conn))
                    {
                        cmdImg.Parameters.AddWithValue("@product_id", productId);
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

            return product;
        }

        private List<Product> GetRelatedProducts(string brand, int currentProductId)
        {
            List<Product> relatedProducts = new List<Product>();

            using (SqlConnection conn = Connection.GetSqlConnection())
            {
                conn.Open();

                string sql = @"
            SELECT TOP 4 p.product_id, p.namePro, p.price, p.discount, p.brand, c.namecatalog
            FROM product p
            JOIN tblcatalog c ON p.catalog_id = c.catalog_id
            WHERE p.brand = @brand AND p.product_id <> @currentProductId";

                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@brand", brand);
                    cmd.Parameters.AddWithValue("@currentProductId", currentProductId);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            Product product = new Product
                            {
                                Id = reader.GetInt32(reader.GetOrdinal("product_id")),
                                Name = reader.GetString(reader.GetOrdinal("namePro")),
                                Price = (double)reader.GetDecimal(reader.GetOrdinal("price")),
                                OldPrice = (double)(reader.GetDecimal(reader.GetOrdinal("price")) + reader.GetDecimal(reader.GetOrdinal("discount"))),
                                Brand = reader.GetString(reader.GetOrdinal("brand")),
                                Category = reader.GetString(reader.GetOrdinal("namecatalog")),
                                Images = new List<string>()
                            };

                            relatedProducts.Add(product);
                        }
                    }
                }

                foreach (var product in relatedProducts)
                {
                    string sqlImg = "SELECT TOP 1 image_link FROM product_images WHERE product_id = @product_id";
                    using (SqlCommand cmdImg = new SqlCommand(sqlImg, conn))
                    {
                        cmdImg.Parameters.AddWithValue("@product_id", product.Id);
                        using (SqlDataReader imgReader = cmdImg.ExecuteReader())
                        {
                            if (imgReader.Read())
                            {
                                product.Images.Add(imgReader.GetString(0));
                            }
                        }
                    }
                }
            }

            return relatedProducts;
        }

        protected void AddToCart_Click(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrEmpty(Request.QueryString["id"]) || !int.TryParse(Request.QueryString["id"], out int id))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "error",
                        "alert('Invalid product ID.');", true);
                    return;
                }

                var product = GetProductById(id);
                if (product == null)
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "error",
                        "alert('Product not found.');", true);
                    return;
                }


                List<CartItem> cart = Session["CartItems"] as List<CartItem> ?? new List<CartItem>();

                var existingItem = cart.FirstOrDefault(x => x.ProductId == product.Id);
                if (existingItem != null)
                {
                    existingItem.Quantity += 1;
                }
                else
                {
                    cart.Add(new CartItem
                    {
                        ProductId = product.Id,
                        ProductName = product.Name,
                        Price = (decimal)product.Price,
                        Quantity = 1,
                        ImageUrl = product.Images.FirstOrDefault() ?? "~/Assets/Images/default.png",
                        Color = "Default" 
                    });
                }

                Session["CartItems"] = cart;

                ScriptManager.RegisterStartupScript(this, GetType(), "addSuccess",
                    "alert('Đã thêm sản phẩm vào giỏ hàng!');", true);
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "error",
                    $"alert('Error adding to cart: {ex.Message}');", true);
            }
        }
    }
}
