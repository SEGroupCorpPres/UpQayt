import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';
import 'package:upqayt/features/presentation/widgets/top_products.dart';
import 'package:upqayt/generated/assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height - kToolbarHeight - kBottomNavigationBarHeight,
      child: ListView(
        children: [
          SearchField(
            size: size,
            hintText: 'Maxsulotlar bo‘yicha izlang',
          ),
          Container(
            width: size.width,
            height: 250,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Top mahsulotlar',
                      style: TextStyle(
                        color: Color(0xFF1C1C1C),
                        fontSize: 16,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w500,
                        height: 0,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Text(
                            'Barchasi',
                            style: TextStyle(
                              color: AppColors.subtitleColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: AppColors.subtitleColor,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 180,
                  padding: const EdgeInsets.only(top: 20),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    primary: true,
                    itemBuilder: (context, index) {
                      return TopProducts(
                        index: index,
                        title: topProduct[index]['title']!,
                        subtitle: topProduct[index]['subtitle']!,
                        image: topProduct[index]['image']!,
                        width: size.width / 2 - 30,
                        size: size,
                        rebate: topProduct[index]['rebate'],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          InkWell(
            onTap: () {},
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Container(
              width: size.width,
              height: 165,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(18),
                image: const DecorationImage(
                  image: AssetImage(Assets.imagesAction),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: size.width,
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Restoranlar',
                    style: TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 20,
                      fontFamily: 'Rubik',
                      fontWeight: FontWeight.w500,
                      height: 0,
                    ),
                  ),
                ),
                SizedBox(
                  width: size.width,
                  height: 50,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: filterCategory.length,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 38,
                        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
                        margin: EdgeInsets.only(
                          top: 10,
                          right: index != 0
                              ? index == filterCategory.length
                                  ? 20
                                  : 5
                              : 5,
                          left: index != 0 ? 5 : 20,
                        ),
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 24,
                              height: 24,
                              child: Image.asset(filterCategory[index]['icon']!),
                            ),
                            const SizedBox(width: 10),
                            Text(
                              filterCategory[index]['title']!,
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
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: restaurants.length,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    DateTime time = restaurants[index]['current_time'];
                    int currentHour = time.hour;
                    dynamic ratingCount = restaurants[index]['rating_count']!;
                    if (ratingCount > 125) {
                      ratingCount = '125+';
                    }
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      margin: const EdgeInsets.symmetric(vertical: 7),
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: size.width,
                                height: 215,
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                              ),
                              Container(
                                width: size.width,
                                height: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.grey,
                                  image: DecorationImage(
                                    image: AssetImage(restaurants[index]['image']!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              restaurants[index]['rebate'] != null
                                  ? const Positioned(
                                      top: -10,
                                      left: 8,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Icon(
                                            Icons.bookmark,
                                            color: AppColors.rebatePriceColor,
                                            size: 70,
                                          ),
                                          Text(
                                            '-5%',
                                            style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                            textAlign: TextAlign.center,
                                          ),
                                        ],
                                      ),
                                    )
                                  : Container(),
                              restaurants[index]['closing_time'] < currentHour || restaurants[index]['opening_time'] > currentHour
                                  ? Container(
                                      width: size.width,
                                      height: 200,
                                      decoration: BoxDecoration(
                                        color: Colors.black.withOpacity(.7),
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          const Text(
                                            'Restoran yopilgan',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontFamily: 'Rubik',
                                              fontWeight: FontWeight.w500,
                                              height: 0,
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          Text(
                                            'Ochilish vaqti: ${restaurants[index]['opening_time']}:00',
                                            style: const TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontFamily: 'Rubik',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : Container(),
                              Positioned(
                                top: 10,
                                right: 10,
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.white,
                                  ),
                                  margin: EdgeInsets.zero,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    isSelected: false,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite_outline,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 0,
                                right: 10,
                                child: Card(
                                  color: Colors.white,
                                  elevation: .1,
                                  child: Container(
                                    height: 25,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: Colors.white,
                                    ),
                                    margin: EdgeInsets.zero,
                                    padding: const EdgeInsets.symmetric(horizontal: 15),
                                    child: Row(
                                      children: [
                                        Text(
                                          '${restaurants[index]['min_dist_time']} - ${restaurants[index]['max_dist_time']} min',
                                          style: const TextStyle(
                                            color: Color(0xFF404843),
                                            fontSize: 14,
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
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                restaurants[index]['name']!,
                                style: const TextStyle(
                                  color: Color(0xFF1D1D21),
                                  fontSize: 20,
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                children: [
                                  const Icon(
                                    CupertinoIcons.star_fill,
                                    size: 20,
                                    color: AppColors.activeFavouriteColor,
                                  ),
                                  Text(
                                    '${restaurants[index]['rating']!} ($ratingCount)',
                                    style: const TextStyle(
                                      color: Color(0xFF8999A6),
                                      fontSize: 16,
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    restaurants[index]['description']!,
                                    style: const TextStyle(
                                      color: Color(0xFF667085),
                                      fontSize: 16,
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Narx:',
                                    style: TextStyle(
                                      color: Color(0xFF7A867F),
                                      fontSize: 12,
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    restaurants[index]['price']!,
                                    style: const TextStyle(
                                      color: AppColors.restaurantDescription,
                                      fontSize: 12,
                                      fontFamily: 'Rubik',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                height: 38,
                                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
                                margin: const EdgeInsets.only(top: 10, right: 20, left: 5),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFF2F4F7),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 19,
                                      height: 19,
                                      child: Image.asset(
                                        Assets.iconsTaxiIcon,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      '${restaurants[index]['taxi_price']} so\'m',
                                      style: const TextStyle(
                                        color: Color(0xFF404843),
                                        fontSize: 12,
                                        fontFamily: 'Rubik',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 38,
                                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
                                margin: const EdgeInsets.only(top: 10, right: 20, left: 5),
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFF2F4F7),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: 18,
                                      height: 18,
                                      child: Image.asset(
                                        Assets.iconsLocationIcon,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      '${restaurants[index]['distance']} km',
                                      style: const TextStyle(
                                        color: Color(0xFF404843),
                                        fontSize: 12,
                                        fontFamily: 'Rubik',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
