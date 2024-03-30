import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/pages/home/top_products_screen.dart';
import 'package:upqayt/features/presentation/widgets/row_title.dart';
import 'package:upqayt/features/presentation/widgets/top_products.dart';

class HomeScreenTopProducts extends StatelessWidget {
  const HomeScreenTopProducts({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20).r,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18).r,
        color: Colors.white,
      ),
      child: Column(
        children: [
          RowTitle(
            title: 'Top mahsulotlar',
            btnTitle: 'Barchasi',
            onTap: () => Navigator.push(
              context,
              Platform.isIOS
                  ? CupertinoPageRoute(
                      builder: (_) => const TopProductsScreen(),
                    )
                  : MaterialPageRoute(
                      builder: (_) => const TopProductsScreen(),
                    ),
            ),
            btnIcon: Icons.arrow_forward_ios_outlined,
          ),
          Container(
            width: size.width,
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TopProducts(
                  index: 0,
                  title: topProduct[0]['title']!,
                  subtitle: topProduct[0]['subtitle']!,
                  image: topProduct[0]['image']!,
                  width: size.width / 2 - 30,
                  size: size,
                  rebate: topProduct[0]['rebate'],
                ),
                TopProducts(
                  index: 1,
                  title: topProduct[1]['title']!,
                  subtitle: topProduct[1]['subtitle']!,
                  image: topProduct[1]['image']!,
                  width: size.width / 2 - 30,
                  size: size,
                  rebate: topProduct[1]['rebate'],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
