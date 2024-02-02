import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/widgets/home_screen_restaurants.dart';
import 'package:upqayt/features/presentation/widgets/home_screen_top_products.dart';
import 'package:upqayt/features/presentation/widgets/rebate_widget.dart';
import 'package:upqayt/features/presentation/widgets/row_title.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';
import 'package:upqayt/generated/assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height - kToolbarHeight - kBottomNavigationBarHeight,
      child: ListView(
        children: [
          SearchField(
            size: size,
            hintText: 'Maxsulotlar bo‘yicha izlang',
          ),
          const HomeScreenTopProducts(),
          const RebateWidget(),
          const HomeScreenRestaurants(),
        ],
      ),
    );
  }
}
