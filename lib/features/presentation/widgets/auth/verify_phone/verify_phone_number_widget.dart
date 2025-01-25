// VerifyCodeInput widgeti
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/remote/models/otp_verify_model.dart';
import 'package:upqayt/features/presentation/controllers/app_animation_controller.dart';
import 'package:upqayt/features/presentation/controllers/home_controllers.dart';
import 'package:upqayt/features/presentation/widgets/auth/login/login_send_button_widget.dart';
import 'package:upqayt/features/presentation/widgets/auth/verify_phone/otp_verify_widget.dart';
import 'package:upqayt/features/presentation/widgets/auth/verify_phone/verify_phone_header_widget.dart';

class VerifyPhoneNumberWidget extends StatefulWidget {
  const VerifyPhoneNumberWidget({super.key});

  @override
  State<VerifyPhoneNumberWidget> createState() =>
      _VerifyPhoneNumberWidgetState();
}

class _VerifyPhoneNumberWidgetState extends State<VerifyPhoneNumberWidget>
    with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  final HomeController homeController = Get.put(HomeController());
  final AppAnimationController appAnimationController =
      Get.find<AppAnimationController>();
  final OtpFieldControllerV2 otpController = OtpFieldControllerV2();
  late OtpVerificationModel otpVerification;
  late String phoneNumber;
  final FocusNode _verifyPhoneFocusNode = FocusNode();
  late AnimationController _verifySmsController;
  late Animation<double> _verifySmsAnimation;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    // _loginController = AnimationController(
    //   vsync: this,
    //   duration: const Duration(milliseconds: 800),
    // );
    _verifySmsController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _initializeAnimations();
    ever(homeController.isLoginAnimationDismissed, (bool dismissed) {
      if (dismissed) {
        _verifySmsController.forward();
      }
    });
    log(_verifySmsController.status.name);
    _initializeAuthFocus();
    if (homeController.isRequestVerify) {
      log('is request verify on verify state ->${homeController.isPhoneFocus}');

      _initializeAuthFocus();
      // _initializeDeviceInfo();
      // _getPhoneToken();
    } else {
      if (_verifySmsController.isCompleted) {
        _verifySmsController.reverse();
      }
    }
  }

  void _initializeAnimations() {
    final bottomInset = WidgetsBinding
            .instance.platformDispatcher.implicitView?.viewInsets.bottom ??
        0.0;

    _verifySmsAnimation = Tween<double>(
      begin: -350,
      end: bottomInset,
    ).animate(_verifySmsController)
      ..addListener(() {
        setState(() {
          appAnimationController.updatePosition(_verifySmsAnimation.value);
        });
      });
  }

  void _initializeAuthFocus() {
    if (homeController.isRequestVerify) {
      setState(() {
        otpController.setFocus(0);
      });
      _startVerifyAnimation();
      _getPhoneNumber();
    } else {
      log('isRequestVerify ');
    }
  }

  void _startVerifyAnimation() {
    log('verify animation');
    _verifySmsController.forward();
    homeController.isVerifyPhoneFocus.value = true;
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    _initializeAnimations();
  }

  void _getPhoneNumber() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    phoneNumber = prefs.getString('phoneNumber')!;
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _verifyPhoneFocusNode.dispose();
    _verifySmsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _initializeAnimations();
    return AnimatedPositioned(
      duration: Duration(milliseconds: 200),
      bottom: _verifySmsAnimation.value,
      left: 0,
      right: 0,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.r)),
        ),
        padding:
            EdgeInsets.only(top: 15.h, left: 20.w, right: 20.w, bottom: 20.h),
        child: Column(
          children: [
            VerifyPhoneHeaderWidget(
              onTap: () {
                homeController.changeRequestVerifyToFalse();
              },
            ),
            OtpVerifyWidget(
              otpController: otpController,
              onChanged: (pin) {
                homeController.otpLength.value = pin;
              },
              onCompleted: (pin) {
                log('Completed: $pin');
              },
            ),
            GetBuilder<HomeController>(
              builder: (controller) => LoginSendButtonWidget(
                titleColor: controller.otpLength.value.length == 5
                    ? Colors.white
                    : AppColors.mainColor,
                color: AppColors.mainColor.withOpacity(
                    controller.otpLength.value.length == 5 ? 1 : .1),
                onTap: () {
                  controller.changeLoginFocusToFalse();
                  controller.changeRequestVerifyToFalse();
                  controller.changeIsAuthToTrue();
                  if (_verifySmsController.isCompleted) {
                    _verifySmsController.reverse();
                  }
                  // otpVerification = OtpVerification(
                  //   phoneNumber: phoneNumber,
                  //   otp: homeController.otpLength.value,
                  //   sessionId: 2,
                  // );
                  // BlocProvider.of<AuthBloc>(context).add(VerifyOtp(otpVerification));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
