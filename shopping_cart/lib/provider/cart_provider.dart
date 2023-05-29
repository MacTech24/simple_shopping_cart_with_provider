import 'package:flutter/material.dart';
import 'package:shopping_cart/model/product_model.dart';

class CartProvider with ChangeNotifier {
  List<Product> _cartList = [];
  List<Product> get cartList => _cartList;

  double get subTotal {
    return _cartList.fold(
        0, (total, product) => total + (product.price * product.quantity));
  }

  double get total {
    return subTotal + 1500;
  }

  void addProductToCart(Product product) {
    if (_cartList.contains(product)) {
      print("Product already Exist");
    } else {
      _cartList.add(product);
    }

    notifyListeners();
  }

  void removeProductFromCart(Product product) {
    _cartList.remove(product);
    notifyListeners();
  }

  void incrementQuantity(Product product) {
    product.quantity++;
    notifyListeners();
  }

  void decrementQuantity(Product product) {
    if (product.quantity > 1) {
      product.quantity--;
    }
    notifyListeners();
  }

  void clearCart() {
    _cartList.clear();
    notifyListeners();
  }
}
