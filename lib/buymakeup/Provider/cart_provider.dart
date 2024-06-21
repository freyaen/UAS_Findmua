import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:findmua/cart_item.dart'; // Import CartItem yang baru saja dibuat
import 'package:findmua/buymakeup/models/product_model.dart'; // Pastikan import Product dari file yang benar

class CartProvider extends ChangeNotifier {
  final List<CartItem> _cart = [];
  List<CartItem> get cart => _cart
      .map((item) => item)
      .toList(); // Getter untuk mengembalikan List<CartItem>

  void toggleFavorite(Product product) {
    int existingIndex =
        _cart.indexWhere((item) => item.product.id == product.id);

    if (existingIndex != -1) {
      _cart[existingIndex].quantity++;
    } else {
      _cart.add(CartItem(product: product));
    }
    notifyListeners();
  }

  void incrementQtn(int index) {
    _cart[index].quantity++;
    notifyListeners();
  }

  void decrementQtn(int index) {
    if (_cart[index].quantity <= 1) {
      return;
    }
    _cart[index].quantity--;
    notifyListeners();
  }

  double totalPrice() {
    double total = 0.0;
    for (CartItem item in _cart) {
      total += (double.parse(item.product.price) * item.quantity);
    }
    return total;
  }

  static CartProvider of(BuildContext context, {bool listen = true}) {
    return Provider.of<CartProvider>(context, listen: listen);
  }
}
