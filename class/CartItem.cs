namespace Btl_Web
{
    public class CartItem
    {
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string Color { get; set; } // Added for ShoppingCart.aspx compatibility
        public decimal Price { get; set; }
        public int Quantity { get; set; }
        public string ImageUrl { get; set; }
        public decimal Total => Price * Quantity; // Added for total calculation
    }
}