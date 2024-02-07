import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';

class MainButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onTap;
  const MainButton({super.key, required this.title, this.color = AppColors.mainColor, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        margin: EdgeInsets.symmetric(horizontal: 4.w),
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: color,
        ),
        child: Center(
          child: Text(
            title,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ),
    );
  }
}
