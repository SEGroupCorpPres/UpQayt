import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:upqayt/features/data/local/data_sources/mock_data.dart';

class FilterUseful extends StatelessWidget {
  const FilterUseful({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Container(
          height: 100.h,
          width: size.width,
          color: Colors.lightBlueAccent.withOpacity(.1),
        ),
        Container(
          width: size.width,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9).r),
          ),
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Foydali',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 10.h),
              SizedBox(
                height: 30.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: filterUseful.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 30.h,
                      width: 110.w,
                      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7).r,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFF2F4F7),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9).r),
                      ),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 14.r,
                            height: 14.r,
                            child: Image.asset(
                              filterUseful[index]['image'],
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Aksiya',
                            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                  color: Colors.black87,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ],
    );
  }
}
