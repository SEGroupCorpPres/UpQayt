import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/local/data_sources/deliver_time.dart';
import 'package:upqayt/features/presentation/widgets/filter/filter_delivery_time_button.dart';

class FilterHeader extends StatefulWidget {
  const FilterHeader({super.key});

  @override
  State<FilterHeader> createState() => _FilterHeaderState();
}

class _FilterHeaderState extends State<FilterHeader> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Stack(
      children: [
        Container(
          height: 115.h,
          width: size.width,
          color: Colors.lightBlueAccent.withOpacity(.1),
        ),
        Container(
          width: size.width,
          height: 105.h,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: const Color(0xFFF2F7F3),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Yetkazib berish vaqti',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFF8999A6).withOpacity(.2),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      width: 60.w,
                      height: 30.h,
                      child: Center(
                          child: Text(
                        'Tozalash',
                        style: Theme.of(context).textTheme.titleSmall,
                      )),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.h),
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 3.w),
                width: size.width,
                height: 35.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: Color(0xFF8999A6).withOpacity(.2),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FilterDeliverTimeButton(
                      bgColor: deliveryTime()[0]['isSelected'] ? AppColors.mainColor : Colors.transparent,
                      titleStyle: deliveryTime()[0]['isSelected'] ? Theme.of(context).textTheme.labelSmall! : Theme.of(context).textTheme.titleSmall!,
                      title: deliveryTime()[0]['time'],
                      onTap: () {
                        setState(() {
                          deliveryTime()[0]['isSelected'] = true;
                          deliveryTime()[1]['isSelected'] = false;
                          deliveryTime()[2]['isSelected'] = false;
                          deliveryTime()[3]['isSelected'] = false;
                        });
                      },
                    ),
                    FilterDeliverTimeButton(
                      bgColor: deliveryTime()[1]['isSelected'] ? AppColors.mainColor : Colors.transparent,
                      titleStyle: deliveryTime()[1]['isSelected'] ? Theme.of(context).textTheme.labelSmall! : Theme.of(context).textTheme.titleSmall!,
                      title: deliveryTime()[1]['time'],
                      onTap: () {
                        setState(() {
                          deliveryTime()[0]['isSelected'] = false;
                          deliveryTime()[1]['isSelected'] = true;
                          deliveryTime()[2]['isSelected'] = false;
                          deliveryTime()[3]['isSelected'] = false;
                        });
                      },
                    ),
                    FilterDeliverTimeButton(
                      bgColor: deliveryTime()[2]['isSelected'] ? AppColors.mainColor : Colors.transparent,
                      titleStyle: deliveryTime()[2]['isSelected'] ? Theme.of(context).textTheme.labelSmall! : Theme.of(context).textTheme.titleSmall!,
                      title: deliveryTime()[2]['time'],
                      onTap: () {
                        setState(() {
                          deliveryTime()[0]['isSelected'] = false;
                          deliveryTime()[1]['isSelected'] = false;
                          deliveryTime()[2]['isSelected'] = true;
                          deliveryTime()[3]['isSelected'] = false;
                        });
                      },
                    ),
                    FilterDeliverTimeButton(
                      bgColor: deliveryTime()[3]['isSelected'] ? AppColors.mainColor : Colors.transparent,
                      titleStyle: deliveryTime()[3]['isSelected'] ? Theme.of(context).textTheme.labelSmall! : Theme.of(context).textTheme.titleSmall!,
                      title: deliveryTime()[3]['time'],
                      onTap: () {
                        setState(() {
                          deliveryTime()[0]['isSelected'] = false;
                          deliveryTime()[1]['isSelected'] = false;
                          deliveryTime()[2]['isSelected'] = false;
                          deliveryTime()[3]['isSelected'] = true;
                        });
                      },
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
