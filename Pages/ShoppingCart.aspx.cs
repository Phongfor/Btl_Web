using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication
{
    public partial class ShoppingCart : System.Web.UI.Page
    {
        // Sample cart item class
        public class CartItem
        {
            public int ProductId { get; set; }
            public string ProductName { get; set; }
            public string Color { get; set; }
            public decimal Price { get; set; }
            public int Quantity { get; set; }
            public string ImageUrl { get; set; }
            public decimal Total
            {
                get { return Price * Quantity; }
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCartItems();
                UpdateCartTotals();
            }
        }

        private void LoadCartItems()
        {
            // Sample data - in real application, this would come from database or session
            List<CartItem> cartItems = new List<CartItem>
            {
                new CartItem
                {
                    ProductId = 1,
                    ProductName = "Ut enim consequat",
                    Color = "Red",
                    Price = 23.00m,
                    Quantity = 1,
                    ImageUrl = "~/Images/product1.jpg"
                },
                new CartItem
                {
                    ProductId = 2,
                    ProductName = "Vel faucibus posuere",
                    Color = "Black",
                    Price = 23.00m,
                    Quantity = 1,
                    ImageUrl = "~/Images/product2.jpg"
                },
                new CartItem
                {
                    ProductId = 3,
                    ProductName = "Ac vitae vestibulum",
                    Color = "Red",
                    Price = 23.00m,
                    Quantity = 1,
                    ImageUrl = "~/Images/product3.jpg"
                },
                new CartItem
                {
                    ProductId = 4,
                    ProductName = "Eu nunc diam",
                    Color = "White",
                    Price = 23.00m,
                    Quantity = 1,
                    ImageUrl = "~/Images/product4.jpg"
                },
                new CartItem
                {
                    ProductId = 5,
                    ProductName = "Proin pharetra elementum",
                    Color = "Brown",
                    Price = 23.00m,
                    Quantity = 1,
                    ImageUrl = "~/Images/product5.jpg"
                }
            };

            // Store in session for persistence across postbacks
            Session["CartItems"] = cartItems;

            // Bind to repeater
            CartRepeater.DataSource = cartItems;
            CartRepeater.DataBind();
        }

        private List<CartItem> GetCartItems()
        {
            return Session["CartItems"] as List<CartItem> ?? new List<CartItem>();
        }

        private void SaveCartItems(List<CartItem> items)
        {
            Session["CartItems"] = items;
        }

        protected void UpdateQuantity(object sender, CommandEventArgs e)
        {
            int productId = Convert.ToInt32(e.CommandArgument);
            string command = e.CommandName;

            List<CartItem> cartItems = GetCartItems();
            CartItem item = cartItems.FirstOrDefault(x => x.ProductId == productId);

            if (item != null)
            {
                if (command == "Increase")
                {
                    item.Quantity++;
                }
                else if (command == "Decrease" && item.Quantity > 1)
                {
                    item.Quantity--;
                }

                SaveCartItems(cartItems);
                RefreshCart();
            }
        }

        protected void UpdateCart_Click(object sender, EventArgs e)
        {
            // In a real application, you might want to update quantities based on input fields
            // For now, we'll just refresh the cart
            RefreshCart();

            // Show success message
            ScriptManager.RegisterStartupScript(this, GetType(), "UpdateSuccess",
                "alert('Cart updated successfully!');", true);
        }

        protected void ClearCart_Click(object sender, EventArgs e)
        {
            Session["CartItems"] = new List<CartItem>();
            RefreshCart();

            // Show success message
            ScriptManager.RegisterStartupScript(this, GetType(), "ClearSuccess",
                "alert('Cart cleared successfully!');", true);
        }

        protected void Checkout_Click(object sender, EventArgs e)
        {
            List<CartItem> cartItems = GetCartItems();

            if (cartItems.Count == 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "EmptyCart",
                    "alert('Your cart is empty!');", true);
                return;
            }

            // Redirect to checkout page
            Response.Redirect("~/Checkout.aspx");
        }

        protected void CalculateShipping_Click(object sender, EventArgs e)
        {
            string country = CountryDropDown.SelectedValue;
            string state = StateTextBox.Text;
            string zip = ZipTextBox.Text;

            if (string.IsNullOrEmpty(country) || string.IsNullOrEmpty(state) || string.IsNullOrEmpty(zip))
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "ShippingError",
                    "alert('Please fill in all shipping information fields.');", true);
                return;
            }

            // Calculate shipping (sample logic)
            decimal shippingCost = CalculateShippingCost(country, state, zip);

            ScriptManager.RegisterStartupScript(this, GetType(), "ShippingCalculated",
                $"alert('Shipping cost: ${shippingCost:F2}');", true);
        }

        private decimal CalculateShippingCost(string country, string state, string zip)
        {
            // Sample shipping calculation logic
            decimal baseCost = 5.00m;

            switch (country)
            {
                case "US":
                    return baseCost + 10.00m;
                case "CA":
                    return baseCost + 15.00m;
                case "UK":
                    return baseCost + 20.00m;
                case "BD":
                    return baseCost + 25.00m;
                default:
                    return baseCost + 30.00m;
            }
        }

        private void RefreshCart()
        {
            List<CartItem> cartItems = GetCartItems();
            CartRepeater.DataSource = cartItems;
            CartRepeater.DataBind();
            UpdateCartTotals();
        }

        private void UpdateCartTotals()
        {
            List<CartItem> cartItems = GetCartItems();
            decimal subtotal = cartItems.Sum(item => item.Total);
            decimal total = subtotal; // Add taxes, shipping, etc. here if needed

            SubtotalLabel.Text = subtotal.ToString("C");
            TotalLabel.Text = total.ToString("C");
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            // Update totals on each page render
            UpdateCartTotals();
        }
    }
}