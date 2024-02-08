import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/widgets/filter_bottom_sheet.dart';
import 'package:upqayt/features/presentation/widgets/filter_list_header.dart';

class HomeScreenFilterList extends StatefulWidget {
  const HomeScreenFilterList({super.key});

  @override
  State<HomeScreenFilterList> createState() => _HomeScreenFilterListState();
}

class _HomeScreenFilterListState extends State<HomeScreenFilterList> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      width: size.width,
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filterCategory.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              if (index == 0) {
                showModalBottomSheet(
                  context: context,
                  showDragHandle: true,
                  backgroundColor: Colors.white,
                  isScrollControlled: true,
                  enableDrag: true,
                  clipBehavior: Clip.hardEdge,
                  scrollControlDisabledMaxHeightRatio: size.height - kToolbarHeight - kTextTabBarHeight,
                  anchorPoint: Offset(0, .8),
                  builder: (context) {
                    return FilterBottomSheet(scrollController: scrollController, context: context, offset: 1);
                  },
                );
                // showStickyFlexibleBottomSheet(
                //   minHeight: 0,
                //   initHeight: 0.5,
                //   maxHeight: .9,
                //   headerHeight: 200,
                //   context: context,
                //   bottomSheetColor: Colors.white,
                //   headerBuilder: (BuildContext context, double offset) {
                //     return Container(
                //
                //     );
                //   },
                //   bodyBuilder: (BuildContext context, double offset) {
                //     return SliverChildListDelegate(
                //       <Widget>[],
                //     );
                //   },
                //   anchors: [0, 0.5, .9],
                // );
                // showFlexibleBottomSheet(
                //   minHeight: 0,
                //   initHeight: 0.5,
                //   maxHeight: 0.9,
                //   context: context,
                //   builder: (context, scrollController, bottomSheetOffSet) {
                //     return FilterBottomSheet(scrollController: scrollController,context: context,offset: 1,);
                //   },
                //   anchors: [0, 0.5, 0.8],
                //   isSafeArea: true,
                //   bottomSheetBorderRadius: BorderRadius.only(
                //     topRight: Radius.circular(18.r),
                //     topLeft: Radius.circular(18.r),
                //   ),
                //   draggableScrollableController: DraggableScrollableController(),
                // );
              }
            },
            child: Container(
              height: 38,
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
              margin: EdgeInsets.only(
                top: 10,
                right: index != 0
                    ? index == filterCategory.length
                        ? 20
                        : 5
                    : 5,
                left: index != 0 ? 5 : 20,
              ),
              decoration: ShapeDecoration(
                color: Colors.white,
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
                    child: Image.asset(filterCategory[index]['icon']!),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    filterCategory[index]['title']!,
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
          );
        },
      ),
    );
  }
}
