import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/presentation/widgets/highlighted_button.dart';
import 'package:upqayt/features/presentation/widgets/map_bottom_sheet.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';

class YandexMapScreen extends StatefulWidget {
  const YandexMapScreen({super.key});

  @override
  State<YandexMapScreen> createState() => _YandexMapScreenState();
}

class _YandexMapScreenState extends State<YandexMapScreen> {
  bool isPressed = false;
  bool isHighlighted = true;
  ScrollController scrollController = ScrollController();
  TextEditingController searchController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController entryController = TextEditingController();
  TextEditingController floorController = TextEditingController();
  TextEditingController homeController = TextEditingController();
  TextEditingController commentController = TextEditingController();
  TextEditingController addressNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: isPressed
          ? null
          : AppBar(
              automaticallyImplyLeading: false,
              title: Text('Tinchlik ko‘chasi, 6'),
              centerTitle: false,
              elevation: 1,
              shadowColor: Colors.grey,
            ),
      body: SafeArea(
        top: true,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(20.r),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isPressed
                      ? Row(
                          children: [
                            HighLightedButton(icon: Icons.arrow_back_ios_new),
                          ],
                        )
                      : DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(.2),
                                blurRadius: 1,
                                spreadRadius: 1,
                              )
                            ],
                          ),
                          child: SearchField(
                            controller: searchController,
                            size: size,
                            width: size.width,
                            hintText: 'Izlash',
                            hintStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
                                  color: AppColors.subtitleColor,
                                ),
                            margin: const EdgeInsets.all(1),
                          ),
                        ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          HighLightedButton(icon: Icons.add),
                          SizedBox(height: 10),
                          HighLightedButton(icon: Icons.remove),
                        ],
                      )
                    ],
                  ),
                  MainButton(
                    title: 'Davom Etish',
                    onTap: () {
                      setState(() {
                        isPressed = true;
                      });
                      showFlexibleBottomSheet(
                        minHeight: 0,
                        initHeight: 0.5,
                        maxHeight: 0.5,
                        context: context,
                        builder: (context, scrollController, bottomSheetOffSet) {
                          return buildBottomSheet(
                            context,
                            scrollController,
                            1,
                            addressController,
                            entryController,
                            floorController,
                            homeController,
                            commentController,
                            addressNameController,
                          );
                        },
                        anchors: [0, 0.5],
                        isSafeArea: false,
                        bottomSheetBorderRadius: BorderRadius.only(
                          topRight: Radius.circular(18.r),
                          topLeft: Radius.circular(18.r),
                        ),
                        draggableScrollableController: DraggableScrollableController(),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
