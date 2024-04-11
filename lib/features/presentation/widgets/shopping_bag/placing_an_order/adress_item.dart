import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddressItem extends StatelessWidget {
  const AddressItem({super.key, required this.title, required this.addressItem});

  final String title;
  final String addressItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(height: 5.h,),
        Text(
          addressItem,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black45),
        ),
      ],
    );
  }
}
