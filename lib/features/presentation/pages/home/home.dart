import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/presentation/bloc/auth/auth_bloc.dart';
import 'package:upqayt/features/presentation/controllers/home_controllers.dart';
import 'package:upqayt/features/presentation/pages/home/home_screen.dart';
import 'package:upqayt/features/presentation/pages/orders/order_screen.dart';
import 'package:upqayt/features/presentation/pages/profile/profile.dart';
import 'package:upqayt/features/presentation/pages/search/search_screen.dart';
import 'package:upqayt/features/presentation/widgets/auth/auth_bg_widget.dart';
import 'package:upqayt/features/presentation/widgets/auth/login_widget.dart';
import 'package:upqayt/features/presentation/widgets/auth/verify_phone_number_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // PersistentTabController to'rtta asosiy sahifani boshqaradi.
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  final HomeController homeController = Get.put(HomeController()); // `HomeController` ni yaratish va `Get.put` orqali saqlash
  // TextField va OTPTextField uchun fokus nodelar
  // Qurilma ma'lumotlari

  // Autentifikatsiya holati
  bool isAuth = false; // Foydalanuvchining autentifikatsiyadan o'tgan yoki o'tmaganligini ko'rsatadi

  @override
  void initState() {
    super.initState();
  }

  // Qurilma ma'lumotlarini olish

  @override
  void dispose() {
    _controller.dispose();
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
        _showAuthErrorAlert();
      },
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is OtpVerificationSuccess) {
            _showAuthAlert();
          } else if (state is ErrorAuthState) {}
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
            AuthBgWidget(),
            // Tizimga kirish animatsiyasi
            LoginWidget(),
            // Sms tasdiqlash animatsiyasi
            VerifyPhoneNumberWidget(),
          ],
        ),
      ),
    );
  }

  void _showAuthAlert() {
    showAdaptiveDialog(
      context: context,
      useRootNavigator: false,
      builder: (context) {
        return _authAlert();
      },
    );
  }

  void _showAuthErrorAlert() {
    showAdaptiveDialog(
      context: context,
      builder: (context) {
        return _authErrorAlert();
      },
    );
  }

  AlertDialog _authErrorAlert() {
    return AlertDialog.adaptive(
      icon: CircleAvatar(
        radius: 20.sp,
        backgroundColor: AppColors.canselBtnBGColor,
        child: Icon(
          Icons.error,
          color: CupertinoColors.destructiveRed,
        ),
      ),
      title: Text(
        'Ro\'yxatdan o\'tishda xatolik yuz berdi qaytadan urinib ko\'ring',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      actions: [
        Platform.isIOS
            ? CupertinoButton(
                child: Text('Davom Etish'),
                onPressed: () {},
              )
            : MainButton(
                title: 'Davom Etish',
                titleColor: Colors.white,
                onTap: () => Navigator.of(context).pop(),
              ),
      ],
    );
  }

  AlertDialog _authAlert() {
    return AlertDialog.adaptive(
      icon: CircleAvatar(
        radius: 20.sp,
        child: Icon(
          Icons.check,
          color: AppColors.mainColor,
        ),
      ),
      title: Text(
        'Muvaffaqiyatli ro‘yhatdan o‘tdingiz',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      actions: [
        Platform.isIOS
            ? CupertinoButton(
                child: Text('Davom Etish'),
                onPressed: () {},
              )
            : MainButton(
                title: 'Davom Etish',
                titleColor: Colors.white,
                onTap: () => Navigator.of(context).pop(),
              ),
      ],
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
          icon: const Icon(CupertinoIcons.person),
          title: "Profil",
          activeForegroundColor: AppColors.mainColor,
          inactiveForegroundColor: CupertinoColors.systemGrey,
        ),
      ),
    ];
  }
}
