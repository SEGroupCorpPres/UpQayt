import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/generated/assets.dart';

class PlacingAnOrderBottomSheet extends StatelessWidget {
  const PlacingAnOrderBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      height: 130.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(12.r)),
        color: CupertinoColors.white,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 20.r),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(Assets.iconsMoney),
              SizedBox(width: 10.w),
              Text(
                'Umumiy summa',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const Spacer(),
              Text(
                '230000 UZS',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          SizedBox(height: 20.h),
          MainButton(title: 'Buyurtma berish', onTap: () {}),
          SizedBox(
            height: MediaQuery.of(context).padding.bottom,
          ),
        ],
      ),
    );
  }
}
