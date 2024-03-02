// vertical_product_card.dart

import 'package:firebase_operation/common/styles/shadows/shadows.dart';
import 'package:firebase_operation/common/widgets/containers/rounded_container.dart';
import 'package:firebase_operation/common/widgets/icons/circular_icons.dart';
import 'package:firebase_operation/common/widgets/images/rounded_images.dart';
import 'package:firebase_operation/common/widgets/texts/product_title_text.dart';
import 'package:firebase_operation/common/widgets/texts/products_price_text.dart';
import 'package:firebase_operation/features/shop/screen/product_details/product_detail.dart';
import 'package:firebase_operation/utils/constant/colors.dart';
import 'package:firebase_operation/utils/constant/sizes.dart';
import 'package:firebase_operation/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class VerticalProductCard extends StatelessWidget {
  const VerticalProductCard({
    Key? key,
    required this.name,
    required this.image,
    required this.price,
  }) : super(key: key);

  final String name;
  final String image;
  final double price;

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        boxShadow: [AppShadowStyle.verticalProdcutShadow],
        borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
        color: dark ? AppColors.darkerGrey : AppColors.white,
      ),
      child: Column(
        children: [
          AppRoundedContainer(
            height: 180,
            padding: const EdgeInsets.all(AppSizes.sm),
            backGroundColor: dark ? AppColors.dark : AppColors.light,
            child: Stack(
              children: [
                AppRoundImage(
                  imageUrl: image,
                  applyImageRadius: true,
                ),
                Positioned(
                  top: 12,
                  child: AppRoundedContainer(
                    radius: AppSizes.sm,
                    backGroundColor:
                    AppColors.secondary.withOpacity(.8),
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.sm,
                      vertical: AppSizes.xs,
                    ),
                    child: Text(
                      "25%",
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .apply(color: AppColors.black),
                    ),
                  ),
                ),
                const Positioned(
                  top: 0,
                  right: 0,
                  child: AppCircularIcon(
                    icon: Iconsax.heart5,
                    color: Colors.red,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwItems / 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: AppSizes.sm),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppProductTitleText(
                  title: name,
                  smallSize: true,
                ),
                const SizedBox(
                  height: AppSizes.spaceBtwItems / 2,
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: AppSizes.sm),
                child: AppProductPrice(
                  price: price,
                  isLarge: true,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.dark,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(AppSizes.cardRadiusMd),
                    bottomRight:
                    Radius.circular(AppSizes.productImageRadius),
                  ),
                ),
                child: const SizedBox(
                  width: AppSizes.iconLg * 1.2,
                  height: AppSizes.iconLg * 1.2,
                  child: Center(
                    child: Icon(
                      Iconsax.add,
                      color: AppColors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
