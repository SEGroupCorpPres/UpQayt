import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';

class FilterFoodCategory extends StatelessWidget {
  const FilterFoodCategory({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Container(
          height: 250.h,
          width: size.width,
          color: Colors.lightBlueAccent.withOpacity(.1),
        ),
        Container(
          width: size.width,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9).r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Foydali',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 10.h),
              Wrap(
                spacing: 10.w,
                runSpacing: 10.h,
                children: [
                  for (final category in filterCategory)
                    category['title'] == 'Filter'
                        ? Container()
                        : Container(
                            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10).r,
                            decoration: ShapeDecoration(
                              color: const Color(0xFFF2F4F7),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9).r),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 25.sp,
                                  height: 20.sp,
                                  child: Image.asset(
                                    category['icon']!,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  category['title']!,
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                        color: Colors.black87,
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                ),
                              ],
                            ),
                          ),
                ],
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ],
    );
  }
}
