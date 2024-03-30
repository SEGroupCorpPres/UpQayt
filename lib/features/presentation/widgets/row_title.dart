import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';

class RowTitle extends StatelessWidget {
  final String title;
  final String? btnTitle;
  final VoidCallback? onTap;
  final Color titleColor;
  final IconData? btnIcon;
  final Color? btnColor;

  const RowTitle({
    super.key,
    required this.title,
    required this.btnTitle,
    required this.onTap,
    this.btnIcon,
    this.titleColor = const Color(0xFF1C1C1C),
    this.btnColor = AppColors.subtitleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.w600,
              ),
        ),
        btnTitle != null || btnIcon != null
            ? InkWell(
                onTap: onTap,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      btnTitle ?? '',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: btnColor,
                            fontSize: 14.sp,
                          ),
                    ),
                    SizedBox(width: 10.w),
                    Icon(
                      btnIcon,
                      color: btnColor,
                      size: 12.sp,
                    ),
                  ],
                ),
              )
            : Container(),
      ],
    );
  }
}
