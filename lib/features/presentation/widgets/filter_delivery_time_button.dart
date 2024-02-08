import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterDeliverTimeButton extends StatelessWidget {
  final Color bgColor;
  final TextStyle titleStyle;
  final String title;
  final VoidCallback onTap;

  const FilterDeliverTimeButton({
    super.key,
    required this.bgColor,
    required this.titleStyle,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 36.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: bgColor,
          ),
          child: Center(
            child: Text(title, style: titleStyle),
          ),
        ),
      ),
    );
  }
}
