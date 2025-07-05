using System;
using System.Collections.Generic;
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
                var products = (List<Product>)Application["Products"];
                int id = int.Parse(Request.QueryString["id"]); 

                var product = products.FirstOrDefault(p => p.Id == id);
                if (product != null && product.Images.Count >= 4)
                {
                    mainImage.Src = product.Images[0];
                    thumb1.Src = product.Images[1];
                    thumb2.Src = product.Images[2];
                    thumb3.Src = product.Images[3];

                    productName.InnerText = product.Name;
                    productDescription.InnerText = product.Description;
                    newPrice.InnerText = "$" + product.Price.ToString("F2");
                    oldPrice.InnerText = product.OldPrice > 0 ? "$" + product.OldPrice.ToString("F2") : "";
                }
            }
        }

    }
}