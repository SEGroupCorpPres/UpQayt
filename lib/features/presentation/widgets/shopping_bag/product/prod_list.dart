import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/product/product_list_tile.dart';

class ProductList extends StatelessWidget {
   ProductList({super.key, required this.restaurant});
  final int restaurant;

  @override
  Widget build(BuildContext context) {
    List<dynamic> products = shoppingBagProductList![restaurant]['products'];
    return Column(
      children: List.generate(
        products.length,
            (index) {
          var product = shoppingBagProductList![restaurant]['products'][index];
          return ProductListTile(product: product);
        },
      ),
    );
  }
}
