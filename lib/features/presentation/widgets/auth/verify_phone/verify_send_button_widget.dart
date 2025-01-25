// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:ulgurji_bozor/core/widgets/main_button.dart';
//
// class VerifySendButtonWidget extends StatelessWidget {
//   const VerifySendButtonWidget({super.key});
// final Color titleColor;
// fina
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: SafeArea(
//         top: false,
//         child:  MainButton(
//             title: 'Yuborish',
//             onTap: () {
//               homeController.changeLoginFocusToFalse();
//               otpVerification = OtpVerification(
//                 phoneNumber: phoneNumber,
//                 otp: homeController.otpLength.value,
//                 sessionId: 2,
//               );
//               // BlocProvider.of<AuthBloc>(context).add(VerifyOtp(otpVerification));
//             },
//             titleColor: homeController.otpLength.value.length == 5 ? Colors.white : AppColors.mainColor,
//             color: AppColors.mainColor.withOpacity(homeController.otpLength.value.length == 5 ? 1 : .1),
//           ),
//       ),
//     );
//   }
// }
