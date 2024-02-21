import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';

class Categories extends StatefulWidget {
  const Categories({super.key, required this.onChanged, required this.selectedIndex});

  final ValueChanged<int> onChanged;
  final int selectedIndex;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late ScrollController scrollController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = ScrollController();
  }
  @override
  void didUpdateWidget(covariant Categories oldWidget) {
    // TODO: implement didUpdateWidget
    scrollController.animateTo(120.0 * widget.selectedIndex, duration: Duration(milliseconds: 200), curve: Curves.ease);
    super.didUpdateWidget(oldWidget);

  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    scrollController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(12.r),
        color: Colors.white
      ),
      child: SingleChildScrollView(
        controller: scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            foodCategory.length,
            (index) => InkWell(
              onTap: () {
                widget.onChanged(index);
              },
              child: Container(
                height: 38,
                padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
                margin: EdgeInsets.only(left: index == 0 ? 15 : 7.5, right: index == foodCategory.length - 1 ? 15 : 7.5).r,
                decoration: ShapeDecoration(
                  color: widget.selectedIndex == index ? AppColors.mainColor : AppColors.mainBGColor,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 24,
                      height: 24,
                      child: Image.asset(foodCategory[index]['icon']!),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      foodCategory[index]['title']!,
                      style: const TextStyle(
                        color: Color(0xFF475467),
                        fontSize: 12,
                        fontFamily: 'Rubik',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
