import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/app/presentation/widgets/onboarding_text_list.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/presentation/pages/home/home.dart';
import 'package:upqayt/features/presentation/pages/map/map_screen.dart';
import 'package:upqayt/generated/assets.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _selectPage = 0;

  final List<String> _images = [
    Assets.imagesOnboarding1,
    Assets.imagesOnboarding2,
    Assets.imagesOnboarding3,
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _selectPage = _pageController.page!.round();
      });
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              itemCount: _images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: size.width,
                        height: size.height * .7,
                        child: Center(
                          child: Image.asset(
                            _images[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: size.height * .17),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: onboardingTitleList(context)[_selectPage],
                ),
                SizedBox(height: size.height * .01),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: onboardingSubtitleList(context)[_selectPage],
                ),
                SizedBox(height: size.height * .03),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: InkWell(
                    onTap: () {
                      if (_selectPage >= 2) {
                        Navigator.pushReplacement(
                          context,
                          Platform.isIOS
                              ? CupertinoPageRoute(
                                  builder: (_) => const YandexMapScreen(),
                                )
                              : MaterialPageRoute(
                                  builder: (_) => const HomePage(),
                                ),
                        );
                      } else {
                        setState(() {
                          _selectPage++;
                          _pageController.animateToPage(
                            _selectPage,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        });
                      }
                    },
                    child: Container(
                      width: MediaQuery.sizeOf(context).width,
                      margin: EdgeInsets.symmetric(horizontal: 4.w),
                      height: 40.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: AppColors.mainColor,
                      ),
                      child: Center(
                        child: Text(
                          'Keyingi',
                          style: Theme.of(context).textTheme.labelMedium,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * .03),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: _images.map((e) {
                    var index = _images.indexOf(e);
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                        color: index == _selectPage ? AppColors.mainColor : AppColors.subtitleColor,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      height: 6,
                      width: index == _selectPage ? 20 : 6,
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: size.height * .01,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: TextButton(
                    onPressed: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => YandexMapScreen()),
                      (route) => false,
                    ),
                    child: Text(
                      'O‘tkazib yuborish',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.restaurantDescription),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
