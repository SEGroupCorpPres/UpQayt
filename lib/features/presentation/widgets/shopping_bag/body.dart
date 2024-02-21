import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/empty_bag_screen.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/restaurant_list.dart';

class ShoppingBagBody extends StatelessWidget {
  const ShoppingBagBody({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      color: AppColors.mainBGColor,
      height: size.height - 2 * kToolbarHeight.h - 20.h,
      child: shoppingBagProductList!.isNotEmpty
          ? const RestaurantList()
          : const EmptyBagScreen(),
    );
  }
}
