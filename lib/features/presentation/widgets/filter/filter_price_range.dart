import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:upqayt/core/colors.dart';

class FilterPriceRange extends StatefulWidget {
  const FilterPriceRange({super.key});

  @override
  State<FilterPriceRange> createState() => _FilterPriceRangeState();
}

class _FilterPriceRangeState extends State<FilterPriceRange> {
  SfRangeValues _values = SfRangeValues(40.0, 80.0);
  TextEditingController _priceStartController = TextEditingController();
  TextEditingController _priceEndController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Stack(
      children: [
        Container(
          height: 150.h,
          width: size.width,
          color: Colors.lightBlueAccent.withOpacity(.1),
        ),
        Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r), color: Colors.white),
          width: size.width,
          height: 141.h,
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Row(
                  children: [
                    Text(
                      'Narxi',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width,
                height: 10.h,
                child: SfRangeSlider(
                  min: 0.0,
                  max: 100.0,
                  values: _values,
                  activeColor: AppColors.mainColor,
                  interval: 1,
                  minorTicksPerInterval: 1,
                  onChanged: (SfRangeValues values) {
                    setState(() {
                      _values = values;
                      _priceStartController.text = _values.start.toString();
                      _priceEndController.text = _values.end.toString();
                    });
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Dan',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        SizedBox(height: 5.h),
                        SizedBox(
                          width: size.width / 2 - 25.w,
                          height: 40.h,
                          child: TextField(
                            controller: _priceStartController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: const BorderSide(color: Colors.grey, width: 1),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Gacha',
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        SizedBox(height: 5.h),
                        SizedBox(
                          width: size.width / 2 - 25.w,
                          height: 40.h,
                          child: TextField(
                            controller: _priceEndController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide: const BorderSide(color: Colors.grey, width: 1),
                              ),
                              isDense: true,
                              contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
