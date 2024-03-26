import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FilterPriceRadioWidget<T> extends StatelessWidget {
  final double width;
  final T value;
  final Color activeColor;
  final T groupValue;
  final ValueChanged<T?>? onChanged;
  final String title;
  final MainAxisAlignment mainAxisAlignment;
  final double padding;
  final double margin;


  const FilterPriceRadioWidget({
    super.key,
    required this.width,
    required this.value,
    required this.activeColor,
    required this.groupValue,
    required this.onChanged,
    required this.title,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.padding = 0,
    this.margin = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color(0xFFF2F4F7),
      ),
      padding: EdgeInsets.symmetric(horizontal: padding),
      margin: EdgeInsets.symmetric(horizontal: margin),
      height: 33.h,
      child: RadioMenuButton(
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
