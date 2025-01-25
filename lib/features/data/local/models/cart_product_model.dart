class CartProductModel {
  final String id;
  final String name;
  final double price;
  final double discount;
  int quantity;
  double total;

  CartProductModel({
    required this.id,
    required this.name,
    required this.price,
    this.discount = 0.0,
    this.quantity = 1,
    this.total = 0.0,
  });
  double get finalPrice {
    // Chegirma bo'lsa, narxni hisoblash
    return price - (price * (discount / 100));
  }
}