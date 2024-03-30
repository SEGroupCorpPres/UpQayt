import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/widgets/order/order.dart';


class OrderList extends StatelessWidget {
  const OrderList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return  SizedBox(
      height: size.height - 2 * kToolbarHeight.h - kBottomNavigationBarHeight.h - 1,
      width: size.width,
      child: ListView.builder(
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        itemCount: orderList.length,
        itemBuilder: (context, index) {
          return Order(index: index);
        },
      ),
    );
  }
}
