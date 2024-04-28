import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/presentation/pages/home/home.dart';
import 'package:upqayt/features/presentation/widgets/highlighted_button.dart';
import 'package:upqayt/features/presentation/widgets/map_bottom_sheet.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';

class YandexMapScreen extends StatefulWidget {
  const YandexMapScreen({super.key});

  @override
  State<YandexMapScreen> createState() => _YandexMapScreenState();
}

class _YandexMapScreenState extends State<YandexMapScreen> {
  bool isPressed = false;
  bool isHighlighted = true;

  // late AnimationController _addressController;
  // late Animation<double> _animation;
  ScrollController scrollController = ScrollController();
  TextEditingController searchController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController entryController = TextEditingController();
  TextEditingController floorController = TextEditingController();
  TextEditingController homeController = TextEditingController();
  TextEditingController commentController = TextEditingController();
  TextEditingController addressNameController = TextEditingController();
  bool _isShowAddress = false; // Foydalanuvchining autentifikatsiyadan o'tgan yoki o'tmaganligini ko'rsatadi
  double _bottomPosition = -1000.0; // Widgetning boshlang'ich pozitsiyasi

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  bool checkAuthentication() {
    // Bu yerda foydalanuvchining autentifikatsiya holatini tekshirish uchun funktsiyani chaqiring
    // Misol uchun, `true` ni qaytarib, foydalanuvchi autentifikatsiyadan o'tgan deb o'ylang
    return false; // Agar foydalanuvchi o'tmagan deb o'ylansa
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: size.height,
            width: size.width,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: size.width,
              height: kToolbarHeight.h + MediaQuery.of(context).padding.top,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.r)),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: .01,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () => Navigator.pop(context),
                            icon: Icon(
                              Icons.adaptive.arrow_back,
                              color: Colors.black,
                              size: 15.sp,
                            ),
                          ),
                          Text(
                            'R. Olloyarov 8',
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 7.h),
                ],
              ),
            ),
          ),
          Positioned(
            top: kToolbarHeight.h,
            width: size.width,
            child: SafeArea(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    // Button bosilganda widgetning pozitsiyasi -200 dan 0 ga o'zgartiriladi
                    _bottomPosition = -600;
                    isPressed= false;

                  });
                },
                onLongPressUp: () {
                  setState(() {
                    // Button bosilganda widgetning pozitsiyasi -200 dan 0 ga o'zgartiriladi
                    _bottomPosition = 0.0;
                    isPressed= true;
                  });
                },
                child: Container(
                  color: Colors.transparent,
                  height: size.height - MediaQuery.of(context).padding.bottom.h - kToolbarHeight.h,
                  padding: EdgeInsets.symmetric(vertical: 10.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      isPressed
                          ? const Row(
                              children: [
                                HighLightedButton(icon: Icons.arrow_back_ios_new),
                              ],
                            )
                          : Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.2),
                                    blurRadius: 1,
                                    spreadRadius: 1,
                                  )
                                ],
                              ),
                              child: SearchField(
                                onTapOutside: (value) {
                                  FocusNode().unfocus();
                                },
                                prefixIcon: CupertinoIcons.search,
                                controller: searchController,
                                size: size,
                                width: size.width,
                                hintText: 'Izlash',
                                hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                                      color: AppColors.subtitleColor,
                                    ),
                                margin: const EdgeInsets.all(1),
                              ),
                            ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                        child: MainButton(
                          title: 'Davom Etish',
                          onTap: () {
                            Navigator.push(
                              context,
                              Platform.isIOS
                                  ? CupertinoPageRoute(
                                      builder: (context) => const HomePage(),
                                    )
                                  : MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ),
                            );
                          },
                          titleColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: size.height / 2,
            right: 10.w,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  children: [
                    HighLightedButton(icon: Icons.add),
                    SizedBox(height: 10),
                    HighLightedButton(icon: Icons.remove),
                  ],
                )
              ],
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            bottom: _bottomPosition,
            width: size.width,
            child: Container(
              height: size.height * .45,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20.r),
                ),
              ),
              child: buildBottomSheet(
                context,
                scrollController,
                1,
                addressController,
                entryController,
                floorController,
                homeController,
                commentController,
                addressNameController,
                () {
                  setState(() {
                    // Button bosilganda widgetning pozitsiyasi -200 dan 0 ga o'zgartiriladi
                    _bottomPosition = -600;
                    isPressed= false;

                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
