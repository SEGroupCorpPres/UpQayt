import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          prefixIcon: Icon(
            prefixIcon,
            color: prefixIconColor,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: hintTextColor,
          ),
        ),
      ),
    );
  }
}
