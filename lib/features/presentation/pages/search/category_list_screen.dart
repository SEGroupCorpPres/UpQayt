// import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';
//
// class CategoryListScreen extends StatefulWidget {
//   const CategoryListScreen({super.key});
//
//   @override
//   State<CategoryListScreen> createState() => _CategoryListScreenState();
// }
//
// class _CategoryListScreenState extends State<CategoryListScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final Size size = MediaQuery.sizeOf(context);
//
//     return Container(
//       height: size.height - 2 * kToolbarHeight.h - kBottomNavigationBarHeight.h - 1,
//       width: size.width,
//       padding: const EdgeInsets.symmetric(horizontal: 20).r,
//       child: SingleChildScrollView(
//         child: Column(
//           children: [
//             SizedBox(height: 20.h),
//             Wrap(
//               spacing: 10,
//               alignment: WrapAlignment.spaceBetween,
//               runSpacing: 10,
//               children: [
//                 for (final category in categories)
//                   InkWell(
//                     onTap: () {
//                       _searchController.text = category['title']!;
//                       _isTextEmpty = false;
//                       setState(() {});
//                     },
//                     child: CategoryProducts(
//                       title: category['title']!,
//                       image: category['image']!,
//                       width: size.width,
//                       size: size,
//                     ),
//                   ),
//               ],
//             ),
//             SizedBox(height: 20.h),
//           ],
//         ),
//       ),
//     );
//   }
// }
