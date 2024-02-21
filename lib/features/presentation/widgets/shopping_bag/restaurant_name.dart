import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/generated/assets.dart';

class RestaurantName extends StatelessWidget {
  const RestaurantName({super.key, required this.restaurant});

  final int restaurant;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14.r), color: Colors.white),
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      margin: EdgeInsets.only(top: 20.h),
      child: Center(
        child: Row(
          children: [
            Image.asset(Assets.iconsBank),
            SizedBox(width: 10.w),
            Text(
              shoppingBagProductList![restaurant]['restoran_name'],
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
