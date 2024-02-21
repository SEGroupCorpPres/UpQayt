import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/features/presentation/widgets/restaurant_detail/categories.dart';

class RestaurantFoodCategories extends SliverPersistentHeaderDelegate {
  final ValueChanged<int> onChanged;
  final int selectedIndex;

  RestaurantFoodCategories({required this.onChanged, required this.selectedIndex});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return SizedBox(
      height: 50.h,
      child: Categories(onChanged: onChanged, selectedIndex: selectedIndex),
    );
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
