// VerifyCodeInput widgeti
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/presentation/controllers/app_animation_controller.dart';
import 'package:upqayt/features/presentation/controllers/home_controllers.dart';

class VerifyPhoneNumberWidget extends StatefulWidget {
  const VerifyPhoneNumberWidget({super.key});

  @override
  State<VerifyPhoneNumberWidget> createState() => _VerifyPhoneNumberWidgetState();
}

class _VerifyPhoneNumberWidgetState extends State<VerifyPhoneNumberWidget> with SingleTickerProviderStateMixin {
  final HomeController homeController = Get.find<HomeController>();
  final AppAnimationController appAnimationController = Get.find<AppAnimationController>();
  final OtpFieldControllerV2 otpController = OtpFieldControllerV2();
  final FocusNode _verifyPhoneFocusNode = FocusNode();
  late final AnimationController _verifySmsController = AnimationController(
    vsync: this,
    duration: Duration(milliseconds: 800),
  );
  late Animation<double> _verifySmsAnimation;

  @override
  void initState() {
    super.initState();
  }

  void _initializeAnimations(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final bottom = mediaQuery.viewInsets.bottom;
    print(bottom);
    // Animatsiya kontrollerini yarating

    // Animatsiyalarni yarating
    _verifySmsAnimation = Tween<double>(
      begin: -350,
      end: bottom,
    ).animate(_verifySmsController);
  }

  void _initializeAuthFocus() {
    // `isRequestVerify` holatini kuzatib borish uchun tinglovchi qo'shing
    if (homeController.isRequestVerify.value) {
      otpController.setFocus(1);
      // `true` bo'lganda animatsiyani ishga tushiring
      _startVerifyAnimation();
      print('is Ever');
    } else {
      print('isRequestVerify ');
    }
  }

  // Tizimga kirish animatsiyasini boshlang
  void _startVerifyAnimation() {
    print('verify animation');
    _verifySmsController.forward();
    homeController.isVerifyPhoneFocus.value = true;
  }

  @override
  void dispose() {
    _verifyPhoneFocusNode.dispose();
    _verifySmsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _initializeAuthFocus();
    _initializeAnimations(context);
    return AnimatedPositioned(
      duration: Duration(milliseconds: 800),
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
            _buildVerifyHeader(context),
            _buildOtpField(context),
            _buildVerifySendButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildVerifyHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Material(
              child: InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  homeController.changeRequestVerifyToFalse();
                },
                child: Icon(
                  Icons.adaptive.arrow_back,
                  size: 15.sp,
                ),
              ),
            ),
            SizedBox(width: 8.w),
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
    );
  }

  Widget _buildOtpField(BuildContext context) {
    return Material(
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
            homeController.otpLength.value = pin;
          },
          onCompleted: (pin) {
            print('Completed: $pin');
          },
        ),
      ),
    );
  }

  Widget _buildVerifySendButton(BuildContext context) {
    return Material(
      child: SafeArea(
        top: false,
        child: Obx(
          () => MainButton(
            title: 'Yuborish',
            onTap: () {
              homeController.changeLoginFocusToFalse();
            },
            titleColor: homeController.otpLength.value.length == 5 ? Colors.white : AppColors.mainColor,
            color: AppColors.mainColor.withOpacity(homeController.otpLength.value.length == 5 ? 1 : .1),
          ),
        ),
      ),
    );
  }
}
