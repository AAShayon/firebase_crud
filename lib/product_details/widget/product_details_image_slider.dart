
import 'package:firebase_operation/common/widgets/appbar/appbar.dart';
import 'package:firebase_operation/common/widgets/custom_shapes/app_curved_edges_widgets.dart';
import 'package:firebase_operation/common/widgets/icons/circular_icons.dart';
import 'package:firebase_operation/common/widgets/images/rounded_images.dart';
import 'package:firebase_operation/utils/constant/colors.dart';
import 'package:firebase_operation/utils/constant/image_strings.dart';
import 'package:firebase_operation/utils/constant/sizes.dart';
import 'package:firebase_operation/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppProductImageSlider extends StatelessWidget {
  const AppProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark=AppHelperFunctions.isDarkMode(context);
    return AppCurvedEdgeWidget(
        child: Container(
          color: isDark ? AppColors.darkerGrey : AppColors.light,
          child:  Stack(
            children: [
              const SizedBox(
                  height: 400,
                  child: Padding(
                    padding:
                    EdgeInsets.all(AppSizes.productImageRadius * 2),
                    child: Center(child: Image(image: AssetImage(AppImages.products20))),
                  )),
              Positioned(
                right: 0,bottom: 30,left: AppSizes.defaultSpace,
                child: SizedBox(
                  height: 80,
                  child: ListView.separated(
                    itemBuilder: (_,index)=>AppRoundImage(
                        width: 80,
                        border: Border.all(color: AppColors.primary),
                        padding: const EdgeInsets.all(AppSizes.sm),
                        backgroundColor:isDark? AppColors.dark : AppColors.white ,
                        imageUrl: AppImages.products20),
                    separatorBuilder: (_ , __)=> const SizedBox(width: AppSizes.spaceBtwItems,),
                    itemCount: 10,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const AlwaysScrollableScrollPhysics(),
                  ),
                ),
              ),
              const AppCustomAppBar(
                showBackArrow: true,
                actions: [
                  AppCircularIcon(icon: Iconsax.heart5 ,color: Colors.red,)
                ],
              )
            ],
          ),
        ));
  }
}