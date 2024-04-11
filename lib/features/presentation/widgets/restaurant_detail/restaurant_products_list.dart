import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/widgets/restaurant_detail/product/restaurant_product.dart';

class RestaurantProductsList extends StatelessWidget {
  const RestaurantProductsList({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Column(
      children: [
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              category[index].category.toUpperCase(),
              style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Wrap(
          direction: Axis.horizontal,
          spacing: 10.w,
          runSpacing: 15.h,
          children: List.generate(
            category[index].items.length,
            (item) => Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r), color: Colors.white),
              width: size.width / 2 - 30,
              child: RestaurantProduct(item: item, categoryIndex: index),
            ),
          ),
        ),
      ],
    );
  }
}
