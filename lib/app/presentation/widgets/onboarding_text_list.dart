import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';

List<Widget> onboardingTitleList(BuildContext context) => _onboardingTitleList(context);

List<Widget> _onboardingTitleList(BuildContext context) => [
      RichText(
        text: TextSpan(
          text: 'Up ',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(color: const Color(0xFFF76512), fontWeight: FontWeight.w700, fontSize: 22.sp),
          children: [
            TextSpan(
              text: 'Qayt ',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.mainColor, fontWeight: FontWeight.w700, fontSize: 22.sp),
            ),
            TextSpan(
              text: 'ilovasiga xush kelibsiz',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700, fontSize: 22.sp),
            ),
          ],
        ),
      ),
      RichText(
        text: TextSpan(
          text: 'Barcha siz yoqtirgan taomlar endi ',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700, fontSize: 22.sp),
          children: [
            TextSpan(
              text: 'bir ',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.mainColor, fontWeight: FontWeight.w700, fontSize: 22.sp),
            ),
            TextSpan(
              text: 'joyda.',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700, fontSize: 22.sp),
            ),
          ],
        ),
      ),
      RichText(
        text: TextSpan(
          text: 'Qo’g’iroqlarsiz ',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.mainColor, fontWeight: FontWeight.w700, fontSize: 22.sp),
          children: [
            TextSpan(
              text: 'va qulay buyurtma berish',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700, fontSize: 22.sp),
            ),
          ],
        ),
      ),
    ];

List<Widget> onboardingSubtitleList(BuildContext context) => _onboardingSubtitleList(context);

List<Widget> _onboardingSubtitleList(BuildContext context) => [
      Text(
        'Sevimli taomlaringizni buyurtma qiling va biz uyingizga tezda yetkazib beramiz.',
        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp, color: AppColors.restaurantDescription),
      ),
      Text(
        'Keng tanlovli taomlar ro’yhati endi sizning cho’ntakingizda. (telefoningizda)',
        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp, color: AppColors.restaurantDescription),
      ),
      Text(
        'Buyurtma bering, biz taomni 20 daqiqa ichida yetkazamiz. Balki undan ham tezroq.',
        style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp, color: AppColors.restaurantDescription),
      ),
    ];
