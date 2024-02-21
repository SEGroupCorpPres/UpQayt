import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ProdCancelBtn extends StatelessWidget {
  const ProdCancelBtn({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: onTap,
          child: const Icon(
            Icons.cancel,
            color: CupertinoColors.destructiveRed,
          ),
        ),
      ],
    );
  }
}
