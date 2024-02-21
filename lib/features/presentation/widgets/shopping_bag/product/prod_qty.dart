import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProdQty extends StatelessWidget {
  const ProdQty({super.key, required this.qty});
final int qty;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      child: Text(
        qty.toString(),
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
