import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryProducts extends StatelessWidget {
  final String title;
  final String image;
  final double width;
  final Size size;

  const CategoryProducts({
    super.key,
    required this.title,
    required this.image,
    required this.width,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width / 2 - 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(bottom: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width / 2 - 30,
            height: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp),
            ),
          ),
        ],
      ),
    );
  }
}
