using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Btl_Web.Pages
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                LoadCart();
        }

        private List<CartItem> GetCart()
        {
            List<CartItem> cart = Session["CartItems"] as List<CartItem>;
            if (cart == null)
            {
                cart = new List<CartItem>();
            }
            return cart;

        }

        private void SaveCart(List<CartItem> cart)
        {
            Session["CartItems"] = cart;
        }

        private void LoadCart()
        {
            var cart = GetCart();
            CartRepeater.DataSource = cart;
            CartRepeater.DataBind();
            UpdateTotal(cart);
        }

        private void UpdateTotal(List<CartItem> cart)
        {
            decimal total = cart.Sum(item => item.Total);
            SubtotalLabel.Text = total.ToString("C");
            TotalLabel.Text = total.ToString("C");
        }

        protected void UpdateQuantity(object sender, CommandEventArgs e)
        {
            int productId = Convert.ToInt32(e.CommandArgument);
            string action = e.CommandName;

            var cart = GetCart();
            var item = cart.FirstOrDefault(i => i.ProductId == productId);

            if (item != null)
            {
                if (action == "Increase") item.Quantity++;
                else if (action == "Decrease" && item.Quantity > 1) item.Quantity--;

                SaveCart(cart);
                LoadCart();
            }
        }

        protected void ClearCart_Click(object sender, EventArgs e)
        {
            SaveCart(new List<CartItem>());
            LoadCart();
            ShowMessage("Cart cleared successfully!");
        }

        protected void UpdateCart_Click(object sender, EventArgs e)
        {
            LoadCart();
            ShowMessage("Cart updated successfully!");
        }

        protected void Checkout_Click(object sender, EventArgs e)
        {
            var cart = GetCart();
            if (cart.Count == 0)
            {
                ShowMessage("Your cart is empty!");
                return;
            }

            Response.Redirect("HektoDemo.aspx");
        }

        private void ShowMessage(string message)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "msg", $"alert('{message}');", true);
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            UpdateTotal(GetCart());
        }
    }
}
