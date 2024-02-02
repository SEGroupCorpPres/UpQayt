import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';

class SearchField extends StatelessWidget {
  final Size size;
  final IconData prefixIcon;
  final Color prefixIconColor;
  final String hintText;
  final Color hintTextColor;

  const SearchField({
    super.key,
    required this.size,
    this.prefixIcon = CupertinoIcons.search,
    this.prefixIconColor = AppColors.restaurantDescription,
    required this.hintText,
    this.hintTextColor = AppColors.restaurantDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15).r,
        color: Colors.white,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15).r,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10).r,
          prefixIcon: Icon(
            prefixIcon,
            color: prefixIconColor,
          ),
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppColors.subtitleColor,
              ),
        ),
      ),
    );
  }
}
