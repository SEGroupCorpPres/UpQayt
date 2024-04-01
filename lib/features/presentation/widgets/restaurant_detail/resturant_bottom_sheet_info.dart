import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/generated/assets.dart';

class RestaurantBottomSheetInfo extends StatefulWidget {
  const RestaurantBottomSheetInfo({super.key});

  @override
  State<RestaurantBottomSheetInfo> createState() => _RestaurantBottomSheetInfoState();
}

class _RestaurantBottomSheetInfoState extends State<RestaurantBottomSheetInfo> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            Container(
              height: 150.h,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.lightBlueAccent.withOpacity(.1),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
              width: MediaQuery.sizeOf(context).width,
              height: 135.h,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Yetkazib berish narxi',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(Assets.iconsTaxi, width: 20.w),
                            SizedBox(width: 20.w),
                            Text(
                              'Avtomobil kuryeri',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black87, fontSize: 14.sp),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.w),
                        Text(
                          'Yetkazish narxi quyidagicha:',
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey, fontSize: 14.sp),
                        ),
                        SizedBox(height: 10.w),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '50000 so\'mgacha',
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black87),
                                ),
                                Text(
                                  '12000 so\'m',
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black87),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.w),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '200000 so\'mgdan',
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black87),
                                ),
                                Text(
                                  '0 so\'m',
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black87),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Stack(
          children: [
            Container(
              // height: 150.h,
              width: MediaQuery.sizeOf(context).width,
              color: Colors.lightBlueAccent.withOpacity(.1),
            ),
            Container(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h, top: 10.h),
              width: MediaQuery.sizeOf(context).width,
              // height: 135.h,
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
              child: MainButton(title: 'Saqlsh', onTap: () {}),
            ),
          ],
        ),
      ],
    );
  }
}
