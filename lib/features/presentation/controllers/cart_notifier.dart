
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:upqayt/features/data/local/models/cart_product_model.dart';

class CartNotifier extends StateNotifier<List<CartProductModel>> {
  CartNotifier() : super([]);

  void addToCart(CartProductModel product, int qty) {
    product.quantity = qty;
    product.total = product.finalPrice * qty;
    final int index = state.indexWhere((item) => item.id == product.id);
    if (index != -1) {
      state[index] = product;
    } else {
      state = [...state, product];
    }
  }

  void removeFromCart(String productId) {
    state = state.where((item) => item.id != productId).toList();
  }

  void clearCart() {
    state = [];
  }
}

final cartProvider =
    StateNotifierProvider<CartNotifier, List<CartProductModel>>((ref) {
  return CartNotifier();
});
