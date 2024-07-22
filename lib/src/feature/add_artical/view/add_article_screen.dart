import 'package:dental_dashboard/main.dart';
import 'package:dental_dashboard/src/feature/add_artical/view/widget/description_text_field.dart';
import 'package:dental_dashboard/src/utils/app_textstyle.dart';
import 'package:dental_dashboard/src/widget/app_button_widget.dart';
import 'package:dental_dashboard/src/widget/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

class AddArticleScreen extends StatelessWidget {
  static const routeName = '/add_article_screen';
  const AddArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add Article",
                style: AppTextStyle.textStyle10,
              ),
              Gap(10.h),
              GestureDetector(
                onTap: () {},
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/image/add-image.png",
                    height: 250.h,
                    width: 250.w,
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Gap(10.h),
              Text(
                "Article Title",
                style: AppTextStyle.textStyle8,
              ),
              Gap(10.h),
              CustomTextFormField(
                controller: TextEditingController(),
                myValidator: (value) {},
              ),
              Gap(10.h),
              Text(
                "Article Content",
                style: AppTextStyle.textStyle8,
              ),
              Gap(10.h),
              DescriptionTextField(
                textEditingController: TextEditingController(),
              ),
              Gap(10.h),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: AppButton(
                    press: () {},
                    title: "Add Article",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
