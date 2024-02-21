import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/presentation/pages/home/top_products_screen.dart';
import 'package:upqayt/generated/assets.dart';

class EmptyBagScreen extends StatelessWidget {
  const EmptyBagScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height - 2 * kToolbarHeight.h - 30.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 240.h,
                width: size.width,
                child: SvgPicture.asset(
                  Assets.imagesShoppingBagBg,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Text(
                'Sizning savatingiz bo\'sh',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ],
          ),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.h),
            child: MainButton(
              title: 'Maxsulotlar',
              onTap: () => pushNewScreen(
                context,
                screen: const TopProductsScreen(),
                withNavBar: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
