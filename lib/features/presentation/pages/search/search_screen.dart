import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/pages/restaurant/restaurant_detail_screen.dart';
import 'package:upqayt/features/presentation/widgets/search/category_products.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> with SingleTickerProviderStateMixin {
  TextEditingController _searchController = TextEditingController();
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool _isTextEmpty = true;
  late String filter = '';
  late List products = [];
  late List restaurantsList = [];
  final FocusNode _messageFieldFocus = FocusNode();

// Function to check if an element is already in 'products'
  bool isElementInProducts(Map<String, dynamic> element) {
    for (var product in products) {
      if (product['title'] == element['title']) {
        return true;
      }
    }
    return false;
  }

  bool isElementInRestaurants(List<String> restaurant, String filteredItem) {
    for (int i = 0; i < restaurant.length; i++) {
      print(restaurant[i]);
      print(filteredItem);
      if (restaurant[i].toLowerCase().contains(filteredItem.toLowerCase())) {
        return true;
      }
    }
    return false;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.white));
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = Tween<double>(begin: 0, end: 300).animate(_animationController)
      ..addListener(() {
        setState(() {
          // The state that has changed here is the animation object's value.
        });
      });
    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _searchController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

// Add elements from 'topProducts' to 'products' if they are not already present
    for (var product in topProduct) {
      if (filter.isNotEmpty) {
        if (product['title']!.toLowerCase().contains(filter.toLowerCase())) {
          if (!isElementInProducts(product)) {
            products.add(product);
          }
        }
      }
    }
    for (var restaurant in restaurants) {
      if (filter.isNotEmpty) {
        if (isElementInRestaurants(restaurant['products'], filter)) {
          restaurantsList.add(restaurant);
        }
      }
    }
    restaurantsList.map((e) => print).toList();
    return Material(
      color: AppColors.scaffoldBGColor,
      child: SafeArea(
        bottom: true,
        child: SizedBox(
          width: size.width,
          child: Column(
            children: [
              Container(
                width: size.width,
                height: kToolbarHeight.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20).r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    _isTextEmpty
                        ? Container()
                        : IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            icon: Container(
                              width: 35.h,
                              height: 35.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.textFieldColor,
                              ),
                              child: const Icon(
                                Icons.arrow_back_ios_new,
                                size: 20,
                              ),
                            ),
                          ),
                    _isTextEmpty ? Container() : const Spacer(),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 000),
                      curve: Curves.ease,
                      width: !_isTextEmpty ? size.width - 80.h : size.width - 40.w,
                      margin: EdgeInsets.symmetric(vertical: 5.h),
                      child: SearchField(
                        onTapOutside: (value){
                          FocusNode().unfocus();
                        },
                        onChanged: (text) {
                          if (text.isNotEmpty) {
                            _isTextEmpty = false;
                            filter = text;
                            print(filter);
                          } else {
                            _isTextEmpty = true;
                          }
                          setState(() {});
                        },
                        onPressedSuffixIcon: () {
                          _searchController.clear();
                          filter = '';
                          _isTextEmpty = true;
                          products = [];
                          restaurantsList = [];
                          setState(() {});
                        },
                        controller: _searchController,
                        size: size,
                        width: size.width - 100.w,
                        hintText: '',
                        margin: EdgeInsets.zero,
                        suffixIcon: Icons.cancel_rounded,
                        bgColor: AppColors.textFieldColor,
                        prefixIcon: CupertinoIcons.search,
                        hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: AppColors.subtitleColor,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              !_isTextEmpty
                  ? products.isNotEmpty
                      ? SizedBox(
                          height: size.height - 2 * kToolbarHeight.h - kBottomNavigationBarHeight.h - 1,
                          width: size.width,
                          child: ListView.builder(
                            itemCount: restaurantsList.length,
                            itemBuilder: (context, index) {
                              DateTime time = restaurantsList[index]['current_time'];
                              int currentHour = time.hour;
                              return InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  Platform.isIOS
                                      ? CupertinoPageRoute(
                                          builder: (context) => const RestaurantDetailScreen(),
                                        )
                                      : MaterialPageRoute(
                                          builder: (context) => const RestaurantDetailScreen(),
                                        ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12).r,
                                    color: Colors.white,
                                  ),
                                  margin: const EdgeInsets.symmetric(vertical: 7).h,
                                  padding: const EdgeInsets.symmetric(vertical: 5).r,
                                  width: size.width,
                                  child: Column(
                                    children: [
                                      ListTile(
                                        leading: Container(
                                          width: 60.w,
                                          height: 80.h,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8.r),
                                            image: DecorationImage(
                                              image: AssetImage(restaurantsList[index]['image']),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        title: Text(
                                          restaurantsList[index]['name'],
                                          style: Theme.of(context).textTheme.titleMedium,
                                        ),
                                        subtitle: restaurantsList[index]['opening_time'] > currentHour || restaurantsList[index]['closing_time'] < currentHour
                                            ? Row(
                                                children: [
                                                  Icon(
                                                    CupertinoIcons.lock,
                                                    size: 18.r,
                                                  ),
                                                  Text(
                                                    'Restoran yopilgan',
                                                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                                          color: Colors.black54,
                                                          fontSize: 14.sp,
                                                        ),
                                                  ),
                                                ],
                                              )
                                            : Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    color: AppColors.activeFavouriteColor,
                                                    size: 18.r,
                                                  ),
                                                  RichText(
                                                    text: TextSpan(
                                                        text: '${restaurantsList[index]['rating']} (${restaurantsList[index]['rating_count']}) ',
                                                        children: [
                                                          TextSpan(text: '${restaurantsList[index]['description']}', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black54)),
                                                        ],
                                                        style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.grey)),
                                                  )
                                                ],
                                              ),
                                      ),
                                      restaurantsList[index]['opening_time'] > currentHour || restaurantsList[index]['closing_time'] < currentHour
                                          ? Container()
                                          : SizedBox(
                                              width: size.width,
                                              height: 120.h,
                                              child: ListView.builder(
                                                scrollDirection: Axis.horizontal,
                                                shrinkWrap: true,
                                                itemCount: products.length,
                                                itemBuilder: (context, item) {
                                                  return Container(
                                                    margin: EdgeInsets.only(
                                                      left: item == 0 ? 10 : 5,
                                                      right: item == products.length - 1 ? 10 : 5,
                                                    ),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          width: 100.w,
                                                          height: 80.h,
                                                          decoration: BoxDecoration(
                                                            image: DecorationImage(
                                                              image: AssetImage(products[item]['image']!),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          products[item]['title']!,
                                                          style: Theme.of(context).textTheme.titleSmall,
                                                        ),
                                                        Text(
                                                          '15 000 so\'m',
                                                          style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.mainColor),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                      : Container()
                  : Container(
                      height: size.height - 2 * kToolbarHeight.h - kBottomNavigationBarHeight.h - 1,
                      width: size.width,
                      padding: const EdgeInsets.symmetric(horizontal: 20).r,
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 20.h),
                            Wrap(
                              spacing: 10,
                              alignment: WrapAlignment.spaceBetween,
                              runSpacing: 10,
                              children: [
                                for (final category in categories)
                                  InkWell(
                                    onTap: () {
                                      _searchController.text = category['title']!;
                                      _isTextEmpty = false;
                                      filter = category['title']!;
                                      print(filter);
                                      setState(() {});
                                    },
                                    child: CategoryProducts(
                                      title: category['title']!,
                                      image: category['image']!,
                                      width: size.width,
                                      size: size,
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(height: 20.h),
                          ],
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
