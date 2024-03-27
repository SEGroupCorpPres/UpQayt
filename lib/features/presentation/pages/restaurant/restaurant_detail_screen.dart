import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/presentation/pages/home/home.dart';
import 'package:upqayt/generated/assets.dart';

import '../../../data/local/data_sources/mock_data.dart';
import '../../../data/local/models/food_category.dart';
import '../../widgets/restaurant_detail/restaurant_food_categories.dart';

class RestaurantDetailScreen extends StatefulWidget {
  const RestaurantDetailScreen({super.key});

  @override
  State<RestaurantDetailScreen> createState() => _RestaurantDetailScreenState();
}

class _RestaurantDetailScreenState extends State<RestaurantDetailScreen> {
  ScrollController scrollController = ScrollController();
   double position = 0;
  int selectedCategoryIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    scrollController.addListener(() {
      // print(scrollController.offset);
      position = scrollController.offset;
      print(position);
    });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    scrollController.dispose();
    super.dispose();
  }

  void scrollToCategory(int index) {
    if (selectedCategoryIndex != index) {

    int totalItems = 0;
    for(int i=0; i< index ; i++){
      totalItems += category[i].items.length;
    }
    scrollController.animateTo(
      145.h + (120 + totalItems) + (50 * index),
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
    setState(() {
      selectedCategoryIndex = index;
    });
    }
  }

  List<double> breakPoints = [];
//   void createBreakPoints(){
// double firstBP =
//   }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.scaffoldBGColor,
      body: SafeArea(
        bottom: false,
        child: CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverSafeArea(
              bottom: false,
              sliver: SliverAppBar(
                pinned: true,
                expandedHeight: 200.h,
                excludeHeaderSemantics: true,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    Assets.imagesCaravanKhivaRestaurant,
                    fit: BoxFit.cover,
                  ),
                  centerTitle: false,
                  titlePadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                  title:  position >= 153.0 ? Container() : Row(
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
                  ),
                ),
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.adaptive.arrow_back,
                      size: 18.sp,
                    ),
                  ),
                ),
                // leadingWidth: 60.w,
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.adaptive.share,
                        size: 18.sp,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        CupertinoIcons.heart,
                        size: 18.sp,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.info_outline,
                        size: 18.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SliverPersistentHeader(
              delegate: RestaurantFoodCategories(onChanged: scrollToCategory, selectedIndex: selectedCategoryIndex),
              pinned: true,
            ),
            // SliverToBoxAdapter(
            //   child: TabBar(
            //     indicatorWeight: 1,
            //     isScrollable: true,
            //     // labelColor: Colors.transparent,
            //     labelPadding: EdgeInsets.symmetric(horizontal: 10.w),
            //     tabAlignment: TabAlignment.start,
            //     controller: _tabController,
            //     dividerColor: Colors.transparent,
            //     tabs: List.generate(
            //       foodCategory.length,
            //       (index) => Tab(
            //         child: Container(
            //           height: 38,
            //           padding: EdgeInsets.only(left: index == 0 ? 10.w : 5.w, right: index == foodCategory.length - 1 ? 5.w : 10.w),
            //           decoration: ShapeDecoration(
            //             color: _tabController.index == index ? Colors.green : Colors.grey,
            //             shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
            //           ),
            //           child: Row(
            //             mainAxisSize: MainAxisSize.min,
            //             mainAxisAlignment: MainAxisAlignment.center,
            //             crossAxisAlignment: CrossAxisAlignment.center,
            //             children: [
            //               SizedBox(
            //                 width: 24,
            //                 height: 24,
            //                 child: Image.asset(foodCategory[index]['icon']!),
            //               ),
            //               const SizedBox(width: 10),
            //               Text(
            //                 foodCategory[index]['title']!,
            //                 style: const TextStyle(
            //                   color: Color(0xFF475467),
            //                   fontSize: 12,
            //                   fontFamily: 'Rubik',
            //                   fontWeight: FontWeight.w400,
            //                   height: 0,
            //                 ),
            //               ),
            //             ],
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            // SliverToBoxAdapter(
            //   child: Container(
            //     width: size.width,
            //     height: size.height - 200.h - 50 - 50.h,
            //     padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            //     child: TabBarView(
            //       controller: _tabController,
            //       children: List.generate(
            //           foodCategory.length,
            //           (index) => SingleChildScrollView(
            //                 child: Wrap(
            //                   spacing: 13.w,
            //                   clipBehavior: Clip.hardEdge,
            //                   runSpacing: 15.h,
            //                   children: List.generate(
            //                     category[index].items.length,
            //                     (item) => Container(
            //                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r), color: Colors.white),
            //                       width: size.width / 2 - 30,
            //                       child: Column(
            //                         crossAxisAlignment: CrossAxisAlignment.start,
            //                         children: [
            //                           Stack(
            //                             children: [
            //                               Container(
            //                                 width: size.width / 2 - 30,
            //                                 height: 110,
            //                                 decoration: BoxDecoration(
            //                                   borderRadius: BorderRadius.circular(12),
            //                                   color: Colors.grey,
            //                                   image: DecorationImage(
            //                                     image: AssetImage(category[index].items[item].image),
            //                                     fit: BoxFit.cover,
            //                                   ),
            //                                 ),
            //                               ),
            //                               category[index].items[item].rebate != null
            //                                   ? Positioned(
            //                                       top: 10,
            //                                       left: 8,
            //                                       child: Stack(
            //                                         alignment: Alignment.center,
            //                                         children: [
            //                                           Container(
            //                                             width: 40.w,
            //                                             height: 25.h,
            //                                             decoration: BoxDecoration(
            //                                               color: AppColors.mainColor,
            //                                               borderRadius: BorderRadius.circular(8.r),
            //                                             ),
            //                                           ),
            //                                           // const Icon(
            //                                           //   Icons.bookmark,
            //                                           //   color: AppColors.rebatePriceColor,
            //                                           //   size: 55,
            //                                           // ),
            //                                           Text(
            //                                             '${category[index].items[item].rebate!.toInt()} %',
            //                                             style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w600),
            //                                             textAlign: TextAlign.center,
            //                                           ),
            //                                         ],
            //                                       ),
            //                                     )
            //                                   : Container(),
            //                             ],
            //                           ),
            //                           Padding(
            //                             padding: const EdgeInsets.all(12).r,
            //                             child: Column(
            //                               mainAxisAlignment: MainAxisAlignment.start,
            //                               crossAxisAlignment: CrossAxisAlignment.start,
            //                               children: [
            //                                 Text(
            //                                   category[index].items[item].title,
            //                                   style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp),
            //                                 ),
            //                                 SizedBox(height: 8.h),
            //                                 RichText(
            //                                   text: TextSpan(
            //                                     text: '${category[index].items[item].price.toInt()}  UZS    ',
            //                                     style: Theme.of(context).textTheme.labelSmall!.copyWith(
            //                                           color: category[index].items[item].rebate != null ? AppColors.rebatePriceColor : AppColors.subtitleColor,
            //                                           fontSize: 14.sp,
            //                                         ),
            //                                     children: [
            //                                       category[index].items[item].rebate != null
            //                                           ? TextSpan(
            //                                               text: '${category[index].items[item].rebatePrice!.toInt()}  UZS',
            //                                               style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.grey, fontSize: 10.sp, decoration: TextDecoration.lineThrough),
            //                                             )
            //                                           : const TextSpan(),
            //                                     ],
            //                                   ),
            //                                 ),
            //                                 SizedBox(height: 8.h),
            //                                 InkWell(
            //                                   onTap: () {},
            //                                   child: Container(
            //                                     height: 25.h,
            //                                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.grey.withOpacity(.3)),
            //                                     child: Row(
            //                                       mainAxisAlignment: MainAxisAlignment.center,
            //                                       children: [
            //                                         Icon(Icons.add, size: 18.sp),
            //                                         SizedBox(width: 5.w),
            //                                         Text(
            //                                           'Qo\'shish',
            //                                           style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp),
            //                                         )
            //                                       ],
            //                                     ),
            //                                   ),
            //                                 )
            //                               ],
            //                             ),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               )),
            //     ),
            //   ),
            // ),
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: category.length,
                  (context, categoryIndex) {
                    List<Category> items = category[categoryIndex].items;
                    return Column(
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              category[categoryIndex].category,
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                        SizedBox(height: 10.h),
                        Wrap(
                          direction: Axis.horizontal,
                          spacing: 10.w,
                          runSpacing: 15.h,
                          children: List.generate(
                            items.length,
                            (index) => Container(
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r), color: Colors.white),
                              width: size.width / 2 - 30,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        width: size.width / 2 - 30,
                                        height: 110,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(12),
                                          color: Colors.grey,
                                          image: DecorationImage(
                                            image: AssetImage(items[index].image),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      items[index].rebate != null
                                          ? Positioned(
                                              top: 10,
                                              left: 8,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Container(
                                                    width: 40.w,
                                                    height: 25.h,
                                                    decoration: BoxDecoration(
                                                      color: AppColors.mainColor,
                                                      borderRadius: BorderRadius.circular(8.r),
                                                    ),
                                                  ),
                                                  // const Icon(
                                                  //   Icons.bookmark,
                                                  //   color: AppColors.rebatePriceColor,
                                                  //   size: 55,
                                                  // ),
                                                  Text(
                                                    '${items[index].rebate!.toInt()} %',
                                                    style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w600),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                            )
                                          : Container(),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(12).r,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          items[index].title,
                                          style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp),
                                        ),
                                        SizedBox(height: 8.h),
                                        RichText(
                                          text: TextSpan(
                                            text: '${items[index].price.toInt()}  UZS    ',
                                            style: Theme.of(context).textTheme.labelSmall!.copyWith(
                                                  color: items[index].rebate != null ? AppColors.rebatePriceColor : AppColors.subtitleColor,
                                                  fontSize: 14.sp,
                                                ),
                                            children: [
                                              items[index].rebate != null
                                                  ? TextSpan(
                                                      text: '${items[index].rebatePrice!.toInt()}  UZS',
                                                      style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.grey, fontSize: 10.sp, decoration: TextDecoration.lineThrough),
                                                    )
                                                  : const TextSpan(),
                                            ],
                                          ),
                                        ),
                                        SizedBox(height: 8.h),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            height: 25.h,
                                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.grey.withOpacity(.3)),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: [
                                                Icon(Icons.add, size: 18.sp),
                                                SizedBox(width: 5.w),
                                                Text(
                                                  'Qo\'shish',
                                                  style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp),
                                                )
                                              ],
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
      bottomSheet: InkWell(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          width: size.width,
          height: 50.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
            color: Colors.white,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: .1,
                blurRadius: 10,
                offset: Offset(0, -1),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(Assets.iconsTaxiIcon),
              RichText(
                text: TextSpan(
                  text: 'Yetkazib berish ',
                  style: Theme.of(context).textTheme.titleSmall,
                  children: [
                    TextSpan(
                      text: '  12 500 so\'m',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.mainColor),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.adaptive.arrow_forward,
                size: 13.sp,
              )
            ],
          ),
        ),
      ),
    );
  }
}
