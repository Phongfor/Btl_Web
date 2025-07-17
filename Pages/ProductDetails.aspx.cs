using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;                                                                                                                      
using System.Web.UI;

namespace Btl_Web.Pages
{
    public partial class ProductDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (string.IsNullOrEmpty(Request.QueryString["id"]) || !int.TryParse(Request.QueryString["id"], out int id))
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "error",
                        "alert('Invalid product ID.');", true);
                    Response.Redirect("~/Pages/Products.aspx");
                    return;
                }

                var product = GetProductById(id);
                if (product != null)
                {
                    mainImage.Src = product.Images.FirstOrDefault() ?? "~/Assets/Images/default.png";
                    thumb1.Src = product.Images.Skip(1).FirstOrDefault() ?? "~/Assets/Images/default.png";
                    thumb2.Src = product.Images.Skip(2).FirstOrDefault() ?? "~/Assets/Images/default.png";
                    thumb3.Src = product.Images.Skip(3).FirstOrDefault() ?? "~/Assets/Images/default.png";

                    productName.InnerText = product.Name;
                    productDescription.InnerText = product.Description;
                    newPrice.InnerText = "$" + product.Price.ToString("F2");
                    oldPrice.InnerText = product.OldPrice > 0 ? "$" + product.OldPrice.ToString("F2") : "";
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "error",
                        "alert('Product not found.');", true);
                    Response.Redirect("~/Pages/Products.aspx");
                }
            }
        }

        private Product GetProductById(int productId)
        {
            Product product = null;

            try
            {
                using (SqlConnection conn = Connection.GetSqlConnection())
                {
                    conn.Open();

                    string sql = @"SELECT p.product_id, p.namePro, p.price, p.discount, c.namecatalog, p.brand, p.description
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
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine($"Error in GetProductById: {ex.Message}");
                ScriptManager.RegisterStartupScript(this, GetType(), "error",
                    $"alert('Error loading product: {ex.Message}');", true);
            }

            return product;
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