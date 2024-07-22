import 'package:dental_dashboard/src/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DescriptionTextField extends StatelessWidget {
  DescriptionTextField({super.key, required this.textEditingController});
  var textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: TextField(
        onChanged: (value) {},
        maxLines: 6,
        style: TextStyle(
          fontSize: 8.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.blackColor,
        ),
        controller: textEditingController,
        decoration: InputDecoration(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 1.sp, vertical: 2.sp),
          border: InputBorder.none,
          enabledBorder: _outlineInputBorder(
            borderColor: AppColors.blackColor,
            width: 1,
          ),
          focusedBorder: _outlineInputBorder(
            borderColor: AppColors.priamryColor,
            width: 2,
          ),
          errorBorder: _outlineInputBorder(
            borderColor: Colors.red,
            width: 1,
          ),
          focusedErrorBorder: _outlineInputBorder(
            borderColor: Colors.red,
            width: 1,
          ),
          hintText: 'Enter Description of Article',
          hintStyle: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder _outlineInputBorder({
    required Color borderColor,
    required double width,
  }) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(5.r),
      borderSide: BorderSide(
        width: width,
        color: borderColor,
      ),
    );
  }
}
