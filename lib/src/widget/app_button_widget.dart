// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors_in_immutables
import 'package:dental_dashboard/src/utils/app_colors.dart';
import 'package:dental_dashboard/src/utils/app_textstyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final String title;
  final Function press;
  Color colorBg;
  Color colorText;
  AppButton({
    Key? key,
    required this.title,
    required this.press,
    this.colorBg = AppColors.priamryColor,
    this.colorText = AppColors.whitePureColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        press();
      },
      elevation: 0,
      color: colorBg,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.r)),
      minWidth: 343.w,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 14.h),
        child: Text(
          title,
          style: TextStyle(
            color: colorText,
            fontSize: 5.sp,
          ),
        ),
      ),
    );
  }
}
