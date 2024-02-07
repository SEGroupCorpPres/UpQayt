import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    searchController.value = TextEditingValue(text: 'Xorazm, Urganch');
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: .1,
        shadowColor: Colors.grey,
        title: Padding(
          padding: EdgeInsets.only(left: 0.r),
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
                  controller: searchController,
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
      ),
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) => ListTile(
                onTap: () {},
                title: Text(streetList[index]['name']!),
                subtitle: Text(
                  streetList[index]['tuman']!,
                ),
              ),
              separatorBuilder: (context, index) => const Divider(
                indent: 20,
                endIndent: 20,
                height: 1,
                thickness: 1,
              ),
              itemCount: streetList.length,
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: MainButton(title: 'Davom Etish', onTap: () {}),
            )
          ],
        ),
      ),
    );
  }
}
