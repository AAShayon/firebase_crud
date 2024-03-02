//
// import 'package:firebase_operation/features/shop/controllers/home_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class AppHomeSlider extends StatelessWidget {
//   const AppHomeSlider({
//     super.key, required this.banners,
//   });
//   final List<String> banners;
//
//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(HomeController());
//     return Column(
//       children: [
//         CarouselSlider(
//             items: banners.map((url) =>  AppRoundImage(imageUrl: url)).toList(),
//             options: CarouselOptions(
//                 viewportFraction: 1,
//                 onPageChanged: (index, _) =>
//                     controller.updatePageIndicator(index))),
//         const SizedBox(
//           height: AppSizes.spaceBtwItems,
//         ),
//         Center(
//           child: Obx(
//             () => Row(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 for (int i = 0; i < banners.length; i++)
//                   AppCircularContainer(
//                     width: 20,
//                     height: 4,
//                     backgroundColor: controller.carouselCurrentIndex.value == i
//                         ? AppColors.primary
//                         : AppColors.grey,
//                     margin: const EdgeInsets.only(right: 10),
//                   ),
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
