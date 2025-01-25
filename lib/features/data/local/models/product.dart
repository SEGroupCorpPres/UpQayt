import 'package:upqayt/features/data/local/models/dimensions.dart';
import 'package:upqayt/features/data/local/models/meta.dart';

/// id : 16
/// title : "Apple"
/// description : "Fresh and crisp apples, perfect for snacking or incorporating into various recipes."
/// category : "groceries"
/// price : 1.99
/// discountPercentage : 1.97
/// rating : 2.96
/// stock : 9
/// tags : ["fruits"]
/// sku : "QTROUV79"
/// weight : 8
/// dimensions : {"width":8.29,"height":5.58,"depth":12.41}
/// warrantyInformation : "2 year warranty"
/// shippingInformation : "Ships in 2 weeks"
/// availabilityStatus : "In Stock"
/// reviews : [{"rating":4,"comment":"Great product!","date":"2024-05-23T08:56:21.620Z","reviewerName":"Logan Lee","reviewerEmail":"logan.lee@x.dummyjson.com"},{"rating":4,"comment":"Great product!","date":"2024-05-23T08:56:21.620Z","reviewerName":"Elena Long","reviewerEmail":"elena.long@x.dummyjson.com"},{"rating":1,"comment":"Not as described!","date":"2024-05-23T08:56:21.620Z","reviewerName":"Grayson Coleman","reviewerEmail":"grayson.coleman@x.dummyjson.com"}]
/// returnPolicy : "60 days return policy"
/// minimumOrderQuantity : 44
/// meta : {"createdAt":"2024-05-23T08:56:21.620Z","updatedAt":"2024-05-23T08:56:21.620Z","barcode":"2517819903837","qrCode":"https://assets.dummyjson.com/public/qr-code.png"}
/// images : ["https://cdn.dummyjson.com/products/images/groceries/Apple/1.png"]
/// thumbnail : "https://cdn.dummyjson.com/products/images/groceries/Apple/thumbnail.png"

class Product {
  Product({
    this.id,
    this.title,
    this.description,
    this.category,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.tags,
    this.sku,
    this.weight,
    this.dimensions,
    this.warrantyInformation,
    this.shippingInformation,
    this.availabilityStatus,
    // this.reviews,
    this.returnPolicy,
    this.minimumOrderQuantity,
    this.meta,
    this.images,
    this.thumbnail,
  });

  Product.fromJson(dynamic json) {
    id = json['id'];
    title = json['title'];
    description = json['description'];
    category = json['category'];
    price = json['price'];
    discountPercentage = json['discountPercentage'];
    rating = json['rating'];
    stock = json['stock'];
    tags = json['tags'] != null ? json['tags'].cast<String>() : [];
    sku = json['sku'];
    weight = json['weight'];
    dimensions = json['dimensions'] != null
        ? Dimensions.fromJson(json['dimensions'])
        : null;
    warrantyInformation = json['warrantyInformation'];
    shippingInformation = json['shippingInformation'];
    availabilityStatus = json['availabilityStatus'];
    // if (json['reviews'] != null) {
    //   reviews = [];
    //   json['reviews'].forEach((v) {
    //     reviews?.add(Reviews.fromJson(v));
    //   });
    // }
    returnPolicy = json['returnPolicy'];
    minimumOrderQuantity = json['minimumOrderQuantity'];
    meta = json['meta'] != null ? Meta.fromJson(json['meta']) : null;
    images = json['images'] != null ? json['images'].cast<String>() : [];
    thumbnail = json['thumbnail'];
  }
  num? id;
  String? title;
  String? description;
  String? category;
  num? price;
  num? discountPercentage;
  num? rating;
  num? stock;
  List<String>? tags;
  String? sku;
  num? weight;
  Dimensions? dimensions;
  String? warrantyInformation;
  String? shippingInformation;
  String? availabilityStatus;
  // List<Reviews>? reviews;
  String? returnPolicy;
  num? minimumOrderQuantity;
  Meta? meta;
  List<String>? images;
  String? thumbnail;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['description'] = description;
    map['category'] = category;
    map['price'] = price;
    map['discountPercentage'] = discountPercentage;
    map['rating'] = rating;
    map['stock'] = stock;
    map['tags'] = tags;
    map['sku'] = sku;
    map['weight'] = weight;
    if (dimensions != null) {
      map['dimensions'] = dimensions?.toJson();
    }
    map['warrantyInformation'] = warrantyInformation;
    map['shippingInformation'] = shippingInformation;
    map['availabilityStatus'] = availabilityStatus;
    // if (reviews != null) {
    //   map['reviews'] = reviews?.map((v) => v.toJson()).toList();
    // }
    map['returnPolicy'] = returnPolicy;
    map['minimumOrderQuantity'] = minimumOrderQuantity;
    if (meta != null) {
      map['meta'] = meta?.toJson();
    }
    map['images'] = images;
    map['thumbnail'] = thumbnail;
    return map;
  }
}
