import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderTab extends StatelessWidget {
  const OrderTab({super.key, required this.bgColor, required this.titleColor, required this.title});

  final Color bgColor;
  final Color titleColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Tab(
      height: double.infinity,
      iconMargin: EdgeInsets.zero,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        width: double.infinity,
        curve: Curves.ease,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: bgColor,
        ),
        child: Center(
          child: Text(
            title,
            style: Theme
                .of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontSize: 14.sp, color: titleColor),
          ),
        ),
      ),
    );
  }
}
