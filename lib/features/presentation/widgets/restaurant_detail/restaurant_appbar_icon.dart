import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantAppBarIcon extends StatelessWidget {
  const RestaurantAppBarIcon({super.key, required this.onPressed, required this.icon, this.color = Colors.black});
  final VoidCallback onPressed;
  final IconData icon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: CircleAvatar(
        backgroundColor: Colors.white,
        child: Icon(
          icon,
          size: 18.sp,
          color: color,
        ),
      ),
    );
  }
}
