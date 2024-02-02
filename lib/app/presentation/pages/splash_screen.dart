import 'package:flutter/material.dart';
import 'package:upqayt/app/presentation/pages/intro.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/generated/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    super.didChangeAppLifecycleState(state);
  }

  changeStatusBarColor(Color color) async {
    try {} catch (e) {}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futureNavigate();
  }

  futureNavigate() {
    Future.delayed(
      const Duration(milliseconds: 1800),
      () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (_) => const IntroScreen(),
          ),
          (route) => false,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        right: false,
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          color: AppColors.mainColor,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(Assets.assetsBackground),
              Image.asset(Assets.assetsSplashLogo),
            ],
          ),
        ),
      ),
    );
  }
}
