import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';
import 'package:upqayt/features/presentation/widgets/widget_backgroud.dart';
import 'package:upqayt/generated/assets.dart';

class DeliveryTime extends StatefulWidget {
  const DeliveryTime({super.key, required this.size});

  final Size size;

  @override
  State<DeliveryTime> createState() => _DeliveryTimeState();
}

class _DeliveryTimeState extends State<DeliveryTime> {
  TimeOfDay _time = TimeOfDay.now();
  DateTime _timeCupertino = DateTime.now();
  DateFormat dateFormat = DateFormat.Hm();
  String? deliveryTime;
  TextEditingController _promoCodeController = TextEditingController();

  Future<void> _buildDeliveryBottomSheet(Size size, BuildContext context) {
    return showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216.h,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        // The bottom margin is provided to align the popup above the system
        // navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Vaqtni tanlang',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 10.h),
              Text(
                'Ish vaqti: 9:00 - 18:00',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.mainColor),
              ),
              SizedBox(height: 10.h),
              Expanded(
                child: _buildCupertinoTimePicker(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _buildPromoCodeBottomSheet(Size size, BuildContext context) {
    return showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) => BottomSheet(
        backgroundColor: Colors.transparent,
        showDragHandle: true,
        builder: (context) {
          return SafeArea(
            top: false,
            child: Container(
              height: 150.h,
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Promocode',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: 10.h),
                  SearchField(
                    onChanged: (value) {
                      _promoCodeController.text = value;
                    },
                    maxLines: 1,
                    textCapitalization: TextCapitalization.characters,
                    margin: EdgeInsets.zero,
                    contentPaddingVertically: 0,
                    size: size,
                    hintText: 'Promocodeni kiriting',
                    width: size.width,
                    hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey),
                    controller: _promoCodeController,
                    bgColor: Colors.black12,
                  ),
                  const Spacer(),
                  MainButton(
                    title: 'Promocodeni saqlash',
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {});
                    },
                  ),
                ],
              ),
            ),
          );
        },
        onClosing: () {},
      ),
    );
  }

  Widget _buildCupertinoTimePicker() {
    return CupertinoDatePicker(
      mode: CupertinoDatePickerMode.time,
      initialDateTime: _timeCupertino,
      use24hFormat: true,
      onDateTimeChanged: (time) {
        _timeCupertino = time;
        deliveryTime = time.hour < 10 && time.minute < 10
            ? '0${time.hour}:0${time.minute}'
            : time.minute < 10
                ? '${time.hour}:0${time.minute}'
                : time.hour < 10
                    ? '0${time.hour}:${time.minute}'
                    : '${time.hour}:${time.minute}';
        setState(() {});
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    deliveryTime = dateFormat.format(_timeCupertino);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WidgetBackground(
      child: Column(
        children: [
          InkWell(
            onTap: () {
              _buildDeliveryBottomSheet(widget.size, context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Yetkazib berish vaqti',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(
                  width: widget.size.width * .25,
                  child: Row(
                    children: [
                      Image.asset(Assets.iconsTimer),
                      SizedBox(width: 5.w),
                      Text(
                        '$deliveryTime',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black54, fontSize: 12.sp),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.adaptive.arrow_forward,
                        size: 15.sp,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.h),
          InkWell(
            onTap: () {
              _buildPromoCodeBottomSheet(widget.size, context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Promocod',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Text(
                  _promoCodeController.text,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                Icon(
                  Icons.adaptive.arrow_forward,
                  size: 15.sp,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
