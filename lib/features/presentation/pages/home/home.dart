import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/presentation/pages/home/home_screen.dart';
import 'package:upqayt/features/presentation/pages/orders/order_screen.dart';
import 'package:upqayt/features/presentation/pages/profile/profile.dart';
import 'package:upqayt/features/presentation/pages/search/search_screen.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);
  TextEditingController _phoneController = TextEditingController(text: '+99899');
  TextEditingController _verifyController = TextEditingController(text: '');
  late FocusNode _phoneFocusNode;
  late FocusNode _verifyPhoneFocusNode;
  String _phoneNumberLength = '';
  String _otpLength = '';
  late AnimationController _loginController;
  late AnimationController _verifySmsController;
  late Animation<double> _loginAnimation;
  late Animation<double> _verifySmsAnimation;
  String device = '';
  bool _isPhoneFocus = false;
  bool _isVerifyPhoneFocus = false;
  OtpFieldControllerV2 otpController = OtpFieldControllerV2();
  bool isAuth = false; // Foydalanuvchining autentifikatsiyadan o'tgan yoki o'tmaganligini ko'rsatadi
  bool isRequestVerify = false;

  @override
  void initState() {
    getDeviceName();
    _phoneFocusNode = FocusNode();
    _verifyPhoneFocusNode = FocusNode();
    super.initState();
    // initAuthFocus(context);
  }

  void initAuthFocus(BuildContext context) {
    // Foydalanuvchi autentifikatsiyadan o'tganligini tekshirish
    // Sizning autentifikatsiya funktsiyangizni bu yerda chaqiring
    // isAuth = checkAuthentication();
    double bottomPosition = MediaQuery.of(context).viewInsets.bottom;
    if (!isAuth) {
      // Animatsiya boshqaruvchisi va Tween
      _loginController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 500),
      );

      _isPhoneFocus = true;
      _loginAnimation = Tween<double>(begin: -350.0, end: bottomPosition).animate(_loginController);

      // Agar foydalanuvchi autentifikatsiyadan o'tmagan bo'lsa, animatsiyani boshlash
      _loginController.forward().then((value) => _phoneFocusNode.requestFocus());
    }
    if (isRequestVerify) {
      // Animatsiya boshqaruvchisi va Tween
      _verifySmsController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 500),
      );
      _isPhoneFocus = false;
      _isVerifyPhoneFocus = true;
      _verifySmsAnimation = Tween<double>(begin: -350.0, end: bottomPosition).animate(_verifySmsController);

      // Agar foydalanuvchi autentifikatsiyadan o'tmagan bo'lsa, animatsiyani boshlash
      _verifySmsController.forward().then((value) => _verifyPhoneFocusNode.requestFocus());
    } else {
      // Animatsiya boshqaruvchisi va Tween
      _verifySmsController = AnimationController(
        vsync: this,
        duration: const Duration(milliseconds: 500),
      );
      _isPhoneFocus = false;
      _isVerifyPhoneFocus = false;

      _verifySmsAnimation = Tween<double>(begin: -350.0, end: -350.0).animate(_verifySmsController);

      // Agar foydalanuvchi autentifikatsiyadan o'tmagan bo'lsa, animatsiyani boshlash
      _verifySmsController.forward();
    }
  }

  void getDeviceName() async {
    String? deviceName;
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      IosDeviceInfo? iosInfo = await deviceInfo.iosInfo;
      device = iosInfo.name + iosInfo.model;
    } else if (Platform.isAndroid) {
      AndroidDeviceInfo? androidInfo = await deviceInfo.androidInfo;
      device = '${androidInfo.brand.toUpperCase()} ${androidInfo.model}';
    }
    print(device);
  }

  void verifyAnimation() {}

  @override
  void dispose() {
    // Animatsiya boshqaruvchisini yopish
    _loginController.dispose();
    _verifySmsController.dispose();
    _phoneController.dispose();
    _verifyController.dispose();
    _controller.dispose();
    _phoneFocusNode.dispose();
    _verifyPhoneFocusNode.dispose();
    super.dispose();
  }

  // Foydalanuvchining autentifikatsiya holatini tekshirish funksiyasi
  bool checkAuthentication() {
    // Bu yerda foydalanuvchining autentifikatsiya holatini tekshirish uchun funktsiyani chaqiring
    // Misol uchun, `true` ni qaytarib, foydalanuvchi autentifikatsiyadan o'tgan deb o'ylang
    return isAuth = !isAuth;
    // Agar foydalanuvchi o'tmagan deb o'ylansa
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    // TODO: implement build
    initAuthFocus(context);
    return Stack(
      children: [
        PersistentTabView(
          controller: _controller,
          tabs: _navBarsItems(),
          backgroundColor: Colors.white,
          // Default is Colors.white.
          handleAndroidBackButtonPress: true,
          // Default is true.
          resizeToAvoidBottomInset: true,
          // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
          stateManagement: true,
          // Default is true.
          // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.

          popAllScreensOnTapOfSelectedTab: true,
          popActionScreens: PopActionScreensType.all,
          // itemAnimationProperties: const ItemAnimationProperties(
          //   // Navigation Bar's items animation properties.
          //   duration: Duration(milliseconds: 200),
          //   curve: Curves.ease,
          // ),
          screenTransitionAnimation: const ScreenTransitionAnimation(
            // Screen transition animation on change of selected tab.
            curve: Curves.ease,
            duration: Duration(milliseconds: 200),
          ),
          navBarBuilder: (navBarConfig) => Style6BottomNavBar(
            navBarConfig: navBarConfig,
          ),
        ),
        Builder(
          builder: (context) {
            return (_isPhoneFocus || _isVerifyPhoneFocus)
                ? Positioned(
                    bottom: 0,
                    child: Container(
                      width: size.width,
                      height: size.height - MediaQuery.of(context).padding.top - kToolbarHeight,
                      color: Colors.black87,
                    ),
                  )
                : Container();
          },
        ),
        AnimatedBuilder(
          animation: _loginAnimation,
          builder: (context, child) {
            return Positioned(
              bottom: _loginAnimation.value,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
                ),
                padding: EdgeInsets.only(top: 15.h, left: 20.w, right: 20.w, bottom: 20.h),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Material(
                              child: InkWell(
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                onTap: () {
                                  if (_loginController.isCompleted) {
                                    _loginController.reverse();
                                  }
                                  setState(() {
                                    isAuth = true;
                                    _isPhoneFocus = false;
                                  });
                                },
                                child: Icon(
                                  Icons.adaptive.arrow_back,
                                  size: 15.sp,
                                ),
                              ),
                            ),
                            Text(
                              'Keyinroq',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          'Telefon raqamingizni kiriting',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          'va tasdiqlash codini kiriting',
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                    Material(
                      color: Colors.transparent,
                      shadowColor: Colors.transparent,
                      borderOnForeground: false,
                      surfaceTintColor: Colors.transparent,
                      child: SizedBox(
                        height: 60.h,
                        child: SearchField(
                          autofocus: true,
                          focusNode: _phoneFocusNode,
                          margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.h),
                          size: size,
                          hintText: '',
                          width: size.width,
                          onChanged: (value) {
                            // setState(() {
                            _phoneNumberLength = value;
                            // });
                          },
                          hintStyle: TextStyle(),
                          controller: _phoneController,
                          bgColor: Colors.blueGrey.shade50,
                          onTapOutside: (event) {
                            setState(() {
                              _phoneFocusNode.unfocus();
                              if (_loginController.isCompleted) {
                                _loginController.reverse();
                              }
                              isAuth = true;
                              _isPhoneFocus = false;
                            });
                          },
                        ),
                      ),
                    ),
                    Material(
                      child: SafeArea(
                        top: false,
                        child: MainButton(
                          title: 'Yuborish',
                          onTap: () {
                            _phoneFocusNode.unfocus();
                            setState(() {
                              _verifyPhoneFocusNode.requestFocus();
                              isRequestVerify = true;
                              isAuth = true;
                            });
                          },
                          titleColor: _phoneNumberLength.length == 13 ? Colors.white : AppColors.mainColor,
                          color: AppColors.mainColor.withOpacity(_phoneNumberLength.length == 13 ? 1 : .1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        AnimatedBuilder(
          animation: _verifySmsAnimation,
          builder: (context, child) {
            return Positioned(
              bottom: _verifySmsAnimation.value,
              left: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
                ),
                padding: EdgeInsets.only(top: 15.h, left: 20.w, right: 20.w, bottom: 20.h),
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Material(
                              child: InkWell(
                                highlightColor: Colors.transparent,
                                splashColor: Colors.transparent,
                                onTap: () {
                                  if (_verifySmsController.isCompleted) {
                                    _verifySmsController.reverse();
                                  }
                                  setState(() {
                                    _isVerifyPhoneFocus = false;
                                  });
                                },
                                child: Icon(
                                  Icons.adaptive.arrow_back,
                                  size: 15.sp,
                                ),
                              ),
                            ),
                            Text(
                              'Keyinroq',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          'Sms kodni kiriting',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          '+998 (99) 966 68 86',
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey),
                        ),
                      ],
                    ),
                    Material(
                      color: Colors.transparent,
                      shadowColor: Colors.transparent,
                      borderOnForeground: false,
                      surfaceTintColor: Colors.transparent,
                      child: Container(
                        decoration: BoxDecoration(color: Colors.blueGrey.withOpacity(.3), borderRadius: BorderRadius.circular(12.r)),
                        margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.h),
                        padding: EdgeInsets.symmetric(vertical: 5.h),
                        alignment: Alignment.centerLeft,
                        height: 40.h,
                        child: OTPTextFieldV2(
                          controller: otpController,
                          length: 5,
                          width: MediaQuery.of(context).size.width,
                          textFieldAlignment: MainAxisAlignment.center,
                          spaceBetween: 15,
                          fieldWidth: 30,
                          autoFocus: true,
                          outlineBorderRadius: 15,
                          style: Theme.of(context).textTheme.titleMedium!,
                          onChanged: (pin) {
                            print("Changed: " + pin);
                            // setState(() {
                            _otpLength = pin;
                            // });
                          },
                          onCompleted: (pin) {
                            print("Completed: " + pin);
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                    Material(
                      child: SafeArea(
                        top: false,
                        child: MainButton(
                          title: 'Yuborish',
                          onTap: () {
                            setState(() {
                              _verifyPhoneFocusNode.unfocus();
                              // _verifyPhoneFocusNode.requestFocus();
                              isRequestVerify = false;
                              if (_verifySmsController.isCompleted) {
                                _verifySmsController.reverse();
                              }
                              _isVerifyPhoneFocus = false;
                            });
                          },
                          titleColor: _otpLength.length == 5 ? Colors.white : AppColors.mainColor,
                          color: AppColors.mainColor.withOpacity(_otpLength.length == 5 ? 1 : .1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  var bottom = -150.0;
  var bottomPadding = 0.0;
  int selectedPageIndex = 0;

  List<PersistentTabConfig> _navBarsItems() {
    return [
      PersistentTabConfig(
        screen: const HomeScreen(),
        item: ItemConfig(
          icon: const Icon(CupertinoIcons.home),
          title: "Asosiy",
          activeForegroundColor: AppColors.mainColor,
          inactiveForegroundColor: CupertinoColors.systemGrey,
        ),
      ),
      PersistentTabConfig(
        screen: const SearchScreen(),
        item: ItemConfig(
          icon: const Icon(CupertinoIcons.search),
          title: "Izlash",
          activeForegroundColor: AppColors.mainColor,
          inactiveForegroundColor: CupertinoColors.systemGrey,
        ),
      ),
      PersistentTabConfig(
        screen: const OrderScreen(),
        item: ItemConfig(
          icon: const Icon(CupertinoIcons.bag),
          title: "Buyurtmalar",
          activeForegroundColor: AppColors.mainColor,
          inactiveForegroundColor: CupertinoColors.systemGrey,
        ),
      ),
      PersistentTabConfig(
        screen: const ProfileScreen(),
        item: ItemConfig(
          icon: const Icon(CupertinoIcons.person_fill),
          title: "Profil",
          activeForegroundColor: AppColors.mainColor,
          inactiveForegroundColor: CupertinoColors.systemGrey,
        ),
      ),
    ];
  }
}
