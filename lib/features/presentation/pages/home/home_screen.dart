import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/presentation/pages/home/notification_screen.dart';
import 'package:upqayt/features/presentation/pages/shopping_bag/shopping_bag_screen.dart';
import 'package:upqayt/features/presentation/widgets/home_screen/home_screen_restaurants.dart';
import 'package:upqayt/features/presentation/widgets/home_screen/home_screen_top_products.dart';
import 'package:upqayt/features/presentation/widgets/rebate_widget.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: AppColors.mainColor, // Status bar rangi oq bo'lishi
          // statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light// Oq yorug'likdagi ikonlarni ko'rsatish
      ),
    );
    final size = MediaQuery.sizeOf(context);
    final mediaQuery = MediaQuery.of(context);
    final keyboardHeight = mediaQuery.viewInsets.bottom;
    return Material(
      color: AppColors.scaffoldBGColor,
      child: Column(
        children: [
          Container(
            width: size.width,
            height: kToolbarHeight + MediaQuery.of(context).padding.top,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: const BoxDecoration(
              color: AppColors.mainColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Text(
                            'Joriy manzil',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.white,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () => pushScreen(context, screen: const ShoppingBagScreen(), withNavBar: false),
                          icon: const Icon(
                            CupertinoIcons.bag,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                        IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () => pushScreen(context, screen: const NotificationScreen(), withNavBar: true),
                          icon: const Icon(
                            Icons.notifications_active_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            // color: Colors.greenAccent,
            height: size.height - MediaQuery.of(context).padding.top - kToolbarHeight.h,
            child: SingleChildScrollView(
              controller: ScrollController(),
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  SearchField(
                    onTapOutside: (value) {
                      FocusNode().unfocus();
                    },
                    controller: searchController,
                    size: size,
                    width: size.width,
                    hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColors.subtitleColor,
                        ),
                    hintText: 'Maxsulotlar bo‘yicha izlang',
                  ),
                  const HomeScreenTopProducts(),
                  const RebateWidget(),
                  const HomeScreenRestaurants(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
