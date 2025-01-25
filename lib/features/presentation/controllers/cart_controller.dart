import 'package:get/get.dart';

class CartController extends GetxController {
  var cartItems = <Map<String, dynamic>>[].obs; // Savatdagi mahsulotlar

  // Mahsulotni savatga qo'shishdan oldin quantity va summasini hisoblash
  void addToCart(Map<String, dynamic> product, int quantity) {
    double price = product['price'];
    double totalPrice = price * quantity;

    // Agar mahsulot oldin mavjud bo'lsa, yangilash
    int existingIndex = cartItems.indexWhere((item) => item['id'] == product['id']);
    if (existingIndex != -1) {
      cartItems[existingIndex]['quantity'] += quantity;
      cartItems[existingIndex]['total'] += totalPrice;
    } else {
      // Yangi mahsulotni qo'shish
      cartItems.add({
        'id': product['id'],
        'name': product['name'],
        'price': price,
        'quantity': quantity,
        'total': totalPrice,
      });
    }
  }

  // Mahsulotning umumiy summasini olish
  double get totalAmount {
    return cartItems.fold(0, (sum, item) => sum + item['totalPrice']);
  }
}
