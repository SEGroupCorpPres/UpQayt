import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/placing_an_order/add_comment.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/placing_an_order/address.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/placing_an_order/app_bar.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/placing_an_order/delivery_time.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/placing_an_order/placing_an_order_botom_sheet.dart';

class PlacingAnOrderScreen extends StatefulWidget {
  const PlacingAnOrderScreen({super.key});

  @override
  State<PlacingAnOrderScreen> createState() => _PlacingAnOrderScreenState();
}

class _PlacingAnOrderScreenState extends State<PlacingAnOrderScreen> {
  // final TextEditingController _commentController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    // _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: AppColors.mainBGColor,
        body: SafeArea(
          child: Column(
            children: [
              const PlacingAnOrderAppBar(),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 15.h),
                    const Address(),
                    SizedBox(height: 10.h),
                    DeliveryTime(size: size),
                    SizedBox(height: 10.h),
                    AddComment(size: size),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomSheet: const PlacingAnOrderBottomSheet());
  }
}
