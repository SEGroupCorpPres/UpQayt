import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/presentation/pages/home/home.dart';
import 'package:upqayt/generated/assets.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  int _selectPage = 0;
  final List _pages = [
    {
      'title': 'Find Food You Love',
      'subtitle': 'Discover the best foods over 1000 restaurants and fast delivery to your doorstep',
      'image': Assets.imagesOnboarding1,
    },
    {
      'title': 'Fast Delivery',
      'subtitle': 'Fast food delivery to your home, office wherever you are',
      'image': Assets.imagesOnboarding2,
    },
    {
      'title': 'Live Tracking',
      'subtitle': 'Real time tracking of your food on the app once you placed the order',
      'image': Assets.imagesOnboarding3,
    },
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
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            itemBuilder: (context, index) {
              var pObj = _pages[index] as Map? ?? {};
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: size.width,
                      height: size.width,
                      alignment: Alignment.center,
                      child: Image.asset(
                        pObj['image'],
                        width: size.width * .6,
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      pObj['title'],
                      style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 28,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: size.height * 0.01),
                    Text(
                      pObj['subtitle'],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.subtitleColor,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: _pages.map((e) {
                  var index = _pages.indexOf(e);
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
                height: size.height * .17,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: InkWell(
                  onTap: () {
                    if (_selectPage >= 2) {
                      Navigator.pushReplacement(
                        context,
                        Platform.isIOS
                            ? CupertinoPageRoute(
                          builder: (_) => const HomePage(),
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
              SizedBox(
                height: size.height * .1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
