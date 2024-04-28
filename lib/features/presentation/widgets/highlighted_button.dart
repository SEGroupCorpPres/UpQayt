import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HighLightedButton extends StatefulWidget {
  final IconData icon;

  const HighLightedButton({super.key, required this.icon});

  @override
  State<HighLightedButton> createState() => _HighLightedButtonState();
}

class _HighLightedButtonState extends State<HighLightedButton> {
  bool isPressed = true;

  bool isHighlighted = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.w),
      child: InkWell(

        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onHighlightChanged: (value) {
          setState(() {
            isHighlighted = !isHighlighted;
          });
        },
        onTap: () {
          setState(() {
            isPressed = !isPressed;
          });
        },
        child: AnimatedContainer(
            margin: EdgeInsets.all(isHighlighted ? 0 : 2),
            height: isHighlighted ? 40 : 35,
            width: isHighlighted ? 40 : 35,
            curve: Curves.fastLinearToSlowEaseIn,
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 20,
                  offset: const Offset(5, 10),
                ),
              ],
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(widget.icon)),
      ),
    );
  }
}
