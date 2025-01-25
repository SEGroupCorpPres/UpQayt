import 'package:upqayt/features/data/local/models/sub_category.dart';

/// category : "Fresh Produce"
/// icon : "https://example.com/icons/fresh-produce.png"
/// sub_category : [{"name":"Fruits","icon":"https://example.com/icons/fruits.png"},{"name":"Vegetables","icon":"https://example.com/icons/vegetables.png"},{"name":"Herbs","icon":"https://example.com/icons/herbs.png"}]

class Category {
  Category({
    required this.category,
    required this.icon,
    required this.subCategory,
  });

  Category.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    icon = json['icon'];
    if (json['sub_category'] != null) {
      subCategory = [];
      json['sub_category'].forEach((v) {
        subCategory?.add(SubCategory.fromJson(v));
      });
    }
  }

  String? category;
  String? icon;
  List<SubCategory>? subCategory;
}
