import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/order_bottom_sheet_price.dart';
import 'package:upqayt/features/presentation/widgets/widget_backgroud.dart';
import 'package:upqayt/generated/assets.dart';

class CourierLocation extends StatefulWidget {
  const CourierLocation({super.key});

  @override
  State<CourierLocation> createState() => _CourierLocationState();
}

class _CourierLocationState extends State<CourierLocation> {
  TextEditingController _commentController = TextEditingController();
  ScrollController _evaluationController = ScrollController();
  double _rating = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future<void> _cancelAlertDialog(BuildContext context, Size size) {
    return showAdaptiveDialog(
      context: context,
      builder: (BuildContext context) {
        return _alertDialog(context, size);
      },
    );
  }

  Future<void> _showEvaluationBottomSheet(BuildContext context, Size size) {
    return showModalBottomSheet(
      context: context,
      showDragHandle: true,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      enableDrag: true,
      clipBehavior: Clip.hardEdge,
      scrollControlDisabledMaxHeightRatio: size.height - kToolbarHeight - kTextTabBarHeight,
      anchorPoint: const Offset(0, .6),
      useSafeArea: true,
      builder: (BuildContext context) {
        return _buildEvaluation(size);
      },
    );
  }

  Widget _buildEvaluation(Size size) {
    return BottomSheet(
      onClosing: () {},
      builder: (context) {
        return SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            width: size.width,
            constraints: BoxConstraints(maxHeight: 400.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Yetkazib berishni baxolang',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 10.h),
                RatingBar(
                  initialRating: _rating,
                  allowHalfRating: true,
                  itemSize: 50.sp,
                  itemPadding: EdgeInsets.symmetric(horizontal: 5.w),
                  ratingWidget: RatingWidget(
                    full: const Icon(Icons.star, color: AppColors.activeFavouriteColor),
                    half: const Icon(Icons.star_half, color: Colors.yellow),
                    empty: const Icon(Icons.star_border, color: Colors.grey),
                  ),
                  onRatingUpdate: (rating) {
                    _rating = rating;
                    print(_rating);
                  },
                ),
                SizedBox(height: 10.h),
                Text(
                  'Sharx qo\'shish',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp),
                ),
                SizedBox(height: 10.h),
                SearchField(
                  size: size,
                  hintText: 'Izoh...',
                  margin: EdgeInsets.zero,
                  width: size.width,
                  maxLines: 4,
                  minLines: 4,
                  hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black45),
                  controller: _commentController,
                  bgColor: Colors.black12,
                ),
                SizedBox(height: 10.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Shikoyatlar',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp),
                    ),
                    SizedBox(height: 10.h),
                    Wrap(
                      spacing: 10.w,
                      runSpacing: 10.h,
                      children: List.filled(
                        10,
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(13.r), color: Colors.transparent, border: Border.all(color: Colors.black54, width: .5)),
                          padding: EdgeInsets.all(5.r),
                          child: Text(
                            'shikoyat ',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: MainButton(
                        title: 'Bekor qilish',
                        onTap: () {},
                        color: Colors.black12,
                        margin: 0,
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Flexible(
                      child: MainButton(
                        margin: 0,
                        title: 'Bekor qilish',
                        onTap: () {},
                        titleColor: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _callingAlertDialog(BuildContext context, Size size) {
    return showAdaptiveDialog(
      context: context,
      builder: (BuildContext context) {
        return _callDialog(context, size);
      },
    );
  }

  AlertDialog _callDialog(BuildContext context, Size size) {
    return AlertDialog.adaptive(
      icon: const Icon(Icons.call),
      title: Text(
        'Kurier telefon raqami',
        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp, color: Colors.black54),
      ),
      content: Text(
        '+998 99 966 68 86',
        style: Theme.of(context).textTheme.titleMedium!,
      ),
      actions: [
        Container(
          width: 110.w,
          height: 35.h,
          decoration: BoxDecoration(
            color: Platform.isIOS ? Colors.transparent : Colors.grey.withOpacity(.2),
            borderRadius: BorderRadius.circular(Platform.isIOS ? 0 : 14.r),
          ),
          child: TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Orqaga',
              style: Platform.isIOS ? Theme.of(context).textTheme.titleMedium!.copyWith(color: CupertinoColors.destructiveRed) : Theme.of(context).textTheme.titleMedium!,
            ),
          ),
        ),
        Container(
          width: 110.w,
          height: 35.h,
          decoration: BoxDecoration(
            color: Platform.isIOS ? Colors.transparent : AppColors.mainColor,
            borderRadius: BorderRadius.circular(Platform.isIOS ? 0 : 14.r),
          ),
          child: TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Bog\'lanish',
              style: Platform.isIOS ? Theme.of(context).textTheme.titleMedium!.copyWith(color: CupertinoColors.activeBlue) : Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ),
      ],
    );
  }

  AlertDialog _alertDialog(BuildContext context, Size size) {
    return AlertDialog.adaptive(
      actionsPadding: EdgeInsets.zero,
      actionsAlignment: MainAxisAlignment.spaceEvenly,
      icon: const Icon(Icons.info_outline),
      title: Text(
        'Buyurtmani bekor qilmoqchimisiz ?',
        style: Theme.of(context).textTheme.titleMedium,
      ),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fikringizni qoldiring',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black54),
          ),
          SizedBox(height: 5.h),
          Material(
            borderRadius: BorderRadius.circular(8.r),
            child: SearchField(
              size: size,
              margin: EdgeInsets.zero,
              contentPaddingVertically: 15,
              contentPaddingHorizontally: 10,
              hintText: 'Buyurtmani nima sabdan bekor qilmoqchisiz ?',
              width: size.width,
              maxLines: 10,
              hintStyle: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black45),
              controller: _commentController,
            ),
          ),
        ],
      ),
      actions: [
        Container(
          width: 110.w,
          height: 35.h,
          decoration: BoxDecoration(
            color: Platform.isIOS ? Colors.transparent : Colors.grey.withOpacity(.2),
            borderRadius: BorderRadius.circular(Platform.isIOS ? 0 : 14.r),
          ),
          child: TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Orqaga',
              style: Platform.isIOS ? Theme.of(context).textTheme.titleMedium!.copyWith(color: CupertinoColors.activeBlue) : Theme.of(context).textTheme.titleMedium!,
            ),
          ),
        ),
        Container(
          width: 110.w,
          height: 35.h,
          decoration: BoxDecoration(
            color: Platform.isIOS ? Colors.transparent : CupertinoColors.destructiveRed,
            borderRadius: BorderRadius.circular(Platform.isIOS ? 0 : 14.r),
          ),
          child: TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              'Bekor qilish',
              style: Platform.isIOS ? Theme.of(context).textTheme.titleMedium!.copyWith(color: CupertinoColors.destructiveRed) : Theme.of(context).textTheme.labelMedium,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _commentController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.mainBGColor,
      body: SafeArea(
        bottom: false,
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              Container(
                width: size.width,
                height: kToolbarHeight,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 3.2.w,
                      height: 20.h,
                      color: AppColors.mainColor,
                    ),
                    SizedBox(width: 10.w),
                    Text('Buyurtmalar', style: Theme.of(context).textTheme.titleLarge),
                    SizedBox(width: 20.w),
                    Text('#21421412', style: Theme.of(context).textTheme.titleLarge),
                  ],
                ),
              ),
              SizedBox(
                width: size.width,
                height: size.height - (MediaQuery.of(context).padding.top + kToolbarHeight.h),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: Stack(
                          children: [
                            SizedBox(
                              width: size.width,
                              height: size.height - MediaQuery.of(context).padding.bottom - kToolbarHeight.h,
                              child: Image.asset(
                                Assets.imagesCourierLocation,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).padding.bottom,
                              child: Container(
                                width: size.width,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12.r),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(height: 10.h),
                                      Text(
                                        'Buyurtma yaratildi',
                                        style: Theme.of(context).textTheme.titleMedium,
                                      ),
                                      SizedBox(height: 10.h),
                                      Text(
                                        'Restoran tasdig\'ini kutmoqda',
                                        style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black54, fontSize: 14.sp),
                                      ),
                                      SizedBox(height: 10.h),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: AppColors.mainColor,
                                            child: Icon(
                                              Icons.done,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SvgPicture.asset(
                                            Assets.assetsIconsOrderLineActive,
                                            width: 50.w,
                                          ),
                                          CircleAvatar(
                                            backgroundColor: Colors.black12,
                                            child: SvgPicture.asset(Assets.iconsChef),
                                          ),
                                          SvgPicture.asset(Assets.assetsIconsOrderLine),
                                          CircleAvatar(
                                            backgroundColor: Colors.black12,
                                            child: SvgPicture.asset(Assets.iconsCourier),
                                          ),
                                          SvgPicture.asset(Assets.assetsIconsOrderLine),
                                          CircleAvatar(
                                            backgroundColor: Colors.black12,
                                            child: Image.asset(Assets.iconsCheckpoint),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10.h),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      WidgetBackground(
                        child: SizedBox(
                          width: size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Yetkazib berish manzili',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'IT Park Xorazm',
                                style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 15.sp, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      WidgetBackground(
                        child: SizedBox(
                          width: size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kuryer',
                                    style: Theme.of(context).textTheme.titleMedium,
                                  ),
                                  SizedBox(height: 10.h),
                                  Text(
                                    'Zaripov Polvon',
                                    style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 15.sp, color: Colors.black54),
                                  ),
                                ],
                              ),
                              CircleAvatar(
                                backgroundColor: AppColors.mainColor.withOpacity(.23),
                                child: IconButton(
                                  focusColor: AppColors.mainColor,
                                  hoverColor: AppColors.mainColor,
                                  splashColor: AppColors.mainColor.withOpacity(.6),
                                  color: AppColors.mainColor,
                                  onPressed: () {
                                    _callingAlertDialog(context, size);
                                  },
                                  icon: const Icon(Icons.call),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      WidgetBackground(
                        child: SizedBox(
                          width: size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Muassasa',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                'Mirandi ID',
                                style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 15.sp, color: Colors.black54),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      WidgetBackground(
                        child: SizedBox(
                          width: size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Maxsulotlar',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              SizedBox(height: 10.h),
                              ListView.separated(
                                shrinkWrap: true,
                                itemCount: orderList.length,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, item) {
                                  return CupertinoListTile(
                                    padding: EdgeInsets.zero,
                                    leadingSize: 30.r,
                                    leading: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8.r),
                                        image: DecorationImage(image: AssetImage(orderList[item]['products'][0]), fit: BoxFit.cover),
                                      ),
                                    ),
                                    subtitle: Text(
                                      '3 ta',
                                      style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 12.sp, color: Colors.black54),
                                    ),
                                    title: Text(
                                      'Lavash',
                                      style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp),
                                    ),
                                    trailing: Text(
                                      '39000 UZS',
                                      style: Theme.of(context).textTheme.titleSmall,
                                    ),
                                  );
                                },
                                separatorBuilder: (BuildContext context, int index) => const Divider(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10.h),
                      WidgetBackground(
                        child: SizedBox(
                          width: size.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'To\'lov va yetkazish',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              SizedBox(height: 10.h),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.w),
                                child: const Column(
                                  children: [
                                    OrderBottomSheetPrice(image: Assets.iconsBox, title: 'Maxsulot narxi', price: '300000'),
                                    OrderBottomSheetPrice(image: Assets.iconsTaxiIcon, title: 'Yetkazish narxi', price: '20000'),
                                    OrderBottomSheetPrice(image: Assets.iconsMoney, title: 'Umumiy summa', titleColor: Colors.black, price: '320000'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Column(
                          children: [
                            MainButton(
                              title: 'Yordam xizmati',
                              onTap: () {
                                _showEvaluationBottomSheet(context, size);
                              },
                              color: Colors.white,
                              titleColor: AppColors.mainColor,
                            ),
                            SizedBox(height: 10.h),
                            MainButton(
                              title: 'Buyurtmani bekor qilish',
                              onTap: () {
                                _cancelAlertDialog(context, size);
                              },
                              color: AppColors.canselBtnBGColor,
                              titleColor: CupertinoColors.destructiveRed,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
