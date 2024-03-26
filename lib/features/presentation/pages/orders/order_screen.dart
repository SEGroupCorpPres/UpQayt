import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/presentation/widgets/order/order_tab.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.mainBGColor,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Container(
              width: size.width,
              height: kToolbarHeight,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
              child: Row(
                children: [
                  Container(
                    width: 3.2,
                    height: 20.h,
                    color: AppColors.mainColor,
                  ),
                  SizedBox(width: 10.w),
                  Text('Buyurtmalar', style: Theme.of(context).textTheme.titleLarge),
                ],
              ),
            ),
            Container(
              height: 60,
              width: size.width,
              margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: TabBar(
                labelPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
                controller: _tabController,
                dividerHeight: 0,
                indicatorWeight: 0,
                automaticIndicatorColorAdjustment: false,
                overlayColor: const MaterialStatePropertyAll<Color>(Colors.transparent),
                indicator: const BoxDecoration(),
                onTap: (index) {
                  setState(() {});
                },
                tabs: [
                  OrderTab(
                    bgColor: _tabController.index == 0 ? AppColors.mainColor : Colors.transparent,
                    titleColor: _tabController.index == 0 ? Colors.white : Colors.black,
                    title: 'Faol buyurtmalar',
                  ),
                  OrderTab(
                    bgColor: _tabController.index == 1 ? AppColors.mainColor : Colors.transparent,
                    titleColor: _tabController.index == 1 ? Colors.white : Colors.black,
                    title: 'Buyurtmalar tarixi',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 300,
              width: MediaQuery.sizeOf(context).width,
              child: TabBarView(
                controller: _tabController,
                children: [
                  Text('Faol buyurtmalar'),
                  Text('Faol buyurtmalar'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
