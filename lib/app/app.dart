import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/app/presentation/pages/intro.dart';
import 'package:upqayt/app/presentation/pages/onboarding.dart';
import 'package:upqayt/config/theme.dart';
import 'package:upqayt/features/presentation/pages/home/home.dart';

class App extends StatelessWidget {
  App({super.key});
  final AppTheme _appTheme = AppTheme();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          // theme: _appTheme.lightThemeData,
          home: child,
        );
      },
      // child: HomePage(),
      // child: IntroScreen(),
      child: OnboardingPage(),
    );
  }
}
// RichText(
//                     text: TextSpan(
//                       text: 'Up ',
//                       style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                             color: const Color(0xFFF76512),
//                             fontWeight: FontWeight.w700,
//                             fontSize: 22.sp,
//                           ),
//                       children: [
//                         TextSpan(
//                           text: 'Qayt ',
//                           style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                                 color: AppColors.mainColor,
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 22.sp,
//                               ),
//                         ),
//                         TextSpan(
//                           text: 'ilovasiga xush kelibsiz',
//                           style: Theme.of(context).textTheme.titleLarge!.copyWith(
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 22.sp,
//                               ),
//                         ),
//                       ],
//                     ),
//                   )