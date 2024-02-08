import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/local/data_sources/deliver_time.dart';
import 'package:upqayt/features/presentation/widgets/filter_delivery_time_button.dart';
import 'package:upqayt/features/presentation/widgets/filter_header.dart';

class FilterListHeader extends StatefulWidget {
  const FilterListHeader({super.key});

  @override
  State<FilterListHeader> createState() => _FilterListHeaderState();
}

class _FilterListHeaderState extends State<FilterListHeader> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return ListView(
      shrinkWrap: true,
      children: [

      ],
    );
  }
}
