import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/generated/assets.dart';

class Restaurants extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final int ratingCount;
  final double rating;
  final int minDistTime;
  final int maxDistTime;
  final String price;
  final int taxiPrice;
  final int distance;
  final String? rebate;
  final String openingTime;
  final String closingTime;
  final DateTime currentTime;
  final bool isFavourite;

  const Restaurants({
    super.key,
    required this.image,
    required this.name,
    required this.description,
    required this.ratingCount,
    required this.rating,
    required this.minDistTime,
    required this.maxDistTime,
    required this.price,
    required this.taxiPrice,
    required this.distance,
    required this.rebate,
    required this.openingTime,
    required this.closingTime,
    required this.isFavourite,
    required this.currentTime,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    DateTime time = currentTime;
    int currentHour = time.hour;
    DateFormat dateFormat = DateFormat('HH:mm');
    DateTime parsedOpeningTime = dateFormat.parse(openingTime);
    DateTime parsedClosingTime = dateFormat.parse(closingTime);
    dynamic ratingNumber = ratingCount;
    if (ratingNumber > 125) {
      ratingNumber = '125+';
    }
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12).r,
        color: Colors.white,
      ),
      margin: const EdgeInsets.symmetric(vertical: 7).h,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10).r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                width: size.width,
                height: 175.h,
                padding: const EdgeInsets.symmetric(horizontal: 20).r,
              ),
              Container(
                width: size.width,
                height: 160.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12).r,
                  color: Colors.grey,
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              rebate != null
                  ? Positioned(
                      top: -20,
                      left: 8,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Icon(
                            Icons.bookmark,
                            color: AppColors.rebatePriceColor,
                            size: 70.sp,
                          ),
                          Text(
                            rebate!,
                            style: Theme.of(context).textTheme.labelMedium,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )
                  : Container(),
              parsedClosingTime.hour < currentHour || parsedOpeningTime.hour > currentHour
                  ? Container(
                      width: size.width,
                      height: 160.h,
                      decoration: BoxDecoration(
                        color: Colors.black.withValues(alpha: .7),
                        borderRadius: BorderRadius.circular(12).r,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Restoran yopilgan',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Ochilish vaqti: $openingTime:00',
                            style: Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: 14.sp),
                          ),
                        ],
                      ),
                    )
                  : Container(),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  width: 30.r,
                  height: 30.r,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8).r,
                    color: Colors.white,
                  ),
                  margin: EdgeInsets.zero,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    isSelected: isFavourite,
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_outline,
                      size: 23.sp,
                    ),
                    selectedIcon: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 23.sp,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 3,
                right: 10,
                child: Card(
                  color: Colors.white,
                  elevation: .1,
                  child: Container(
                    height: 20.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13).r,
                      color: Colors.white,
                    ),
                    margin: EdgeInsets.zero,
                    padding: const EdgeInsets.symmetric(horizontal: 15).h,
                    child: Row(
                      children: [
                        Text(
                          '$minDistTime - $maxDistTime min',
                          style: Theme.of(context).textTheme.titleSmall,
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
                name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 8.h),
              Container(
                constraints: BoxConstraints(maxWidth: size.width - 30.w),

                color: Colors.red,
                width: size.width - 30.w,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.star_fill,
                      size: 18.sp,
                      color: AppColors.activeFavouriteColor,
                    ),
                    SizedBox(width: 8.w),
                    Text(
                      '$rating ($ratingNumber)',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                            color: const Color(0xFF667085),
                            fontSize: 13.sp,
                          ),
                      softWrap: true,
                    ),
                    SizedBox(width: 10.w),
                    Container(
                      color: Colors.green,
                      width: 220.w,
                      child: Text(
                        description,
                        softWrap: true,
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: const Color(0xFF667085),
                              fontSize: 13.sp,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Narx:',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color(0xFF667085)),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    price,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color(0xFF667085)),
                  ),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 38.h,
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7).r,
                margin: const EdgeInsets.only(top: 10, right: 20, left: 5).r,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF2F4F7),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9).r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 19.r,
                      height: 19.r,
                      child: SvgPicture.asset(
                        Assets.iconsTaxi,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text('$taxiPrice so\'m', style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color(0xFF667085))),
                  ],
                ),
              ),
              Container(
                height: 38.h,
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7).r,
                margin: const EdgeInsets.only(top: 10, right: 20, left: 5).r,
                decoration: ShapeDecoration(
                  color: const Color(0xFFF2F4F7),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9).r),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 14.r,
                      height: 14.r,
                      child: Image.asset(
                        Assets.iconsLocationIcon,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '$distance km',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(color: const Color(0xFF667085)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
