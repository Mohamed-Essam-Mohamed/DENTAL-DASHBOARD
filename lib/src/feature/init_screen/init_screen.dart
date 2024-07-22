import 'package:dental_dashboard/src/feature/init_screen/widget/menu_button_widget.dart';
import 'package:dental_dashboard/src/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../add_artical/view/article_screen.dart';
import '../appointments/view/appointments_screen.dart';

class InitScreen extends StatefulWidget {
  static const routeName = "/init_screen";
  const InitScreen({super.key});

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  List<Widget> menuItems = [
    const AppointmentsScreen(),
    const ArticleScreen(),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.black,
    ),
    Container(
      color: Colors.yellow,
    ),
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          //! menu option
          _menuSection(),
          //! show selected option
          Expanded(
            flex: 14,
            child: menuItems[selectedIndex],
          ),
        ],
      ),
    );
  }

  Widget _menuSection() {
    return Expanded(
      flex: 3,
      child: Container(
        color: AppColors.priamryColor,
        child: Column(
          children: [
            NavigationItem(
              title: "Appointments",
              icon: "assets/image/appointment.png",
              isSelected: selectedIndex == 0,
              onClick: () {
                setState(() {
                  selectedIndex = 0;
                  this.selectedIndex = 0;
                });
              },
            ),
            NavigationItem(
              title: "Add an article",
              icon: "assets/image/application.png",
              isSelected: selectedIndex == 1,
              onClick: () {
                setState(() {
                  selectedIndex = 1;
                });
              },
            ),
            NavigationItem(
              title: "Add an Video",
              icon: "assets/image/video-marketing.png",
              isSelected: selectedIndex == 2,
              onClick: () {
                setState(() {
                  selectedIndex = 2;
                });
              },
            ),
            NavigationItem(
              title: "Analytics",
              icon: "assets/image/analytics.png",
              isSelected: selectedIndex == 3,
              onClick: () {
                setState(() {
                  selectedIndex = 3;
                });
              },
            ),
            NavigationItem(
              title: "Settings",
              icon: "assets/image/global.png",
              isSelected: selectedIndex == 4,
              onClick: () {
                setState(() {
                  selectedIndex = 4;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
