import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';

class RestaurantInfoScreen extends StatelessWidget {
  const RestaurantInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.mainBGColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            SizedBox(
              height: size.height,
              width: size.width,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Card(
                elevation: .1,
                margin: EdgeInsets.zero,
                child: Container(
                  width: size.width,
                  height: kToolbarHeight.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.r)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(
                              Icons.adaptive.arrow_back,
                              color: Colors.black,
                              size: 18.sp,
                            ),
                          ),
                          Text(
                            'Restoran haqida',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.maybeViewPaddingOf(context)!.top + 30.h,
              child: SizedBox(
                width: size.width,
                height: size.height - kToolbarHeight.h - MediaQuery.maybeViewPaddingOf(context)!.top,
                child: ListView(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20).r,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Tavsif',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "Lorem ipsum dolor sit amet consectetur. Lacus morbi felis pellentesque enim in vestibulum convallis aenean. Ut praesent mollis viverra etiam hendrerit quis pulvinar consequat. Aliquam fames lorem proin nec non augue blandit. At dolor eget habitant ipsum hac eleifend nisl mi.",
                            style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black54, fontSize: 14.sp),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20).r,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Manzil',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Lorem ipsum dolor sit amet consectetur. Lacus morbi felis pellentesque enim in vestibulum convallis aenean. ",
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black54, fontSize: 14.sp),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20).r,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ish grafigi:',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            width: size.width * .65,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Dushanba- Shanba:",
                                      style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black54, fontSize: 14.sp),
                                    ),
                                    Text(
                                      "09:00 - 18:00",
                                      style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black54, fontSize: 14.sp),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Yakshanba:",
                                      style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black54, fontSize: 14.sp),
                                      textAlign: TextAlign.end,
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    Text(
                                      "10:00 - 15:00",
                                      style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black54, fontSize: 14.sp),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
