import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/order_bottom_sheet_price.dart';
import 'package:upqayt/generated/assets.dart';

class ShoppingBagBottomSheet extends StatefulWidget {
  const ShoppingBagBottomSheet({super.key});

  // final ScrollController bottomSheetController;

  @override
  State<ShoppingBagBottomSheet> createState() => _ShoppingBagBottomSheetState();
}

class _ShoppingBagBottomSheetState extends State<ShoppingBagBottomSheet> with SingleTickerProviderStateMixin {
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
    return BottomSheet(
      animationController: bottomSheetController,
      showDragHandle: true,
      onDragStart: (details) {},
      onClosing: () {},
      builder: (context) {
        return Container(
          padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
          width: MediaQuery.sizeOf(context).width,
          height: 210.h,
          // color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Buyurtma miqdori',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 10.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: const Column(
                  children: [
                    OrderBottomSheetPrice(image: Assets.iconsBox, title: 'Maxsulot narxi', price: '300000'),
                    OrderBottomSheetPrice(image: Assets.iconsTaxiIcon, title: 'Yetkazish narxi', price: '20000'),
                    OrderBottomSheetPrice(image: Assets.iconsMoney, title: 'Umumiy summa', titleColor: Colors.black, price: '320000'),
                  ],
                ),
              ),
              MainButton(title: 'Buyurtma berish', onTap: () {}),
            ],
          ),
        );
      },
    );
  }
}
