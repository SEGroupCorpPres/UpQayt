import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProdPrice extends StatelessWidget {
  const ProdPrice({super.key, required this.price, required this.totalPrice});

  final int price;
  final int totalPrice;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Narxi:',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey),
        ),
        Text(
          '$price So\'m',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(height: 3.h),
        Text(
          'Umumiy Narxi:',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey),
        ),
        Text(
          '$totalPrice So\'m',
          style: Theme.of(context).textTheme.titleSmall,
        )
      ],
    );
  }
}
