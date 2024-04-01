import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/presentation/widgets/restaurant_detail/resturant_bottom_sheet_info.dart';
import 'package:upqayt/generated/assets.dart';

class RestaurantBottomSheet extends StatelessWidget {
  const RestaurantBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          showDragHandle: true,
          backgroundColor: Colors.white,
          isScrollControlled: true,
          enableDrag: true,
          clipBehavior: Clip.hardEdge,
          anchorPoint: const Offset(0, .8),
          useSafeArea: true,
          builder: (context) {
            return const RestaurantBottomSheetInfo();
          },
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        width: size.width,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: .1,
              blurRadius: 10,
              offset: Offset(0, -1),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(Assets.iconsTaxiIcon),
            RichText(
              text: TextSpan(
                text: 'Yetkazib berish ',
                style: Theme.of(context).textTheme.titleSmall,
                children: [
                  TextSpan(
                    text: '  12 500 so\'m',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.mainColor),
                  ),
                ],
              ),
            ),
            Icon(
              Icons.adaptive.arrow_forward,
              size: 13.sp,
            )
          ],
        ),
      ),
    );
  }
}
