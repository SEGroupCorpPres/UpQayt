import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';

class RestaurantFoodCategoriesDelegate extends SliverPersistentHeaderDelegate {
  final TabController tabController;

  RestaurantFoodCategoriesDelegate({required this.tabController});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return RestaurantHeaderCategory(tabController: tabController);
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 50.h;

  @override
  // TODO: implement minExtent
  double get minExtent => 50.h;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }
}

class RestaurantHeaderCategory extends StatefulWidget {
  final TabController tabController;

  const RestaurantHeaderCategory({super.key, required this.tabController});

  @override
  State<RestaurantHeaderCategory> createState() => _RestaurantHeaderCategoryState();
}

class _RestaurantHeaderCategoryState extends State<RestaurantHeaderCategory> {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = widget.tabController;
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.r),
          bottomRight: Radius.circular(10.r),
        ),
      ),
      height: 50.h,
      child: TabBar(
        indicatorWeight: 1,
        isScrollable: true,
        labelPadding: EdgeInsets.symmetric(horizontal: 10.w),
        tabAlignment: TabAlignment.start,
        controller: tabController,
        dividerColor: Colors.transparent,
        splashFactory: NoSplash.splashFactory,
        indicatorColor: Colors.transparent,
        tabs: List.generate(
          foodCategory.length,
          (index) => Tab(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              height: 30.w,
              padding: EdgeInsets.only(left: index == 0 ? 10.w : 5.w, right: index == foodCategory.length - 1 ? 5.w : 10.w),
              decoration: ShapeDecoration(
                color: tabController.index == index ? AppColors.mainColor.withOpacity(.8) : Colors.grey.withOpacity(.2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9),
                  side: BorderSide(
                    color: tabController.index == index ? Colors.grey : AppColors.mainColor,
                  ),
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 24,
                    height: 24,
                    child: Image.asset(foodCategory[index]['icon']!),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    foodCategory[index]['title']!,
                    style: const TextStyle(
                      color: Color(0xFF475467),
                      fontSize: 12,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
