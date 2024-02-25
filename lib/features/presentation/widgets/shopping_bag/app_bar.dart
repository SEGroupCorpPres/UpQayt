import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';

class ShoppingBagAppBar extends StatelessWidget {
  const ShoppingBagAppBar({super.key, this.onTapTrash});

  final VoidCallback? onTapTrash;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      height: kToolbarHeight.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(12.r)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                padding: EdgeInsets.zero,
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.adaptive.arrow_back,
                  color: Colors.black,
                  size: 18.sp,
                ),
              ),
              Text(
                'Savat',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
          shoppingBagProductList!.isNotEmpty
              ? IconButton(
                  onPressed: onTapTrash,
                  icon: Icon(
                    CupertinoIcons.trash,
                    size: 19.sp,
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
