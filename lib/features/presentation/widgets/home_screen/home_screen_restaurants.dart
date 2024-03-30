import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/pages/restaurant/restaurant_detail_screen.dart';
import 'package:upqayt/features/presentation/widgets/home_screen/home_screen_fliter_list.dart';
import 'package:upqayt/features/presentation/widgets/restaurants.dart';
import 'package:upqayt/features/presentation/widgets/row_title.dart';

class HomeScreenRestaurants extends StatelessWidget {
  const HomeScreenRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(vertical: 10).r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: RowTitle(title: 'Restoranlar', btnTitle: null, onTap: null),
          ),
          const HomeScreenFilterList(),
          SizedBox(height: 10.h),
          ListView.builder(
            shrinkWrap: true,
            itemCount: restaurants.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              dynamic ratingCount = restaurants[index]['rating_count']!;
              if (ratingCount > 125) {
                ratingCount = '125+';
              }
              return InkWell(
                onTap: () => pushNewScreen(context, screen: const RestaurantDetailScreen(), withNavBar: false),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Restaurants(
                  image: restaurants[index]['image'],
                  name: restaurants[index]['name'],
                  description: restaurants[index]['description'],
                  ratingCount: restaurants[index]['rating_count'],
                  rating: restaurants[index]['rating'],
                  minDistTime: restaurants[index]['min_dist_time'],
                  maxDistTime: restaurants[index]['max_dist_time'],
                  price: restaurants[index]['price'],
                  taxiPrice: restaurants[index]['taxi_price'],
                  distance: restaurants[index]['distance'],
                  rebate: restaurants[index]['rebate'],
                  openingTime: restaurants[index]['opening_time'],
                  closingTime: restaurants[index]['closing_time'],
                  isFavourite: restaurants[index]['is_favourite'],
                  currentTime: restaurants[index]['current_time'],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
