import 'package:flutter/material.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/features/presentation/widgets/home_screen_restaurants.dart';
import 'package:upqayt/features/presentation/widgets/home_screen_top_products.dart';
import 'package:upqayt/features/presentation/widgets/rebate_widget.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height - kToolbarHeight - kBottomNavigationBarHeight,
      child: ListView(
        children: [
          SearchField(
            controller: searchController,
            size: size,
            width: size.width,
            hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: AppColors.subtitleColor,
                ),
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
