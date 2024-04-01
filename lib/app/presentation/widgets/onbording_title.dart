import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/core/colors.dart';

class OnboardingTitle extends StatefulWidget {
  const OnboardingTitle({super.key, required this.indexTitle});

  final int indexTitle;

  @override
  State<OnboardingTitle> createState() => _OnboardingTitleState();
}

class _OnboardingTitleState extends State<OnboardingTitle> {
  String selectedTitle = 'Up Qayt ilovasiga xush kelibsiz';

  @override
  void didUpdateWidget(covariant OnboardingTitle oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    if (widget.indexTitle != oldWidget.indexTitle) {
      switch (widget.indexTitle) {
        case 1:
          selectedTitle = 'Qo’g’iroqlarsiz va qulay buyurtma berish';

          break;
        case 2:
          selectedTitle = 'Barcha siz yoqtirgan taomlar endi bir joyda.';

        default:
          selectedTitle = 'Up Qayt ilovasiga xush kelibsiz';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> title = selectedTitle.split(' ');
    return RichText(
      text: TextSpan(
        text: title[0],
        style: Theme.of(context).textTheme.titleLarge!.copyWith(color: const Color(0xFFF76512), fontWeight: FontWeight.w700, fontSize: 22.sp),
        children: title.map<TextSpan>(
          (word) {
            // if (word == 'Up') {
            //   word = '';
            // }
            return TextSpan(
              text: '$word ',
              style: widget.indexTitle == 1
                  ? Theme.of(context).textTheme.titleLarge!.copyWith(color: AppColors.mainColor, fontWeight: FontWeight.w700, fontSize: 22.sp)
                  : Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700, fontSize: 22.sp),
            );
          },
        ).toList(),
      ),
    );
  }
}
