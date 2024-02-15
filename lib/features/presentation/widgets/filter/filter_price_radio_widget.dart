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
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color(0xFFF2F4F7),
      ),
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      padding: EdgeInsets.symmetric(horizontal: padding),
      width: width,
      height: 35.h,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: mainAxisAlignment,
        children: [
          Radio.adaptive(
            value: value,
            activeColor: activeColor,
            splashRadius: 10,
            hoverColor: Colors.transparent,
            toggleable: true,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.w),
            child: Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
