import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderBottomSheetPrice extends StatelessWidget {
  const OrderBottomSheetPrice({super.key, required this.image, required this.title, this.titleColor = Colors.black54, required this.price});

  final String image;
  final String title;
  final String price;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      // minLeadingWidth: 0,
      leading: Image.asset(image, fit: BoxFit.cover,),
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(color: titleColor, fontSize: 14.sp),
      ),
      trailing: Text(
        '$price so\'m',
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }
}
