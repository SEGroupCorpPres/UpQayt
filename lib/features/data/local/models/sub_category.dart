/// name : "Fruits"
/// icon : "https://example.com/icons/fruits.png"

class SubCategory {
  SubCategory({
    required this.name,
    required this.icon,
  });

  SubCategory.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    icon = json['icon'];
  }

  String? name;
  String? icon;

}
