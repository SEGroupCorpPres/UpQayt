import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/widgets/order/order_status.dart';

class OrderStatusList extends StatelessWidget {
  const OrderStatusList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: orderList.length,
      physics: ClampingScrollPhysics(),
      itemBuilder: (context, item) {
        return const OrderStatus();
      },
    );
  }
}
