import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/app_bar.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/body.dart';

class ShoppingBagScreen extends StatefulWidget {
  const ShoppingBagScreen({super.key});

  @override
  State<ShoppingBagScreen> createState() => _ShoppingBagScreenState();
}

class _ShoppingBagScreenState extends State<ShoppingBagScreen> with SingleTickerProviderStateMixin {
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
    return Scaffold(
      backgroundColor: AppColors.mainBGColor,
      body: const SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ShoppingBagAppBar(),
            ShoppingBagBody(),
          ],
        ),
      ),
      bottomSheet: BottomSheet(
        animationController: bottomSheetController,
        showDragHandle: true,
        onClosing: () {},
        builder: (context) {
          return Container(
            padding: EdgeInsets.only(left: 20.w,right: 20.w, bottom: 20.h),
            width: MediaQuery.sizeOf(context).width,
            // color: Colors.white,
            child: MainButton(title: 'Maxsulotlar', onTap: () {}),
          );
        },
      ),
    );
  }
}
