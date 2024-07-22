import 'package:dental_dashboard/src/feature/appointments/view/appointments_screen.dart';
import 'package:dental_dashboard/src/feature/init_screen/init_screen.dart';
import 'package:dental_dashboard/src/utils/app_colors.dart';
import 'package:dental_dashboard/src/utils/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'src/feature/add_artical/view/add_article_screen.dart';

void main() {
  runApp(const MyDentalListDash());
}

class MyDentalListDash extends StatelessWidget {
  const MyDentalListDash({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'My Dental List Dashboard',
          debugShowCheckedModeBanner: false,
          // restorationScopeId: 'test',
          theme: AppTheme.themeLight,
          themeMode: ThemeMode.light,
          initialRoute: InitScreen.routeName,
          routes: {
            InitScreen.routeName: (context) => const InitScreen(),
            AppointmentsScreen.routeName: (context) =>
                const AppointmentsScreen(),
            AddArticleScreen.routeName: (context) => const AddArticleScreen(),
          },
        );
      },
    );
  }
}
