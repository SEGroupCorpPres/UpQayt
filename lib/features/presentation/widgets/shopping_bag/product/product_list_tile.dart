import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/product/prod_cancel_btn.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/product/prod_image.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/product/prod_name.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/product/prod_price.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/product/prod_qty.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/product/prod_qty_inc_dec_btn.dart';

class ProductListTile extends StatelessWidget {
  const ProductListTile({super.key, required this.product});
  final Map<String, dynamic> product;

  @override
  Widget build(BuildContext context) {
    final size  = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15).r,
      margin: EdgeInsets.symmetric(vertical: 5.h),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(14.r), color: Colors.white),
      child: Row(
        children: [
          ProdImage(image: product['image']),
          SizedBox(width: 10.w),
          Container(
            padding: EdgeInsets.symmetric(vertical: 3.h),
            height: 70.h,
            width: 120.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProdName(name: product['name']),
                SizedBox(height: 7.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ProdQtyIncDecBtn(onTap: () {}, iconData: Icons.remove),
                    ProdQty(qty: product['quantity']),
                    ProdQtyIncDecBtn(
                      onTap: () {},
                      iconData: Icons.add,
                      bgColor: AppColors.mainColor,
                      iconColor: Colors.white,
                    )
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                ProdCancelBtn(onTap: (){}),
                ProdPrice(price: product['price'], totalPrice: product['total_price'])
              ],
            ),
          ),
        ],
      ),
    );
  }
}
