import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';
import 'package:upqayt/features/presentation/widgets/widget_backgroud.dart';
import 'package:upqayt/generated/assets.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

enum Sex { male, female }

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _lastnameController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  DateTime _date = DateTime.now();
  final DateTime _dateForAge = DateTime.now();
  final DateFormat _dateFormat = DateFormat('dd/MM/yyyy');
  Sex _sex = Sex.male;

  void _showCupertinoDialog(Widget child) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => Container(
        height: 150.h,
        padding: EdgeInsets.only(top: 6.0.h),
        // The Bottom margin is provided to align the popup above the system
        // navigation bar.
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Provide a background color for the popup.
        color: CupertinoColors.systemBackground.resolveFrom(context),
        // Use a SafeArea widget to avoid system overlaps.
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  Widget cupertinoDatePicker(double bR) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(bR),
        color: Colors.white,
      ),
      height: 100.h,
      child: CupertinoDatePicker(
        dateOrder: DatePickerDateOrder.dmy,
        mode: CupertinoDatePickerMode.date,
        onDateTimeChanged: (date) {
          if (date != _date) {
            _date = date;
            _dateController.text = _dateFormat.format(date);
          }
          print(_date);
        },
        initialDateTime: DateTime(_date.year - 27),
        minimumYear: 1940,
        maximumDate: DateTime(_dateForAge.year - 27, 12, 31),
      ),
    );
  }

  Future<void> _buildCupertinoDatePicker() async {
    (
      context,
      text: 'Сохранить',
      child: cupertinoDatePicker(8),
      onClicked: () => Navigator.pop(context),
    );
  }

  Future<void> _materialDatePicker() async {
    if (_date.year >= _dateForAge.year - 27) {
      _date = DateTime(_dateForAge.year - 27);
    }
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime(_date.year),
      firstDate: DateTime(1940),
      lastDate: DateTime(_dateForAge.year - 27, 12, 31),
      helpText: 'ВЫБЕРИТЕ ДАТУ',
      cancelText: 'ОТМЕНА',
      confirmText: 'ВЫБИРАТЬ',
      fieldHintText: 'дд/мм/гггг',
      fieldLabelText: 'Введите дату',
      keyboardType: TextInputType.datetime,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            // days/years gridview
            textTheme: TextTheme(
              headlineSmall: GoogleFonts.montserrat(),
              // Selected Date landscape
              titleLarge: GoogleFonts.montserrat(),
              // Selected Date portrait
              labelSmall: GoogleFonts.montserrat(),
              // Title - SELECT DATE
              bodyLarge: GoogleFonts.montserrat(),
              // year gridbview picker
              titleMedium: GoogleFonts.montserrat(color: Colors.black),
              // input
              titleSmall: GoogleFonts.montserrat(),
              // month/year picker
              bodySmall: GoogleFonts.montserrat(), // days
            ),
            // Buttons
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                textStyle: GoogleFonts.montserrat(),
              ),
            ),
            // Input
            inputDecorationTheme: InputDecorationTheme(
              labelStyle: GoogleFonts.montserrat(), // Input label
              floatingLabelBehavior: FloatingLabelBehavior.always,
              contentPadding: EdgeInsets.zero,
              isDense: true,
            ),
          ),
          child: child!,
        );
      },
    );
    if (date != _date) {
      setState(() {
        _date = date ?? DateTime.now();
        _dateController.text = _dateFormat.format(date!);
      });
    }
    print(_date);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _nameController.dispose();
    _lastnameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.mainBGColor,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: size.width,
              height: size.height - MediaQuery.of(context).padding.top - kToolbarHeight.h,
            ),
            Positioned(
              top: MediaQuery.of(context).padding.top,
              child: SizedBox(
                width: size.width,
                height: size.height - MediaQuery.of(context).padding.top - kToolbarHeight.h - kBottomNavigationBarHeight.h,
                child: SafeArea(
                  top: false,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        WidgetBackground(
                          child: SizedBox(
                            width: size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CircleAvatar(
                                      radius: 50.r,
                                      child: CircleAvatar(
                                        radius: 49.r,
                                        backgroundImage: const AssetImage(Assets.imagesSulaymon),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Container(
                                        padding: EdgeInsets.zero,
                                        margin: EdgeInsets.zero,
                                        width: 20.r,
                                        height: 20.r,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: AppColors.mainColor,
                                        ),
                                        child: const Icon(Icons.add, color: CupertinoColors.white),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        WidgetBackground(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Ism',
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black54),
                              ),
                              SizedBox(height: 5.h),
                              SearchField(
                                onTapOutside: (value) {
                                  FocusNode().unfocus();
                                },
                                size: size,
                                hintText: 'Ism',
                                width: size.width,
                                hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.grey),
                                controller: _nameController,
                                bgColor: CupertinoColors.lightBackgroundGray,
                                margin: EdgeInsets.zero,
                                maxLines: 1,
                                contentPaddingVertically: 13,
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'Familiya',
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black54),
                              ),
                              SizedBox(height: 5.h),
                              SearchField(
                                onTapOutside: (value) {
                                  FocusNode().unfocus();
                                },
                                size: size,
                                hintText: 'Familiya',
                                width: size.width,
                                hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.grey),
                                controller: _lastnameController,
                                bgColor: CupertinoColors.lightBackgroundGray,
                                margin: EdgeInsets.zero,
                                contentPaddingVertically: 13,
                                maxLines: 1,
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'Jins',
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black54),
                              ),
                              SizedBox(height: 5.h),
                              Row(
                                children: [
                                  Flexible(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.r),
                                        color: CupertinoColors.lightBackgroundGray,
                                      ),
                                      child: RadioListTile.adaptive(
                                        value: Sex.male,
                                        groupValue: _sex,
                                        selected: _sex == Sex.male,
                                        splashRadius: 10,
                                        selectedTileColor: const Color(0xFFC1FFD2),
                                        hoverColor: Colors.transparent,
                                        controlAffinity: ListTileControlAffinity.trailing,
                                        toggleable: true,
                                        activeColor: AppColors.mainColor,
                                        title: Text(
                                          Sex.male.name.toString().toLowerCase(),
                                          style: Theme.of(context).textTheme.titleMedium,
                                        ),
                                        onChanged: (Sex? value) {
                                          setState(() {
                                            _sex = value!;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20.w,
                                  ),
                                  Flexible(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12.r),
                                        color: CupertinoColors.lightBackgroundGray,
                                      ),
                                      child: RadioListTile.adaptive(
                                        value: Sex.female,
                                        groupValue: _sex,
                                        selected: _sex == Sex.female,
                                        splashRadius: 10,
                                        selectedTileColor: const Color(0xFFC1FFD2),
                                        hoverColor: Colors.transparent,
                                        controlAffinity: ListTileControlAffinity.trailing,
                                        toggleable: true,
                                        activeColor: AppColors.mainColor,
                                        title: Text(
                                          Sex.female.name.toString().toLowerCase(),
                                          style: Theme.of(context).textTheme.titleMedium,
                                        ),
                                        onChanged: (Sex? value) {
                                          setState(() {
                                            _sex = value!;
                                          });
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'Tug\'ilgan sanangiz',
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black54),
                              ),
                              SizedBox(height: 5.h),
                              SearchField(
                                onTapOutside: (value) {
                                  FocusNode().unfocus();
                                },
                                size: size,
                                hintText: 'kun/oy/yil',
                                width: size.width,
                                hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.grey),
                                controller: _dateController,
                                bgColor: CupertinoColors.lightBackgroundGray,
                                margin: EdgeInsets.zero,
                                contentPaddingVertically: 13,
                                suffixIcon: CupertinoIcons.calendar,
                                maxLines: 1,
                                onPressedSuffixIcon: () async {
                                  Platform.isIOS ? _showCupertinoDialog(cupertinoDatePicker(5)) : await _materialDatePicker();
                                },
                              ),
                              SizedBox(height: 15.h),
                              MainButton(
                                margin: 0,
                                title: 'Ma\'lumotlarni saqlash',
                                onTap: () => Navigator.pop(context),
                                color: AppColors.mainColor,
                                titleColor: CupertinoColors.white,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: size.width,
              height: kToolbarHeight,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: .01,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 3.2.w,
                        height: 20.h,
                        color: AppColors.mainColor,
                      ),
                      SizedBox(width: 10.w),
                      Text('Shaxsiy profil', style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: CupertinoButton(
                      padding: EdgeInsets.zero,
                      minSize: 25.w,
                      color: Platform.isIOS ? Colors.transparent : AppColors.mainColor,
                      child: Platform.isIOS
                          ? Text(
                              'Edit',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.mainColor),
                            )
                          : SvgPicture.asset(
                              Assets.iconsEditAlt,
                              colorFilter: const ColorFilter.mode(CupertinoColors.white, BlendMode.srcIn),
                              width: 15.w,
                            ),
                      onPressed: () => pushNewScreen(context, screen: const EditProfileScreen(), withNavBar: true),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
