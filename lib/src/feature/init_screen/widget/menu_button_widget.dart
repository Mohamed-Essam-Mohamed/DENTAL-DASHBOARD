import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationItem extends StatelessWidget {
  final bool isSelected;
  final void Function()? onClick;
  final String title;
  final String icon;

  const NavigationItem({
    super.key,
    this.isSelected = false,
    required this.onClick,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
      color: isSelected ? const Color(0xff344293) : Colors.transparent,
      child: InkWell(
        onTap: onClick,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: SizedBox(
          height: 40.h,
          width: 60.w,
          // padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TweenAnimationBuilder(
                tween: ColorTween(
                  begin: isSelected ? Colors.black : Colors.white,
                  end: isSelected ? Colors.white : Colors.black,
                ),
                duration: const Duration(milliseconds: 100),
                builder: (context, value, _) => IconButton(
                  onPressed: null,
                  icon: Image.asset(
                    icon,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                child: TweenAnimationBuilder(
                  tween: ColorTween(
                    begin: isSelected ? Colors.black : Colors.white,
                    end: isSelected ? Colors.white : Colors.black,
                  ),
                  duration: const Duration(milliseconds: 100),
                  builder: (context, value, _) => Text(
                    title,
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium
                        ?.copyWith(color: value as Color),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}












// class AnimatedMenuButton extends StatefulWidget {
//   const AnimatedMenuButton({super.key});

//   @override
//   State<AnimatedMenuButton> createState() => _AnimatedMenuButtonState();
// }

// class _AnimatedMenuButtonState extends State<AnimatedMenuButton> {
//   int selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: double.infinity,
//       width: 70.w,
//       child: Card(
//         elevation: 10.sp,
//         color: AppColors.priamryColor,
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 10.h),
//           child: Stack(
//             children: [
//               // AnimatedPositioned(
//               //   top: 9.4 + selectedIndex * 15.sp,
//               //   duration: const Duration(milliseconds: 500),
//               //   curve: Curves.elasticOut,
//               //   child: Container(
//               //     height: 40.h,
//               //     width: 60.w,
//               //     decoration: BoxDecoration(
// color: const Color(0xff344293),
//               //       borderRadius: BorderRadius.circular(10.r),
//               //     ),
//               //   ),
//               // ),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   NavigationItem(
//                     title: "Appointments",
//                     icon: "assets/image/appointment.png",
//                     isSelected: selectedIndex == 0,
//                     onClick: () {
//                       setState(() {
//                         selectedIndex = 0;
//                       });
//                     },
//                   ),
//                   NavigationItem(
//                     title: "Add an article",
//                     icon: "assets/image/application.png",
//                     isSelected: selectedIndex == 1,
//                     onClick: () {
//                       setState(() {
//                         selectedIndex = 1;
//                       });
//                     },
//                   ),
//                   NavigationItem(
//                     title: "Analytics",
//                     icon: "assets/image/analytics.png",
//                     isSelected: selectedIndex == 2,
//                     onClick: () {
//                       setState(() {
//                         selectedIndex = 2;
//                       });
//                     },
//                   ),
//                   NavigationItem(
//                     title: "Settings",
//                     icon: "assets/image/global.png",
//                     isSelected: selectedIndex == 3,
//                     onClick: () {
//                       setState(() {
//                         selectedIndex = 3;
//                       });
//                     },
//                   )
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }