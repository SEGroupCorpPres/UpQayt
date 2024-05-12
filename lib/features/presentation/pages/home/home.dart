import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/presentation/controllers/home_controllers.dart';
import 'package:upqayt/features/presentation/pages/home/home_screen.dart';
import 'package:upqayt/features/presentation/pages/orders/order_screen.dart';
import 'package:upqayt/features/presentation/pages/profile/profile.dart';
import 'package:upqayt/features/presentation/pages/search/search_screen.dart';
import 'package:upqayt/features/presentation/widgets/auth/login_widget.dart';
import 'package:upqayt/features/presentation/widgets/auth/verify_phone_number_widget.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>  {
  // PersistentTabController to'rtta asosiy sahifani boshqaradi.
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  final HomeController homeController = Get.put(HomeController()); // `HomeController` ni yaratish va `Get.put` orqali saqlash
  // TextField va OTPTextField uchun fokus nodelar
  final TextEditingController _phoneController = TextEditingController(text: '+99899');
  final TextEditingController _verifyController = TextEditingController(text: '');
  final FocusNode _phoneFocusNode = FocusNode();
  final FocusNode _verifyPhoneFocusNode = FocusNode();

  // Animatsiya boshqaruvchilar va animatsiyalar
  late AnimationController _loginController;
  late AnimationController _verifySmsController;
  late Animation<double> _loginAnimation;
  late Animation<double> _verifySmsAnimation;

  // Qurilma ma'lumotlari
  late String device;
  late String _phoneNumberLength = '';
  late String _otpLength = '';

  bool _isPhoneFocus = false;
  bool _isVerifyPhoneFocus = false;

  // OTPTextField uchun kontrol
  OtpFieldControllerV2 otpController = OtpFieldControllerV2();

  // Autentifikatsiya holati
  bool isAuth = false; // Foydalanuvchining autentifikatsiyadan o'tgan yoki o'tmaganligini ko'rsatadi
  bool isRequestVerify = false;

  @override
  void initState() {
    super.initState();
    _initializeDeviceInfo();
  }


  // Qurilma ma'lumotlarini olish
  void _initializeDeviceInfo() async {
    final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isIOS) {
      final IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      device = '${iosInfo.name} ${iosInfo.model}';
    } else if (Platform.isAndroid) {
      final AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      device = '${androidInfo.brand.toUpperCase()} ${androidInfo.model}';
    }
    print(device);
  }


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


  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      // TextField tashqarisiga bosilganda klaviaturani yopish
      onTap: () {
        homeController.isPhoneFocus.value = false;
        homeController.isVerifyPhoneFocus.value = false;
      },
      child: Stack(
        children: [
          PersistentTabView(
            controller: _controller,
            tabs: _navBarsItems(),
            backgroundColor: Colors.white,
            handleAndroidBackButtonPress: true,
            resizeToAvoidBottomInset: false,
            stateManagement: true,
            popAllScreensOnTapOfSelectedTab: true,
            popActionScreens: PopActionScreensType.all,
            screenTransitionAnimation: const ScreenTransitionAnimation(
              curve: Curves.ease,
              duration: Duration(milliseconds: 200),
            ),
            navBarBuilder: (navBarConfig) => Style6BottomNavBar(
              navBarConfig: navBarConfig,
            ),
          ),
          // Tizimga kirish animatsiyasi
          LoginWidget(),
          // Sms tasdiqlash animatsiyasi
          VerifyPhoneNumberWidget(),
        ],
      ),
    );
  }


  // Pastki navigatsiya paneli elementlarini aniqlash
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


