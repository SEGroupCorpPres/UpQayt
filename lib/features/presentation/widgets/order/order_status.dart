import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/generated/assets.dart';

class OrderStatus extends StatelessWidget {
  const OrderStatus({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10.h),
            Text(
              'Buyurtma yaratildi',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 10.h),
            Text(
              'Restoran tasdig\'ini kutmoqda',
              style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black54, fontSize: 14.sp),
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CircleAvatar(
                  backgroundColor: AppColors.mainColor,
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                  ),
                ),
                SvgPicture.asset(
                  Assets.assetsIconsOrderLineActive,
                  width: 50.w,
                ),
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: SvgPicture.asset(Assets.iconsChef),
                ),
                SvgPicture.asset(Assets.assetsIconsOrderLine),
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: SvgPicture.asset(Assets.iconsCourier),
                ),
                SvgPicture.asset(Assets.assetsIconsOrderLine),
                CircleAvatar(
                  backgroundColor: Colors.black12,
                  child: Image.asset(Assets.iconsCheckpoint),
                ),
              ],
            ),
            SizedBox(height: 10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mirandi ID',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14),
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        'Yetkazib berisih',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black54, fontSize: 14),
                      ),
                      Icon(
                        Icons.adaptive.arrow_forward,
                        size: 12.sp,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
