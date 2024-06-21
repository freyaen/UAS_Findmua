import 'package:findmua/buymakeup/models/product_model.dart'; // Import Product dari file yang benar

class CartItem {
  Product product;
  int quantity;
  final double price;

  CartItem({
    required this.product,
    this.quantity = 1, // Default quantity is 1
    this.price = 1, // Default quantity is 1
  });
}
