import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/widgets/top_products.dart';

class TopProductsScreen extends StatefulWidget {
  const TopProductsScreen({super.key});

  @override
  State<TopProductsScreen> createState() => _TopProductsScreenState();
}

class _TopProductsScreenState extends State<TopProductsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(statusBarColor: Colors.white));
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Material(
      color: AppColors.scaffoldBGColor,
      child: SafeArea(
        child: SizedBox(
          width: size.width,
          child: Column(
            children: [
              Container(
                width: size.width,
                height: kToolbarHeight.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Row(
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
                      'Top mahsulotlar',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20).r,
                width: size.width,
                height: size.height - 2 * kToolbarHeight - kBottomNavigationBarHeight - 40.h,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Wrap(
                        spacing: 10,
                        alignment: WrapAlignment.spaceBetween,
                        runSpacing: 10,
                        children: [
                          for (final product in topProduct)
                            TopProducts(
                              index: null,
                              title: product['title']!,
                              subtitle: product['subtitle']!,
                              image: product['image']!,
                              width: size.width,
                              size: size,
                              rebate: product['rebate'],
                            ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
