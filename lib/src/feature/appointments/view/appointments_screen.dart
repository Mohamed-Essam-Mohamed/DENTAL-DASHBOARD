import 'package:dental_dashboard/src/utils/app_colors.dart';
import 'package:dental_dashboard/src/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentsScreen extends StatelessWidget {
  static const routeName = '/appointments';
  const AppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      color: AppColors.whitePureColor,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Appointments",
                style: AppTextStyle.textStyle10,
              ),
              const Spacer(),
            ],
          )
        ],
      ),
    );
  }
}
