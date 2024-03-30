import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/data/local/models/status.dart';
import 'package:upqayt/features/presentation/pages/restaurant/restaurant_detail_screen.dart';
import 'package:upqayt/generated/assets.dart';

class Order extends StatelessWidget {
  final int index;
  const Order({super.key, required this.index});
  Color _orderStatusColor(OrderStatus orderStatus) {
    switch (orderStatus) {
      case OrderStatus.canceled:
        return CupertinoColors.destructiveRed;
      case OrderStatus.onTheWay:
        return CupertinoColors.activeOrange;
      default:
        return CupertinoColors.activeGreen;
    }
  }

  String _orderStatus(OrderStatus orderStatus) {
    switch (orderStatus) {
      case OrderStatus.canceled:
        return 'Bekor qilindi';
      case OrderStatus.onTheWay:
        return 'Yo\'lda';
      default:
        return 'Yetkazildi';
    }
  }
  @override
  Widget build(BuildContext context) {
  final size = MediaQuery.sizeOf(context);
  DateTime date = orderList[index]['created'];
  TimeOfDay time = TimeOfDay.fromDateTime(date);
  initializeDateFormatting('uz_UZ', null);
  String formattedDate = DateFormat(
    'd MMMM yyyy, HH:mm',
  ).format(date);
  int currentHour = time.hour;
    return InkWell(
      onTap: () => Navigator.push(
        context,
        Platform.isIOS
            ? CupertinoPageRoute(
          builder: (context) => const RestaurantDetailScreen(),
        )
            : MaterialPageRoute(
          builder: (context) => const RestaurantDetailScreen(),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12).r,
          color: Colors.white,
        ),
        margin: const EdgeInsets.symmetric(vertical: 7).h,
        padding: const EdgeInsets.symmetric(vertical: 5).r,
        width: size.width,
        child: Column(
          children: [
            CupertinoListTile(
              leadingSize: 65.r,
              leadingToTitle: 8.w,
              leading: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: DecorationImage(
                    image: AssetImage(orderList[index]['restaurant_image']),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              title: Text(
                orderList[index]['restaurant_name'],
                style: Theme.of(context).textTheme.titleLarge,
              ),
              subtitle: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    Assets.iconsCalender,
                    fit: BoxFit.cover,
                    height: 20.w,
                  ),
                  SizedBox(width: 10.w),
                  SizedBox(
                    width: 80.w,
                    child: Text(
                      formattedDate,
                      softWrap: true,
                      maxLines: 2,
                      textAlign: TextAlign.end,
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black54),
                    ),
                  )
                ],
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 5, right: 18).r,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '#${orderList[index]['id']}',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: _orderStatusColor(orderList[index]['status']).withOpacity(.2),
                        borderRadius: BorderRadius.circular(15.r),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 10).r,
                      child: Text(
                        _orderStatus(orderList[index]['status']),
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: _orderStatusColor(orderList[index]['status']),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 9.w),
              width: size.width,
              height: 45.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: orderList[index]['products'].length,
                itemBuilder: (context, item) {
                  return Container(
                    margin: EdgeInsets.only(
                      left: item == 0 ? 10 : 5,
                      right: item == orderList[index]['products'].length - 1 ? 10 : 5,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 40.r,
                          height: 40.r,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.r),
                            image: DecorationImage(image: AssetImage(orderList[index]['products'][item]!), fit: BoxFit.cover),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
