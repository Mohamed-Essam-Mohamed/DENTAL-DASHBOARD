//! Conatiner Location
//  Container(
//                   padding: EdgeInsets.all(8.sp),
//                   width: 343.w,
//                   height: 388.h,
//                   decoration: BoxDecoration(
//                     color: AppColors.whitePureColor,
//                     borderRadius: BorderRadius.circular(10.r),
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Gap(34.h),
//                       SvgPicture.asset(
//                         'assets/svg/icon_location.svg',
//                         height: 35.h,
//                         width: 35.w,
//                         fit: BoxFit.fill,
//                       ),
//                       Gap(16.h),
//                       Text(
//                         'Detect location?',
//                         style: AppTextStayl.textStyle18.copyWith(
//                           fontWeight: FontWeight.w500,
//                           color: Color(0xff747474),
//                         ),
//                       ),
//                       Gap(16.h),
//                       Text(
//                         'Allow location permissions to view clinics near you.',
//                         style: AppTextStayl.textStyle18.copyWith(
//                           fontWeight: FontWeight.w400,
//                           color: Color(0xff747474),
//                         ),
//                         textAlign: TextAlign.center,
//                         maxLines: 2,
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                       Gap(36.h),
//                       AppButton(
//                         title: 'Locate',
//                         press: () {},
//                         colorText: AppColors.whitePureColor,
//                       ),
//                       Gap(10.h),
//                       AppButton(
//                         title: 'Not now',
//                         press: () {},
//                         colorText: AppColors.priamryColor,
//                         colorBg: Colors.transparent,
//                       )
//                     ],
//                   ),
//                 )