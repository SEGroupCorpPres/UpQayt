import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/core/widgets/main_button.dart';
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
      bottomSheet: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30).r,
        child: MainButton(
          title: 'Buyurtma berish',
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
                return const ShoppingBagBottomSheet();
              },
            );
          },
        ),
      ),
    );
  }
}
