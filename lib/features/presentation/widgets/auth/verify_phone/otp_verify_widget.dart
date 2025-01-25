import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field_v2/otp_field_v2.dart';
import 'package:upqayt/features/presentation/controllers/home_controllers.dart';

class OtpVerifyWidget extends StatelessWidget {
  const OtpVerifyWidget({
    super.key,
    required this.otpController,
    // required this.homeController,
    required this.onChanged,
    required this.onCompleted,
  });
  final ValueChanged<String> onChanged;
  final ValueChanged<String> onCompleted;

  final OtpFieldControllerV2 otpController;
  // final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      borderOnForeground: false,
      surfaceTintColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blueGrey.withOpacity(.3),
            borderRadius: BorderRadius.circular(12.r)),
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
          onChanged: onChanged,
          onCompleted: onCompleted,
        ),
      ),
    );
  }
}
