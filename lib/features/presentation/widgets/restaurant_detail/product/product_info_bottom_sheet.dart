import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/data/local/models/food_category.dart';
import 'package:upqayt/features/presentation/pages/shopping_bag/shopping_bag_screen.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/product/prod_qty_inc_dec_btn.dart';

class ProductInfoBottomSheet extends StatefulWidget {
  const ProductInfoBottomSheet({
    super.key,
    required this.product,
  });

  final Category product;

  // final ScrollController bottomSheetController;

  @override
  State<ProductInfoBottomSheet> createState() => ProductInfoBottomSheetState();
}

class ProductInfoBottomSheetState extends State<ProductInfoBottomSheet> with SingleTickerProviderStateMixin {
  late AnimationController bottomSheetController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    bottomSheetController = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    bottomSheetController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Category product = widget.product;
    final Size size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.r)),
            ),
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width,
                  height: 150.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(product.image),
                      fit: BoxFit.fitHeight,
                    ),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  product.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 10.h),
                Text(
                  'Dorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: Colors.black54,
                        fontSize: 14.sp,
                      ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            child: Column(),
          ),
          SizedBox(height: 20.h),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.r),
            ),
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Narxi',
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SizedBox(
                      width: size.width * .35,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          product.rebatePrice != null
                              ? Text(
                                  '${product.rebatePrice!.toInt()} UZS',
                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.mainColor),
                                )
                              : Container(),
                          Text(
                            '${product.price.toInt()} UZS',
                            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  decoration: product.rebatePrice != null ? TextDecoration.lineThrough : TextDecoration.none,
                                  color: product.rebatePrice != null ? Colors.black54 : Colors.black,
                                  fontSize: product.rebatePrice != null ? 12.sp : 14.sp,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                  width: size.width * .3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ProdQtyIncDecBtn(
                          onTap: () {
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
                ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          Container(
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12.r)),
            padding: EdgeInsets.all(20.r),
            child: MainButton(
              title: 'Savatga o\'tish',
              onTap: () => Navigator.push(
                context,
                Platform.isIOS
                    ? CupertinoPageRoute(
                        builder: (_) => const ShoppingBagScreen(),
                      )
                    : MaterialPageRoute(
                        builder: (_) => const ShoppingBagScreen(),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
