import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
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
        return GetMaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: _appTheme.lightThemeData,
          home: child,
        );
      },
      child: HomePage(),
      // child: TopProductsScreen(),
      // child: RestaurantDetailScreen(),
      // child: ShoppingBagScreen(),
      // child: PlacingAnOrderScreen(),
      // child: CourierLocation(),
      // child: OrderScreen(),
      // child: IntroScreen(),
      // child: SplashScreen(),
      // child: YandexMapScreen(),
      // child: SearchScreen(),
      // child: OnboardingPage(),
    );
  }
}
