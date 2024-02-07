import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';

class TopProducts extends StatelessWidget {
  final int index;
  final String title;
  final String subtitle;
  final String image;
  final double width;
  final Size size;
  final String? rebate;
  final Color rebateTextColor;

  const TopProducts({
    super.key,
    required this.index,
    required this.title,
    required this.subtitle,
    required this.image,
    required this.width,
    required this.size,
    required this.rebate,
    this.rebateTextColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: index == 1 ? 0 : 16),
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
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              rebate != null
                  ? Positioned(
                      top: 10,
                      left: 8,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 50,
                            height: 30,
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
                            rebate!,
                            style: Theme.of(context).textTheme.labelSmall!.copyWith(fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                title,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp),
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: Colors.grey,
                      fontSize: 10.sp,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
