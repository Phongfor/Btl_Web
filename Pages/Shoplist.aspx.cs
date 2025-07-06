using System;
using System.Collections.Generic;
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
                var products = Application["Products"] as List<Product>;
                ProductHtml.Text = GenerateProductHtml(products);
            }
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
                <img src='{p.Images[0]}' alt='{p.Name}'>
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