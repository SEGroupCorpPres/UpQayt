import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/app/presentation/pages/intro.dart';
import 'package:upqayt/app/presentation/pages/onboarding.dart';
import 'package:upqayt/app/presentation/pages/splash_screen.dart';
import 'package:upqayt/config/theme.dart';
import 'package:upqayt/features/presentation/pages/home/home.dart';
import 'package:upqayt/features/presentation/pages/map/map_screen.dart';
import 'package:upqayt/features/presentation/pages/orders/courier_location.dart';

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
