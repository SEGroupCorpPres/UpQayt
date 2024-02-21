class Category {
  final String title;
  final String image;
  final double price;
  final double? rebatePrice;
  final double? rebate;

  Category({required this.title, required this.image, required this.price, this.rebatePrice, this.rebate});
}