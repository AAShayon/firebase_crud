
import 'package:firebase_operation/common/widgets/containers/rounded_container.dart';
import 'package:firebase_operation/common/widgets/images/circular_image.dart';
import 'package:firebase_operation/common/widgets/texts/brand_title_text_icon.dart';
import 'package:firebase_operation/utils/constant/colors.dart';
import 'package:firebase_operation/utils/constant/enums.dart';
import 'package:firebase_operation/utils/constant/image_strings.dart';
import 'package:firebase_operation/utils/constant/sizes.dart';
import 'package:firebase_operation/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';

class AppBrandCard extends StatelessWidget {
  const AppBrandCard({
    super.key, required this.showBorder, this.onTap,
  });
  final bool showBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final isDark=AppHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap:onTap,
      child: AppRoundedContainer(
        padding: const EdgeInsets.all(AppSizes.sm),
        showBorder: showBorder,
        backGroundColor: Colors.transparent,
        child: Row(
          children: [
            Flexible(
              child: AppCircularImage(
                image: AppImages.clothIcon,
                isNetworkImage: false,
                backgroundColor: Colors.transparent,
                overlayColor: isDark ? AppColors.white : AppColors.black,
              ),
            ),
            const SizedBox(
              width: AppSizes.spaceBtwItems / 2,
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppBrandTitleWithVerifiedIcon(
                    title: 'Nike',
                    brandTextSizes: TextSizes.large,
                  ),
                  Text(
                    '256 products',
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}