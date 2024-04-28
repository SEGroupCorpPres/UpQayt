import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/presentation/pages/home/home.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';

Widget buildBottomSheet(
  BuildContext context,
  ScrollController scrollController,
  double bottomSheetOffset,
  TextEditingController addressController,
  TextEditingController entryController,
  TextEditingController floorController,
  TextEditingController homeController,
  TextEditingController commentController,
  TextEditingController addressNameController,
  VoidCallback onTap,
) {
  final size = MediaQuery.sizeOf(context);
  return ListView(
    padding: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 20.h, top: 10.h),
    controller: scrollController,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              height: 2,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 10.h,
      ),
      Text(
        'Yetkazib berish manzili',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      SizedBox(height: 10.h),
      Container(
        margin: EdgeInsets.symmetric(vertical: 5.h),
        child: SearchField(
          onTapOutside: (value) {
            FocusNode().unfocus();
          },
          controller: addressController,
          size: size,
          width: size.width,
          hintText: 'Manzilni kiriting',
          margin: EdgeInsets.zero,
          suffixIcon: CupertinoIcons.search,
          bgColor: AppColors.textFieldColor,
          hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppColors.subtitleColor,
              ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.h),
            child: SearchField(
              onTapOutside: (value) {
                FocusNode().unfocus();
              },
              controller: entryController,
              size: size,
              width: size.width * .27,
              hintText: 'Kirish',
              margin: EdgeInsets.zero,
              bgColor: AppColors.textFieldColor,
              contentPaddingHorizontally: 10,
              hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.subtitleColor,
                  ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.h),
            child: SearchField(
              onTapOutside: (value) {
                FocusNode().unfocus();
              },
              controller: floorController,
              size: size,
              width: size.width * .27,
              hintText: 'Qavat',
              margin: EdgeInsets.zero,
              hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.subtitleColor,
                  ),
              contentPaddingHorizontally: 10,
              bgColor: AppColors.textFieldColor,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 5.h),
            child: SearchField(
              onTapOutside: (value) {
                FocusNode().unfocus();
              },
              controller: homeController,
              size: size,
              width: size.width * .27,
              hintText: 'Xonadon',
              margin: EdgeInsets.zero,
              hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: AppColors.subtitleColor,
                    fontWeight: FontWeight.w400,
                  ),
              contentPaddingHorizontally: 10,
              bgColor: AppColors.textFieldColor,
            ),
          ),
        ],
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 5.h),
        child: SearchField(
          onTapOutside: (value) {
            FocusNode().unfocus();
          },
          controller: commentController,
          size: size,
          width: size.width,
          hintText: 'Izoh...',
          margin: EdgeInsets.zero,
          bgColor: AppColors.textFieldColor,
          hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppColors.subtitleColor,
              ),
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 5.h),
        child: SearchField(
          onTapOutside: (value) {
            FocusNode().unfocus();
          },
          controller: addressNameController,
          size: size,
          width: size.width,
          hintText: 'Manzil nomi',
          margin: EdgeInsets.zero,
          // suffixIcon: CupertinoIcons.search,
          bgColor: AppColors.textFieldColor,
          hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppColors.subtitleColor,
              ),
        ),
      ),
      SizedBox(height: 10.h),
      MainButton(
        title: 'Manzilni Saqlash',
        onTap: () => Navigator.pushAndRemoveUntil(
          context,
          Platform.isIOS
              ? CupertinoPageRoute(
                  builder: (_) => const HomePage(),
                )
              : MaterialPageRoute(
                  builder: (_) => const HomePage(),
                ),
          (route) => false,
        ),
      ),
    ],
  );
}
