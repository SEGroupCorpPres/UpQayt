import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/presentation/widgets/filter/filter_food_category.dart';
import 'package:upqayt/features/presentation/widgets/filter/filter_header.dart';
import 'package:upqayt/features/presentation/widgets/filter/filter_price_category.dart';
import 'package:upqayt/features/presentation/widgets/filter/filter_price_range.dart';
import 'package:upqayt/features/presentation/widgets/filter/filter_useful.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({
    super.key,
    required this.scrollController,
    required this.context,
    required this.offset,
  });

  final ScrollController scrollController;
  final BuildContext context;
  final double offset;

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  ScrollController scrollController = ScrollController();

  SfRangeValues _values = const SfRangeValues(40.0, 80.0);
  TextEditingController _priceStartController = TextEditingController();
  TextEditingController _priceEndController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController = widget.scrollController;
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return SizedBox(
      height: size.height * .73,
      child: ListView(
        controller: scrollController,
        shrinkWrap: true,
        children: [
          const FilterHeader(),
          const FilterPriceRange(),
          const FilterUseful(),
          const FilterFoodCategory(),
          const FilterPriceCategory(),
          Container(
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(10.r)),
              color: Colors.white,
            ),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            child: MainButton(title: 'Topilganlarni ko\'rsatish', onTap: () => Navigator.pop(context), titleColor: Colors.white,),
          ),
        ],
      ),
    );
  }
}
