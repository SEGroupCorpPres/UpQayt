import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:upqayt/features/presentation/pages/home/Base64ImageScreen.dart';
import 'package:upqayt/generated/assets.dart';

class RebateWidget extends StatelessWidget {
  const RebateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: () => pushScreen(context, screen: const Base64ImageScreen()),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      child: Container(
        width: size.width,
        height: 135.h,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20).r,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(18).r,
          image: const DecorationImage(
            image: AssetImage(Assets.imagesRebate),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
