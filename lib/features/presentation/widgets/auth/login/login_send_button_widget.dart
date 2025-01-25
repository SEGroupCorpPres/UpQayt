import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:upqayt/core/widgets/main_button.dart';

class LoginSendButtonWidget extends StatelessWidget {
  const LoginSendButtonWidget({
    super.key,
    required this.titleColor,
    required this.color,
    required this.onTap,
  });

  final Color titleColor;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        top: false,
        child: MainButton(
          title: 'Yuborish',
          onTap: onTap,
          titleColor: titleColor, // Bu yerda
          color: color,
        ),
      ),
    );
  }
}
