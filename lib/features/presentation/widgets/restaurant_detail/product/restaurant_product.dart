import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/data/local/models/food_category.dart';
import 'package:upqayt/features/presentation/widgets/restaurant_detail/product/product_info_bottom_sheet.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/product/prod_qty_inc_dec_btn.dart';

class RestaurantProduct extends StatefulWidget {
  const RestaurantProduct({super.key, required this.item, required this.categoryIndex});

  final int categoryIndex;
  final int item;

  @override
  State<RestaurantProduct> createState() => _RestaurantProductState();
}

class _RestaurantProductState extends State<RestaurantProduct> {
  late int _categoryIndex = 0;
  late int _item = 0;
  bool _isAdd = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _categoryIndex = widget.categoryIndex;
    _item = widget.item;
  }

  @override
  Widget build(BuildContext context) {
    List<Category> items = category[_categoryIndex].items;
    final size = MediaQuery.sizeOf(context);

    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          showDragHandle: true,
          backgroundColor: Colors.white,
          isScrollControlled: true,
          enableDrag: true,
          clipBehavior: Clip.hardEdge,
          anchorPoint: const Offset(0, .8),
          useSafeArea: true,
          builder: (context) {
            return ProductInfoBottomSheet(product: items[_item], );
          },
        );
      },
      child: Container(
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
                      image: AssetImage(items[_item].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                items[_item].rebate != null
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
                              '${items[_item].rebate!.toInt()} %',
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
                    items[_item].title,
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp),
                  ),
                  SizedBox(height: 8.h),
                  RichText(
                    text: TextSpan(
                      text: '${items[_item].price.toInt()}  UZS    ',
                      style: Theme.of(context).textTheme.labelSmall!.copyWith(
                            color: items[_item].rebate != null ? AppColors.rebatePriceColor : AppColors.subtitleColor,
                            fontSize: 14.sp,
                          ),
                      children: [
                        items[_item].rebate != null
                            ? TextSpan(
                                text: '${items[_item].rebatePrice!.toInt()}  UZS',
                                style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.grey, fontSize: 10.sp, decoration: TextDecoration.lineThrough),
                              )
                            : const TextSpan(),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  !_isAdd
                      ? InkWell(
                          onTap: () {
                            _isAdd = true;
                            setState(() {});
                          },
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
                      : SizedBox(
                          height: 25.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ProdQtyIncDecBtn(
                                  onTap: () {
                                    _isAdd = false;
                                    setState(() {});
                                  },
                                  iconData: Icons.remove),
                              Text('1'),
                              // ProdQty(qty: product['quantity']),
                              ProdQtyIncDecBtn(
                                onTap: () {},
                                iconData: Icons.add,
                                bgColor: AppColors.mainColor,
                                iconColor: Colors.white,
                              )
                            ],
                          ),
                        )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
