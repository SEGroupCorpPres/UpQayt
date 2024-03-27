import 'package:flutter/material.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/widgets/filter/filter_bottom_sheet.dart';

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
                  anchorPoint: const Offset(0, .8),
                  useSafeArea: true,
                  builder: (context) {
                    return FilterBottomSheet(scrollController: scrollController, context: context, offset: .8);
                  },
                );
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
