import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/app/presentation/pages/onboarding.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/generated/assets.dart';

enum Language {
  uz,
  ru,
}

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  Language _selectedLang = Language.uz;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainBGColor,
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height * 2 / 3 - kToolbarHeight - kTextTabBarHeight,
                child: Center(
                  child: Image.asset(
                    Assets.assetsSplashLogo,
                    colorBlendMode: BlendMode.xor,
                  ),
                ),
              ),
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r),
                  ),
                ),
                margin: EdgeInsets.zero,
                color: Colors.white,
                child: Container(
                  padding: EdgeInsets.only(
                    top: 25.h,
                    left: 20.w,
                    right: 20.w,
                    bottom: 10.h,
                  ),
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height / 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tilni tanlang',
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      Column(
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                            clipBehavior: Clip.hardEdge,
                            elevation: .3,
                            child: RadioListTile.adaptive(
                              value: Language.uz,
                              toggleable: true,
                              groupValue: _selectedLang,
                              selected: _selectedLang == Language.uz,
                              controlAffinity: ListTileControlAffinity.trailing,
                              onChanged: (Language? value) {
                                _selectedLang = value!;
                                setState(() {});
                              },
                              activeColor: AppColors.mainColor,
                              selectedTileColor: const Color(0xFFC1FFD2),
                              tileColor: const Color(0xFFEAECF0),
                              title: Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Text(
                                  'O‘zbekcha',
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: .3,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
                            clipBehavior: Clip.hardEdge,
                            child: RadioListTile.adaptive(
                              value: Language.ru,
                              activeColor: AppColors.mainColor,
                              tileColor: const Color(0xFFEAECF0),
                              splashRadius: 10,
                              selected: _selectedLang == Language.ru,
                              selectedTileColor: const Color(0xFFC1FFD2),
                              hoverColor: Colors.transparent,
                              controlAffinity: ListTileControlAffinity.trailing,
                              toggleable: true,
                              groupValue: _selectedLang,
                              onChanged: (Language? value) {
                                _selectedLang = value!;
                                setState(() {});
                              },
                              title: Padding(
                                padding: EdgeInsets.only(left: 10.w),
                                child: Text(
                                  'Русский',
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => OnboardingPage(),
                          ),
                        ),
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
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
