import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';

class SearchField extends StatelessWidget {
  final Size size;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Color prefixIconColor;
  final String hintText;
  final Color hintTextColor;
  final EdgeInsets margin;
  final Color bgColor;
  final double width;
  final double contentPaddingHorizontally;
  final double contentPaddingVertically;
  final TextStyle hintStyle;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onPressedSuffixIcon;

  const SearchField({
    super.key,
    required this.size,
    this.prefixIcon,
    this.prefixIconColor = AppColors.restaurantDescription,
    required this.hintText,
    this.hintTextColor = AppColors.restaurantDescription,
    this.margin = const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    this.suffixIcon,
    this.bgColor = Colors.white,
    required this.width,
    this.contentPaddingHorizontally = 25,
    this.contentPaddingVertically = 10, required this.hintStyle, required this.controller,
    this.onChanged, this.onPressedSuffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10).r,
        color: bgColor,
      ),
      margin: margin.r,
      child: TextField(
        onChanged: onChanged,
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(horizontal: contentPaddingHorizontally, vertical: contentPaddingVertically).r,
          prefixIcon: prefixIcon != null ? Icon(
            prefixIcon,
            color: prefixIconColor,
          ) : null,
          hintText: hintText,
          hintStyle: hintStyle,
          suffixIcon: suffixIcon != null ? IconButton(
            onPressed: onPressedSuffixIcon,
            icon: Icon(suffixIcon),
            color: prefixIconColor,
          ) : null,
        ),
      ),
    );
  }
}
