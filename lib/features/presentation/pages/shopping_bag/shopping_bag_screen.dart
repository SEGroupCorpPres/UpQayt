import 'package:flutter/material.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/app_bar.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/body.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/clear_trash_alert_dialog.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/shopping_bag_bottom_sheet.dart';

class ShoppingBagScreen extends StatefulWidget {
  const ShoppingBagScreen({super.key});

  @override
  State<ShoppingBagScreen> createState() => _ShoppingBagScreenState();
}

class _ShoppingBagScreenState extends State<ShoppingBagScreen> with SingleTickerProviderStateMixin {
  late AnimationController bottomSheetController;
  ScrollController dragController = ScrollController();

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
      body: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ShoppingBagAppBar(
              onTapTrash: () {
                showAdaptiveDialog(
                  context: context,
                  builder: (context) {
                    return const ClearTrashAlertDialog();
                  },
                );
              },
            ),
            const ShoppingBagBody(),
          ],
        ),
      ),
      // bottomSheet: DraggableScrollableSheet(
      //   maxChildSize: .3,
      //   expand: false,
      //   // snap: true,
      //   minChildSize: .1,
      //   initialChildSize: .1,
      //   controller: DraggableScrollableController(),
      //   builder: (context, dragController) {
      //     return Container(
      //       padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
      //       width: MediaQuery.sizeOf(context).width,
      //       // color: Colors.white,
      //       child: SingleChildScrollView(
      //         child: MainButton(title: 'Buyurtma berish', onTap: () {}),
      //         controller: dragController,
      //       ),
      //     );
      //   },
      // ),
      bottomSheet: const ShoppingBagBottomSheet(),
    );
  }
}
