import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/presentation/pages/restaurant/restaurant_info_screen.dart';
import 'package:upqayt/features/presentation/widgets/restaurant_detail/restaurant_appbar_icon.dart';
import 'package:upqayt/features/presentation/widgets/restaurant_detail/restaurant_bottom_sheet.dart';
import 'package:upqayt/features/presentation/widgets/restaurant_detail/restaurant_products_list.dart';
import 'package:upqayt/generated/assets.dart';

import '../../../data/local/data_sources/mock_data.dart';
import '../../widgets/restaurant_detail/restaurant_food_categories.dart';

class RestaurantDetailScreen extends StatefulWidget {
  const RestaurantDetailScreen({super.key});

  @override
  State<RestaurantDetailScreen> createState() => _RestaurantDetailScreenState();
}

class _RestaurantDetailScreenState extends State<RestaurantDetailScreen> with SingleTickerProviderStateMixin {
  ScrollController scrollController = ScrollController();
  late TabController _tabController;
  bool isScroll = false;
  double position = 0;
  int selectedCategoryIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    scrollController.addListener(() {
      // if (scrollController.) {
      //
      // }
    });
    print(isScroll);
    super.initState();
    _tabController = TabController(length: foodCategory.length, vsync: this, initialIndex: 0);
    print(_tabController.index);

  }

  @override
  void dispose() {
    // TODO: implement dispose
    scrollController.dispose();
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.scaffoldBGColor,
      body: SafeArea(
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverSafeArea(
              bottom: false,
              sliver: SliverAppBar(
                pinned: true,
                floating: true,
                expandedHeight: 200.h,
                excludeHeaderSemantics: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    Assets.imagesCaravanKhivaRestaurant,
                    fit: BoxFit.cover,
                  ),
                  centerTitle: false,
                  titlePadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  title: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                    if (constraints.biggest.height > 100) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Navruz Restaurant',
                            style: Theme.of(context).textTheme.labelMedium!.copyWith(fontSize: 14.sp),
                          ),
                          Container(
                            width: 35.w,
                            height: 15.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  child: Icon(
                                    Icons.star_rate,
                                    size: 12.sp,
                                    color: AppColors.activeFavouriteColor,
                                  ),
                                ),
                                SizedBox(width: 3.w),
                                Text(
                                  '4.8',
                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey, fontSize: 8.sp),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    } else {
                      return Container();
                    }
                  }),
                ),
                leading: RestaurantAppBarIcon(onPressed: () => Navigator.pop(context), icon: Icons.adaptive.arrow_back),
                actions: [
                  RestaurantAppBarIcon(onPressed: () {}, icon: Icons.adaptive.share_outlined),
                  RestaurantAppBarIcon(onPressed: () {}, icon: CupertinoIcons.heart_fill, color: Colors.red,),
                  RestaurantAppBarIcon(
                    onPressed: () => Navigator.push(
                      context,
                      Platform.isIOS
                          ? CupertinoPageRoute(
                              builder: (_) => const RestaurantInfoScreen(),
                            )
                          : MaterialPageRoute(
                              builder: (_) => const RestaurantInfoScreen(),
                            ),
                    ),
                    icon: Icons.error_outline,
                  )
                ],
              ),
            ),
            SliverPersistentHeader(
              delegate: RestaurantFoodCategoriesDelegate(tabController: _tabController),
              pinned: true,
            ),
            SliverPadding(
              padding: EdgeInsets.only(
                left: 20.w,
                right: 20.w,
              ),
              sliver: SliverFillRemaining(
                child: TabBarView(
                  controller: _tabController,
                  children: List.generate(
                    foodCategory.length,
                    (index) => SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: RestaurantProductsList(index: index),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomSheet: const RestaurantBottomSheet(),
    );
  }
}
