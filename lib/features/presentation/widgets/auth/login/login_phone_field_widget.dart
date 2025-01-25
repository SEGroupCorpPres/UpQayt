import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/features/presentation/controllers/home_controllers.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';

class LoginPhoneFieldWidget extends StatelessWidget {
  const LoginPhoneFieldWidget({
    super.key,
    required FocusNode phoneFocusNode,
    // required this.homeController,
    required TextEditingController phoneController,
    required this.size,
    required this.onChanged,
    required this.onTapOutside,
  })  : _phoneFocusNode = phoneFocusNode,
        _phoneController = phoneController;

  final FocusNode _phoneFocusNode;
  // final HomeController homeController;
  final TextEditingController _phoneController;
  final Size size;
  final ValueChanged<String> onChanged;
  final ValueChanged<PointerDownEvent> onTapOutside;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      shadowColor: Colors.transparent,
      borderOnForeground: false,
      surfaceTintColor: Colors.transparent,
      child: SizedBox(
        height: 60.h,
        child: SearchField(
          autofocus: true,
          focusNode: _phoneFocusNode,
          keyboardType: TextInputType.phone,
          margin: EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.h),
          hintText: '',
          width: MediaQuery.of(context).size.width,
          onChanged: onChanged,
          hintStyle: TextStyle(),
          controller: _phoneController,
          bgColor: Colors.blueGrey.shade50,
          size: size,
          onTapOutside: onTapOutside,
        ),
      ),
    );
  }
}
