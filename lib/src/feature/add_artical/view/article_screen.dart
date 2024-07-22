import 'package:dental_dashboard/src/feature/add_artical/view/add_article_screen.dart';
import 'package:dental_dashboard/src/feature/add_artical/view/widget/date_widget.dart';
import 'package:dental_dashboard/src/utils/app_colors.dart';
import 'package:dental_dashboard/src/utils/app_textstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../widget/app_button_widget.dart';
import '../../../widget/text_form_field_widget.dart';
import 'widget/table_list_widget.dart';

class ArticleScreen extends StatefulWidget {
  const ArticleScreen({super.key});

  @override
  State<ArticleScreen> createState() => _ArticleScreenState();
}

class _ArticleScreenState extends State<ArticleScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      color: AppColors.whitePureColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "ARTICLES",
            style: AppTextStyle.textStyle10,
          ),
          Gap(10.h),
          //? search and menu option add, edit, delete
          _topSection()
          //? table of data appointments
          ,
          const Expanded(
            child: TableListWidget(),
          ),
        ],
      ),
    );
  }

  Row _topSection() {
    return Row(
      children: [
        Expanded(
          flex: 13,
          child: CustomTextFormField(
            controller: TextEditingController(),
            myValidator: (value) {},
            isSearch: true,
          ),
        ),
        Gap(10.h),
        const Expanded(
          flex: 4,
          child: DateField(),
        ),
        Gap(10.h),
        Expanded(
          flex: 3,
          child: AppButton(
            press: () {
              Navigator.of(context).pushNamed(AddArticleScreen.routeName);
            },
            title: "Add Article",
          ),
        ),
      ],
    );
  }
}
