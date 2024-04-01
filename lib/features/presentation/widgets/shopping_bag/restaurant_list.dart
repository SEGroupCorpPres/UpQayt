import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/widgets/restaurant_detail/product/restaurant_product.dart';
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
      child: SingleChildScrollView(
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
                Container(
                  width: size.width,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(14.r), color: Colors.white),
                  padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                  margin: EdgeInsets.only(top: 20.h),
                  child: Center(
                    child: Row(
                      children: [
                        SizedBox(width: 10.w),
                        Text(
                          'Qo\'shimcha',
                          style: Theme.of(context).textTheme.titleMedium,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Center(
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 10.w,
                    runSpacing: 15.h,
                    children: List.generate(
                      category[1].items.length,
                          (item) => Container(
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r), color: Colors.white),
                        width: size.width / 2 - 30,
                        child: RestaurantProduct(item: item, categoryIndex: 1),
                      ),
                    ),
                  ),
                ),
              ],
        ),
      ),
    );
  }
}
