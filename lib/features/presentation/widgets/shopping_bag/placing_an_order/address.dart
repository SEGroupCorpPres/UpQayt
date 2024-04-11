import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/widgets/main_button.dart';
import 'package:upqayt/features/presentation/widgets/shopping_bag/placing_an_order/adress_item.dart';
import 'package:upqayt/features/presentation/widgets/widget_backgroud.dart';
import 'package:upqayt/generated/assets.dart';

class Address extends StatefulWidget {
  const Address({super.key});

  @override
  State<Address> createState() => _AddressState();
}

enum AddressValue { address1, address2 }

class _AddressState extends State<Address> {
  AddressValue addressValue = AddressValue.address1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Future<void> _buildAddressBottomSheet(Size size, BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context, ) {
        return BottomSheet(
          showDragHandle: true,
          builder: (context) {
            return SafeArea(
              top: false,
              child: Container(
                width: size.width,
                height: 200.h,
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mening mazillarim',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    SizedBox(height: 5.h),
                    CupertinoListTile(
                      padding: EdgeInsets.zero,
                      leadingToTitle: 10.w,
                      leadingSize: 30.r,
                      leading: Radio.adaptive(
                        value: AddressValue.address1,
                        groupValue: addressValue,
                        onChanged: (AddressValue? value) {
                          addressValue = value!;
                          setState(() {});
                        },
                      ),
                      title: Text(
                        'Xorazm Viloyati, Urganch Shaxar Xonqa ko\'chasi',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      trailing: IconButton(
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.zero,
                        onPressed: () {},
                        icon: const Icon(Icons.edit),
                      ),
                    ),
                    CupertinoListTile(
                      padding: EdgeInsets.zero,
                      leadingToTitle: 10.w,
                      leadingSize: 30.r,
                      leading: Radio.adaptive(
                        value: AddressValue.address2,
                        groupValue: addressValue,
                        onChanged: (AddressValue? value) {
                          addressValue = value!;
                          setState(() {});
                        },
                      ),
                      title: Text(
                        'Xorazm Viloyati, Hazorasp Shaxar Al-Xorazmiy ko\'chasi',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      trailing: IconButton(
                        padding: EdgeInsets.zero,
                        alignment: Alignment.centerRight,
                        onPressed: () {},
                        icon: const Icon(Icons.edit),
                      ),
                    ),
                    CupertinoListTile(
                      onTap: () {},
                      padding: EdgeInsets.zero,
                      leading: const Icon(Icons.add),
                      title: Text(
                        'Manzilni qo\'shish',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      trailing: Icon(
                        Icons.adaptive.arrow_forward,
                        size: 15.sp,
                      ),
                    ),
                    SizedBox(height: 10.h),
                    MainButton(
                      title: 'Manzilni saqlash',
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
          onClosing: () {},
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
    return WidgetBackground(
      child: Column(
        children: [
          CupertinoListTile(
            onTap: () async {
              await _buildAddressBottomSheet(size, context);
            },
            backgroundColorActivated: Colors.transparent,
            padding: EdgeInsets.zero,
            title: Text(
              'Yetkazib berish manzili',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            subtitle: Text(
              'Xorazm, It Park binosi 2 qavat',
              style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.black54),
            ),
            trailing: Row(
              children: [
                Icon(
                  Icons.adaptive.arrow_forward,
                  size: 15.sp,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const AddressItem(title: 'Kirish', addressItem: '2-podyezd'),
                  Container(color: Colors.black54, height: 30.h, width: .3),
                  const AddressItem(title: 'Qavat', addressItem: '3'),
                  Container(color: Colors.black54, height: 30.h, width: .3),
                  const AddressItem(title: 'Xonadon', addressItem: '23'),
                ],
              ),
              SizedBox(height: 10.h),
              Card(
                elevation: .1,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(Assets.iconsLocationIcon),
                          SizedBox(width: 10.w),
                          Text(
                            'Mo\'ljal',
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                        ],
                      ),
                      Text(
                        'Halqa yo\'lidan',
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
