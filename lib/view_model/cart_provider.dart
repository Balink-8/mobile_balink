import 'package:flutter/foundation.dart';
import 'package:mobile_balink/source/source_cart.dart';
import '../model/cart_model.dart';

class CartProvider extends ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;

  List<Cart> _cartList = [];
  List<Cart> get cartList => _cartList;

  int _quantity = 1;
  int get quantity => _quantity;

  Future<void> getCart() async {
    _isLoading = true;
    notifyListeners();
    List<Cart> cartLists = await SourceCart.getCart();
    _cartList = cartLists;
    _isLoading = false;
    notifyListeners();
  }

  void decreaseQuantity() {
    if (_quantity > 1) {
      _quantity--;
      notifyListeners();
    }
  }

  void increaseQuantity() {
    _quantity++;
    notifyListeners();
  }

  int calculateTotal(int price) {
    return _quantity * price;
  }

  void addToCart(Cart product) {
    bool productExists = false;

    for (int i = 0; i < _cartList.length; i++) {
      if (_cartList[i].userId == product.userId &&
          _cartList[i].produkId == product.produkId) {
        _cartList[i].jumlah += product.jumlah;
        productExists = true;
        break;
      }
    }

    if (!productExists) {
      _cartList.add(Cart(
        id: product.id,
        userId: product.userId,
        produkId: product.produkId,
        jumlah: product.jumlah,
      ));
    }

    notifyListeners();
  }

  void updateCartList(Cart updatedCart) {
    final index = _cartList.indexWhere((cart) => cart.id == updatedCart.id);
    if (index != -1) {
      _cartList[index] = updatedCart;
      notifyListeners();
    }
  }
}
