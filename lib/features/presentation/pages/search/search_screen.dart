import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/widgets/search/category_products.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController _searchController = TextEditingController();

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
        bottom: true,
        child: SizedBox(
          // height: size.height,
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
                padding: const EdgeInsets.symmetric(horizontal: 20).r,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      icon: Container(
                        width: 40.h,
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.textFieldColor,
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          size: 20,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5.h),
                      child: SearchField(
                        controller: _searchController,
                        size: size,
                        width: size.width - 80.h,
                        hintText: '',
                        margin: EdgeInsets.zero,
                        suffixIcon: Icons.cancel_rounded,
                        bgColor: AppColors.textFieldColor,
                        prefixIcon: CupertinoIcons.search,
                        hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                              color: AppColors.subtitleColor,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height - 2* kToolbarHeight.h - kBottomNavigationBarHeight.h - 1,
                width: size.width,
                padding: const EdgeInsets.symmetric(horizontal: 20).r,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 20.h),
                      Wrap(
                        spacing: 10,
                        alignment: WrapAlignment.spaceBetween,
                        runSpacing: 10,
                        children: [
                          for (final category in categories)
                            CategoryProducts(
                              title: category['title']!,
                              image: category['image']!,
                              width: size.width,
                              size: size,
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
