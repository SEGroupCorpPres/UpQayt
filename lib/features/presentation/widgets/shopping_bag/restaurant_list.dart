import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/product/prod_list.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/restaurant_name.dart';

class RestaurantList extends StatefulWidget {
  const RestaurantList({super.key});

  @override
  State<RestaurantList> createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: MediaQuery.sizeOf(context).height - 2 * kToolbarHeight,
      child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const RestaurantName(),
              SizedBox(height: 10.h),
              const ProductList(),
              SizedBox(height: 10.h),
              Divider(
                endIndent: 20.w,
                indent: 20.w,
                color: AppColors.mainColor,
              ),
              SizedBox(height: 10.h),
            ],
      ),
    );
  }
}
