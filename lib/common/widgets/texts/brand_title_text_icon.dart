
import 'package:firebase_operation/common/widgets/texts/brand_title_text.dart';
import 'package:firebase_operation/utils/constant/colors.dart';
import 'package:firebase_operation/utils/constant/enums.dart';
import 'package:firebase_operation/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AppBrandTitleWithVerifiedIcon extends StatelessWidget {
  const AppBrandTitleWithVerifiedIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = AppColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSizes = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSizes;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppBrandTitleText(
          title: title,
          color: textColor,
          maxLines: maxLines,
          textAlign: textAlign,
          brandTextSize: brandTextSizes,
        ),
        const SizedBox(width: AppSizes.xs,),
         Icon(
          Iconsax.verify5,
          color: iconColor,
          size: AppSizes.iconXs,
        )
      ],
    );
  }
}
