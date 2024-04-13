import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
import 'package:upqayt/core/colors.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/presentation/pages/profile/edit_profile.dart';
import 'package:upqayt/features/presentation/widgets/widget_backgroud.dart';
import 'package:upqayt/generated/assets.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

enum Language {
  uz,
  ru,
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _isSwitched = false;
  Language _selectedLang = Language.uz;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future<void> _showChangeLanguageBottomSheet(BuildContext context, Size size) {
    return showModalBottomSheet(
      context: context,
      showDragHandle: true,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      enableDrag: true,
      clipBehavior: Clip.hardEdge,
      scrollControlDisabledMaxHeightRatio: size.height - kToolbarHeight - kTextTabBarHeight,
      anchorPoint: const Offset(0, .3),
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
            constraints: BoxConstraints(maxHeight: 220.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tilni tanlang',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(height: 10.h),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: CupertinoColors.lightBackgroundGray,
                      ),
                      child: RadioListTile.adaptive(
                        value: Language.uz,
                        groupValue: _selectedLang,
                        selected: _selectedLang == Language.uz,
                        splashRadius: 10,
                        selectedTileColor: const Color(0xFFC1FFD2),
                        hoverColor: Colors.transparent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        toggleable: true,
                        activeColor: AppColors.mainColor,
                        title: Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Text(
                            'O\'zbekcha',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        onChanged: (Language? value) {
                          setState(() {
                            _selectedLang = value!;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 5.h),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.r),
                        color: CupertinoColors.lightBackgroundGray,
                      ),
                      child: RadioListTile.adaptive(
                        value: Language.ru,
                        groupValue: _selectedLang,
                        selected: _selectedLang == Language.ru,
                        splashRadius: 10,
                        selectedTileColor: const Color(0xFFC1FFD2),
                        hoverColor: Colors.transparent,
                        controlAffinity: ListTileControlAffinity.trailing,
                        toggleable: true,
                        activeColor: AppColors.mainColor,
                        title: Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Text(
                            'Русский',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ),
                        onChanged: (Language? value) {
                          setState(() {
                            _selectedLang = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                MainButton(
                  margin: 0,
                  title: 'Bekor qilish',
                  onTap: () {
                    Navigator.pop(context);
                  },
                  titleColor: Colors.white,
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColors.mainBGColor,
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              width: size.width,
              height: size.height - MediaQuery.of(context).padding.top - kToolbarHeight.h,
            ),
            Positioned(
              top: MediaQuery.of(context).padding.top,
              child: SizedBox(
                width: size.width,
                height: size.height - MediaQuery.of(context).padding.top - kToolbarHeight.h - kBottomNavigationBarHeight.h,
                child: SafeArea(
                  top: false,
                  child: SingleChildScrollView(
                    physics: const ClampingScrollPhysics(),
                    child: Column(
                      children: [
                        WidgetBackground(
                          child: SizedBox(
                            width: size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CircleAvatar(
                                  radius: 50.r,
                                  child: CircleAvatar(
                                    radius: 49.r,
                                    backgroundImage: const AssetImage(Assets.imagesSulaymon),
                                  ),
                                ),
                                SizedBox(height: 15.h),
                                Text(
                                  'Sulaymon O\'rinov',
                                  style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w500),
                                ),
                                SizedBox(height: 15.h),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Colors.blueGrey.withOpacity(.15),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
                                  child: Column(
                                    children: [
                                      Icon(
                                        CupertinoIcons.exclamationmark_square_fill,
                                        color: CupertinoColors.systemYellow,
                                        size: 30.sp,
                                      ),
                                      SizedBox(width: 10.w),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Manzil tasdiqlanmagan',
                                            style: Theme.of(context).textTheme.titleMedium,
                                          ),
                                          InkWell(
                                            onTap: () {},
                                            child: Icon(
                                              Icons.adaptive.arrow_forward,
                                              size: 15.sp,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        WidgetBackground(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Shaxsiy sozlamalar',
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black54),
                              ),
                              SizedBox(height: 15.h),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Colors.blueGrey.withOpacity(.15),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.credit_card,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          '+998 99 966 68 86',
                                          style: Theme.of(context).textTheme.titleMedium,
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.adaptive.arrow_forward,
                                        size: 15.sp,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Colors.blueGrey.withOpacity(.15),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          CupertinoIcons.location_solid,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          'Saqlangan manzillar',
                                          style: Theme.of(context).textTheme.titleMedium,
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.adaptive.arrow_forward,
                                        size: 15.sp,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10.h),
                        WidgetBackground(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Umumiy sozlamalar',
                                style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.black54),
                              ),
                              SizedBox(height: 15.h),
                              InkWell(
                                onTap: () {
                                  _showChangeLanguageBottomSheet(context, size);
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.r),
                                    color: Colors.blueGrey.withOpacity(.15),
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.translate,
                                            color: Colors.grey,
                                          ),
                                          SizedBox(width: 10.w),
                                          Text(
                                            'Til',
                                            style: Theme.of(context).textTheme.titleMedium,
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.adaptive.arrow_forward,
                                        size: 15.sp,
                                        color: Colors.grey,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  color: Colors.blueGrey.withOpacity(.15),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          CupertinoIcons.question_circle,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          'Yordam',
                                          style: Theme.of(context).textTheme.titleMedium,
                                        ),
                                      ],
                                    ),
                                    InkWell(
                                      onTap: () {},
                                      child: Icon(
                                        Icons.adaptive.arrow_forward,
                                        size: 15.sp,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.h),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.r),
                                  // color: Colors.blueGrey.withOpacity(.15),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 10.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          CupertinoIcons.bell,
                                          color: Colors.grey,
                                        ),
                                        SizedBox(width: 10.w),
                                        Text(
                                          'Bildirishnoma',
                                          style: Theme.of(context).textTheme.titleMedium,
                                        ),
                                      ],
                                    ),
                                    Switch.adaptive(
                                      value: _isSwitched,
                                      onChanged: (value) {
                                        setState(() {
                                          _isSwitched = value;
                                        });
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15.h),
                        MainButton(
                          margin: 30,
                          title: 'Accountdan chiqish',
                          onTap: () {},
                          color: AppColors.canselBtnBGColor,
                          isLogoutBtn: true,
                          icon: CupertinoIcons.square_arrow_left,
                          titleColor: CupertinoColors.destructiveRed,
                        ),
                        SizedBox(height: 10.h),
                        MainButton(
                          margin: 30,
                          title: 'Accountdan o\'chirish',
                          onTap: () {},
                          icon: CupertinoIcons.delete,
                          color: CupertinoColors.destructiveRed,
                          isLogoutBtn: true,
                          titleColor: CupertinoColors.white,
                        ),
                        SizedBox(height: 10.h),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: size.width,
              height: kToolbarHeight,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: .01,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 3.2.w,
                        height: 20.h,
                        color: AppColors.mainColor,
                      ),
                      SizedBox(width: 10.w),
                      Text('Shaxsiy profil', style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: CupertinoButton(
                      padding: EdgeInsets.zero,
                      minSize: 25.w,
                      color: Platform.isIOS ? Colors.transparent : AppColors.mainColor,
                      child: Platform.isIOS
                          ? Text(
                              'Edit',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.mainColor),
                            )
                          : SvgPicture.asset(
                              Assets.iconsEditAlt,
                              colorFilter: const ColorFilter.mode(CupertinoColors.white, BlendMode.srcIn),
                              width: 15.w,
                            ),
                      onPressed: () => pushNewScreen(context, screen: const EditProfileScreen(), withNavBar: true),
                    ),
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
