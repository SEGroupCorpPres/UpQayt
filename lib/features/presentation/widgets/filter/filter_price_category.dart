import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/local/models/price_category.dart';
import 'package:upqayt/features/presentation/widgets/filter/filter_price_radio_widget.dart';

class FilterPriceCategory extends StatefulWidget {
  const FilterPriceCategory({super.key});

  @override
  State<FilterPriceCategory> createState() => _FilterPriceCategoryState();
}

class _FilterPriceCategoryState extends State<FilterPriceCategory> {
  PriceCategory _priceCategory = PriceCategory.expensive;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Container(
          height: 185.h,
          width: size.width,
          color: Colors.lightBlueAccent.withOpacity(.1),
        ),
        Container(
          width: size.width,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9).r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Foydali',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 10.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FilterPriceRadioWidget(
                        width: 100.w,
                        value: PriceCategory.expensive,
                        activeColor: AppColors.mainColor,
                        groupValue: _priceCategory,
                        title: priceCategory[0]['value']!,
                        onChanged: (PriceCategory? value) {
                          _priceCategory = value!;
                          setState(() {});
                        },
                      ),
                      FilterPriceRadioWidget(
                        width: 100.w,
                        value: PriceCategory.average,
                        activeColor: AppColors.mainColor,
                        groupValue: _priceCategory,
                        title: priceCategory[1]['value']!,
                        onChanged: (PriceCategory? value) {
                          _priceCategory = value!;
                          setState(() {});
                        },
                      ),
                      FilterPriceRadioWidget(
                        width: 80.w,
                        value: PriceCategory.cheap,
                        activeColor: AppColors.mainColor,
                        groupValue: _priceCategory,
                        title: priceCategory[2]['value']!,
                        onChanged: (PriceCategory? value) {
                          _priceCategory = value!;
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  FilterPriceRadioWidget(
                    width: size.width,
                    padding: 10.w,
                    value: PriceCategory.rating,
                    activeColor: AppColors.mainColor,
                    groupValue: _priceCategory,
                    title: priceCategory[3]['value']!,
                    onChanged: (PriceCategory? value) {
                      _priceCategory = value!;
                      setState(() {});
                    },
                    mainAxisAlignment: MainAxisAlignment.start,
                  ),
                  SizedBox(height: 5.h),
                  FilterPriceRadioWidget(
                    width: size.width,
                    padding: 10.w,
                    value: PriceCategory.fast,
                    mainAxisAlignment: MainAxisAlignment.start,
                    activeColor: AppColors.mainColor,
                    groupValue: _priceCategory,
                    title: priceCategory[4]['value']!,
                    onChanged: (PriceCategory? value) {
                      _priceCategory = value!;
                      setState(() {});
                    },
                  ),
                ],
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ],
    );
  }
}
