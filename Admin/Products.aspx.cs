using Btl_Web.Admin;
using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Btl_Web.Admin
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindProducts();
            }
        }

        private void BindProducts()
        {
            using (SqlConnection conn = Connection.GetSqlConnection())
            {
                conn.Open();
                string sql = @"
                    SELECT p.product_id, p.namePro, p.price, p.quantity, p.discount, 
                           p.brand, p.description, 
                           MIN(pi.image_link) AS image_link
                    FROM product p
                    LEFT JOIN product_images pi ON p.product_id = pi.product_id
                    GROUP BY p.product_id, p.namePro, p.price, p.quantity, 
                             p.discount, p.brand, p.description";

                SqlCommand cmd = new SqlCommand(sql, conn);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                gvProducts.DataSource = dt;
                gvProducts.DataBind();
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = Connection.GetSqlConnection())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(@"
                    INSERT INTO product 
                    (admin_id, catalog_id, namePro, price, quantity, discount, description, brand) 
                    VALUES (1, 1, @namePro, @price, @quantity, @discount, @description, @brand);
                    SELECT SCOPE_IDENTITY();
                ", conn);

                cmd.Parameters.AddWithValue("@namePro", txtName.Text);
                cmd.Parameters.AddWithValue("@price", decimal.Parse(txtPrice.Text));
                cmd.Parameters.AddWithValue("@quantity", int.Parse(txtQuantity.Text));
                cmd.Parameters.AddWithValue("@discount", decimal.Parse(txtDiscount.Text));
                cmd.Parameters.AddWithValue("@description", txtDescription.Text);
                cmd.Parameters.AddWithValue("@brand", txtBrand.Text);

                int newProductId = Convert.ToInt32(cmd.ExecuteScalar());

                if (fuImage.HasFile)
                {
                    string uploadFolder = Server.MapPath("~/Assets/Images/");
                    if (!Directory.Exists(uploadFolder))
                    {
                        Directory.CreateDirectory(uploadFolder);
                    }

                    string fileName = Path.GetFileName(fuImage.FileName);
                    string savePath = Path.Combine(uploadFolder, fileName);
                    fuImage.SaveAs(savePath);

                    string imageLink = "/Assets/Images/" + fileName;

                    SqlCommand cmdImg = new SqlCommand(@"
                        INSERT INTO product_images (product_id, image_link)
                        VALUES (@product_id, @image_link)
                    ", conn);

                    cmdImg.Parameters.AddWithValue("@product_id", newProductId);
                    cmdImg.Parameters.AddWithValue("@image_link", imageLink);
                    cmdImg.ExecuteNonQuery();
                }

                BindProducts();
            }
        }

        protected void gvProducts_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvProducts.EditIndex = e.NewEditIndex;
            BindProducts();
        }

        protected void gvProducts_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = gvProducts.Rows[e.RowIndex];
            int productId = Convert.ToInt32(gvProducts.DataKeys[e.RowIndex].Values[0]);

            string namePro = ((TextBox)row.Cells[1].Controls[0]).Text;
            decimal price = decimal.Parse(((TextBox)row.Cells[2].Controls[0]).Text);
            int quantity = int.Parse(((TextBox)row.Cells[3].Controls[0]).Text);
            decimal discount = decimal.Parse(((TextBox)row.Cells[4].Controls[0]).Text);
            string brand = ((TextBox)row.Cells[5].Controls[0]).Text;
            string description = ((TextBox)row.Cells[6].Controls[0]).Text;

            using (SqlConnection conn = Connection.GetSqlConnection())
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand(@"
                    UPDATE product
                    SET namePro = @namePro, price = @price, quantity = @quantity, 
                        discount = @discount, brand = @brand, description = @description
                    WHERE product_id = @product_id
                ", conn);

                cmd.Parameters.AddWithValue("@namePro", namePro);
                cmd.Parameters.AddWithValue("@price", price);
                cmd.Parameters.AddWithValue("@quantity", quantity);
                cmd.Parameters.AddWithValue("@discount", discount);
                cmd.Parameters.AddWithValue("@brand", brand);
                cmd.Parameters.AddWithValue("@description", description);
                cmd.Parameters.AddWithValue("@product_id", productId);
                cmd.ExecuteNonQuery();

                gvProducts.EditIndex = -1;
                BindProducts();
            }
        }

        protected void gvProducts_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvProducts.EditIndex = -1;
            BindProducts();
        }

        protected void gvProducts_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int productId = Convert.ToInt32(gvProducts.DataKeys[e.RowIndex].Values[0]);
            using (SqlConnection conn = Connection.GetSqlConnection())
            {
                conn.Open();

                SqlCommand cmdImg = new SqlCommand(
                    "DELETE FROM product_images WHERE product_id = @product_id", conn);
                cmdImg.Parameters.AddWithValue("@product_id", productId);
                cmdImg.ExecuteNonQuery();

                SqlCommand cmd = new SqlCommand(
                    "DELETE FROM product WHERE product_id = @product_id", conn);
                cmd.Parameters.AddWithValue("@product_id", productId);
                cmd.ExecuteNonQuery();

                BindProducts();
            }
        }
    }
}
