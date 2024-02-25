import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ClearTrashAlertDialog extends StatelessWidget {
  const ClearTrashAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog.adaptive(
      backgroundColor: Colors.white,
      icon: Icon(
        CupertinoIcons.trash,
        size: 30.sp,
      ),
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      title: Text(
        'Haqiqatdan ham Savatni tozalamoqchimisiz ?',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      actions: [
        Container(
          width: 110.w,
          height: 35.h,
          decoration: BoxDecoration(
            color: Platform.isIOS ? Colors.transparent : Colors.grey.withOpacity(.2),
            borderRadius: BorderRadius.circular(Platform.isIOS ? 0 : 14.r),
          ),
          child: TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Yo\'q',
              style: Platform.isIOS ? Theme.of(context).textTheme.titleMedium!.copyWith(color: CupertinoColors.activeBlue) : Theme.of(context).textTheme.titleMedium!,
            ),
          ),
        ),
        Container(
          width: 110.w,
          height: 35.h,
          decoration: BoxDecoration(
            color: Platform.isIOS ? Colors.transparent : CupertinoColors.destructiveRed,
            borderRadius: BorderRadius.circular(Platform.isIOS ? 0 : 14.r),
          ),
          child: TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'O\'chirish',
              style: Platform.isIOS ? Theme.of(context).textTheme.titleMedium!.copyWith(color: CupertinoColors.destructiveRed) : Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ),
      ],
    );
  }
}
