import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
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
          // SizedBox(height: 10.h),
          ListView.builder(
            shrinkWrap: true,
            itemCount: mockVendorData['data']['data'].length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              Map<String, dynamic> data = mockVendorData['data']['data'][index];
              dynamic ratingCount = 2452;
              // if (ratingCount > 125) {
              //   ratingCount = '125+';
              // }
              return InkWell(
                onTap: () => pushScreen(context, screen: const RestaurantDetailScreen(), withNavBar: false),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: Restaurants(
                  image: data['background_img'],
                  name: data['name_uz'],
                  description: data['desc_uz'],
                  ratingCount: ratingCount,
                  rating: 4.5,
                  minDistTime: 3,
                  maxDistTime: 5,
                  price: "15000 UZS",
                  taxiPrice: 15000,
                  distance: 5000,
                  rebate: null,
                  openingTime: data['opening_time'],
                  closingTime: data['closing_time'],
                  isFavourite: true,
                  currentTime: DateTime.now(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
