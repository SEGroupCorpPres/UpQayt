import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/features/presentation/widgets/search_field.dart';
import 'package:upqayt/features/presentation/widgets/widget_backgroud.dart';

class AddComment extends StatefulWidget {
  const AddComment({super.key, required this.size, });

  final Size size;
  // final TextEditingController commentController;

  @override
  State<AddComment> createState() => _AddCommentState();
}

class _AddCommentState extends State<AddComment> {
  late TextEditingController _commentController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _commentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WidgetBackground(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Sharh qo\'shish',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 14.sp),
          ),
          SizedBox(height: 10.h),
          SearchField(
            margin: EdgeInsets.zero,
            contentPaddingVertically: 5.h,
            bgColor: Colors.black12,
            size: widget.size,
            hintText: 'Izoh...',
            width: widget.size.width,
            hintStyle: Theme.of(context).textTheme.titleSmall!,
            controller: _commentController,
            maxLines: 10,
            minLines: 5,
          ),
        ],
      ),
    );
  }
}
