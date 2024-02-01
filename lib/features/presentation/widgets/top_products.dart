import 'package:flutter/material.dart';
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
                      top: -10,
                      left: 8,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          const Icon(
                            Icons.bookmark,
                            color: AppColors.rebatePriceColor,
                            size: 55,
                          ),
                          Text(
                            rebate!,
                            style: const TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
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
                style: const TextStyle(
                  color: Color(0xFF1C1C20),
                  fontSize: 14,
                  fontFamily: 'Rubik',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Color(0xFF8999A6),
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
    );
  }
}
