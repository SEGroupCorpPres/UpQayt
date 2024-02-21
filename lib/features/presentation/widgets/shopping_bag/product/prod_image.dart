import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProdImage extends StatelessWidget {
  const ProdImage({super.key, required this.image});
final String image;
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 90.w,
      height: 70.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
