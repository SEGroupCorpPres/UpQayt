import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';

class MainButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onTap;
  final Color? titleColor;
  final double? margin;
  final bool? isLogoutBtn;
  final IconData? icon;

  const MainButton({
    super.key,
    required this.title,
    this.color = AppColors.mainColor,
    required this.onTap,
    this.titleColor = Colors.black,
    this.margin = 4,
    this.isLogoutBtn = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onTap: onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        margin: EdgeInsets.symmetric(horizontal: margin!.w),
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: color,
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isLogoutBtn! ? Icon(icon!, color: titleColor, size: 18.sp,) : Container(),
              SizedBox(width: isLogoutBtn! ? 10.w : 0),
              Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(color: titleColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
