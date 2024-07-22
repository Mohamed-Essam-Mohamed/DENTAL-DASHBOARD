import 'package:dental_dashboard/src/utils/app_colors.dart';
import 'package:dental_dashboard/src/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef Validator = String? Function(String?);

class CustomTextFormField extends StatefulWidget {
  TextInputType keyboardType;
  bool obscureText;
  bool isSearch;
  bool isPassword;
  TextEditingController controller;
  Validator myValidator;
  int maxLines = 1;
  int minLines = 1;

  CustomTextFormField(
      {this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.isSearch = false,
      this.isPassword = false,
      required this.controller,
      this.maxLines = 1,
      this.minLines = 1,
      required this.myValidator});

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 3.w),
      child: TextFormField(
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        style: TextStyle(
          fontSize: 8.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.blackColor,
        ),
        obscureText: widget.obscureText,
        decoration: InputDecoration(
          // fillColor: Colors.grey.shade100,
          // filled: true,
          hintText: widget.isSearch ? "Search Article" : null,
          prefixIcon: widget.isSearch ? Icon(Icons.search, size: 15.sp) : null,
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    widget.obscureText
                        ? Icons.visibility_off
                        : Icons.visibility,
                    color: Color(0xff454A4F),
                    size: 24.sp,
                  ),
                  onPressed: () {
                    setState(() {
                      widget.obscureText = !widget.obscureText;
                    });
                  },
                )
              : null,

          contentPadding:
              EdgeInsets.symmetric(horizontal: 1.sp, vertical: 2.sp),
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
        ),
        keyboardType: widget.keyboardType,
        controller: widget.controller,
        validator: widget.myValidator,
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
