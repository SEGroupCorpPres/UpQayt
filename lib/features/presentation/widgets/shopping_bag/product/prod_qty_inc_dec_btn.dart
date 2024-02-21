import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProdQtyIncDecBtn extends StatelessWidget {
  const ProdQtyIncDecBtn({
    super.key,
    required this.onTap,
    this.iconColor = Colors.black,
    this.bgColor = Colors.grey,
    required this.iconData,
  });

  final VoidCallback onTap;
  final Color iconColor;
  final Color bgColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 30.w,
        height: 20.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: bgColor,
        ),
        child: Icon(iconData, color: iconColor),
      ),
    );
  }
}
