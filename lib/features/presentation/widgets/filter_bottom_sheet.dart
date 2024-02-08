import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/presentation/widgets/filter_header.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({
    super.key,
    required this.scrollController,
    required this.context,
    required this.offset,
  });

  final ScrollController scrollController;
  final BuildContext context;
  final double offset;

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  ScrollController scrollController = ScrollController();

  SfRangeValues _values = SfRangeValues(40.0, 80.0);
  TextEditingController _priceStartController = TextEditingController();
  TextEditingController _priceEndController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = widget.scrollController;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return ListView(
      controller: scrollController,
      shrinkWrap: true,
      children: [
        FilterHeader(),
        Stack(
          children: [
            Container(
              height: 150.h,
              width: size.width,
              color: Colors.lightBlueAccent.withOpacity(.1),
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.r), color: Colors.white),
              width: size.width,
              height: 140.h,
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
                        // SearchField(
                        //   size: size,
                        //   hintText: '',
                        //   width: size.width / 2 - 40.w,
                        //   hintStyle: Theme.of(context).textTheme.labelSmall!,
                        //   controller: _priceStartController,
                        // ),
                        // SearchField(
                        //   size: size,
                        //   hintText: '',
                        //   width: size.width / 2 - 40.w,
                        //   hintStyle: Theme.of(context).textTheme.labelSmall!,
                        //   controller: _priceEndController,
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
