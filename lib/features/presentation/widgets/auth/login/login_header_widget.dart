import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Material(
              child: InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: onTap,
                child: Icon(
                  Icons.adaptive.arrow_back,
                  size: 15.sp,
                ),
              ),
            ),
            SizedBox(width: 8.w),
            Text(
              'Keyinroq',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Text(
          'Telefon raqamingizni kiriting',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(height: 5.h),
        Text(
          'va tasdiqlash codini kiriting',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey),
        ),
      ],
    );
  }
}
