import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/presentation/widgets/home_screen_restaurants.dart';
import 'package:upqayt/features/presentation/widgets/home_screen_top_products.dart';
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
    final size = MediaQuery.sizeOf(context);
    return Material(
      color: AppColors.scaffoldBGColor,
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              width: size.width,
              height: kToolbarHeight,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Row(
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
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.bag,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                      IconButton(
                        padding: EdgeInsets.zero,
                        onPressed: () {},
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
            ),
            SizedBox(
              height: size.height - kToolbarHeight - kBottomNavigationBarHeight - 75.h,
              child: ListView(
                shrinkWrap: true,
                children: [
                  SearchField(
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
          ],
        ),
      ),
    );
  }
}
