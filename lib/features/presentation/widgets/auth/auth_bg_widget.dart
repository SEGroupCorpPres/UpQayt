import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:upqayt/features/presentation/controllers/home_controllers.dart';

class AuthBgWidget extends StatefulWidget {
  const AuthBgWidget({super.key});

  @override
  State<AuthBgWidget> createState() => _AuthBgWidgetState();
}

class _AuthBgWidgetState extends State<AuthBgWidget> with SingleTickerProviderStateMixin {
  final HomeController homeController = Get.find<HomeController>();
  late final AnimationController _authBgController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 500),
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startLoginAnimation();
  }

  late Animation<double> _authBgAnimation;
  bool _isRequestBg = false;

  void _isRequestAuthBg() {
    if (homeController.isPhoneFocus.value || homeController.isVerifyPhoneFocus.value) {
      _isRequestBg = true;
    } else {
      _isRequestBg = false;
    }
  }

  void _initializeAnimations(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final bottom = mediaQuery.viewInsets.bottom;
    print(bottom);

    // Animatsiyalarni yarating
    _authBgAnimation = Tween<double>(begin: 0, end: 0).animate(_authBgController);
  }

  void _startLoginAnimation() {
    _authBgController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _authBgController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _isRequestAuthBg();
    _initializeAnimations(context);
    final Size size = MediaQuery.sizeOf(context);
    return AnimatedBuilder(
      animation: _authBgAnimation,
      builder: (context, child) {
        switch (_isRequestBg) {
          case true:
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black54,
                  ),
                  width: size.width,
                  height: size.height - MediaQuery.of(context).padding.top - kToolbarHeight + 12.r,
                ),
              ],
            );
          default:
            return Container();
        }
      },
    );
  }
}
