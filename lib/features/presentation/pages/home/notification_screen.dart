import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/widgets/widget_backgroud.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

enum Tag {
  discount,
  announcement,
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.mainBGColor,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: size.width,
              height: size.height - MediaQuery.of(context).padding.top - kToolbarHeight.h,
            ),
            Positioned(
              top: MediaQuery.of(context).padding.top,
              child: SizedBox(
                width: size.width,
                height: size.height - MediaQuery.of(context).padding.top - kToolbarHeight.h - kBottomNavigationBarHeight.h,
                child: SafeArea(
                  child: Column(
                    children: [
                      SizedBox(height: 10.h),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        itemCount: notify.length,
                        itemBuilder: (context, index) {
                          DateTime date = notify[index]['date'];
                          initializeDateFormatting('uz_UZ', null);
                          TimeOfDay time = TimeOfDay.fromDateTime(date);
                          String formattedDate = DateFormat(
                            'd MMMM yyyy, HH:mm',
                          ).format(date);
                          int currentHour = time.hour;
                          return Container(
                            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5.h),
                            child: WidgetBackground(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.event,
                                            color: Colors.grey,
                                            size: 18.sp,
                                          ),
                                          Text(
                                            formattedDate,
                                            style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                          color: notify[index]['teg'] == 'chegirma'
                                              ? Colors.lightGreen.withOpacity(.3)
                                              : Colors.limeAccent.withOpacity(
                                                  .3,
                                                ),
                                          borderRadius: BorderRadius.circular(15.r),
                                        ),
                                        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 3.h),
                                        child: Text(
                                          notify[index]['teg'].toString().toUpperCase(),
                                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                                color: notify[index]['teg'] == 'chegirma' ? AppColors.mainColor : Colors.orangeAccent,
                                                fontSize: 14.sp,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                                    notify[index]['title'],
                                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 14.sp),
                                  ),
                                  SizedBox(height: 10.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Batafsil',
                                        style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey),
                                      ),
                                      Icon(
                                        Icons.adaptive.arrow_forward,
                                        size: 15.sp,
                                        color: Colors.grey,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: size.width,
              height: kToolbarHeight,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: .01,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 3.2.w,
                        height: 20.h,
                        color: AppColors.mainColor,
                      ),
                      SizedBox(width: 10.w),
                      Text('Bildirishnomalar', style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
