
import 'package:firebase_operation/common/widgets/image_text/vertical_image_text.dart';
import 'package:firebase_operation/utils/constant/image_strings.dart';
import 'package:flutter/material.dart';


class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return  VerticalImageText(image: AppImages.shoeIcon, title: 'shoe',onTap: (){},);
          }),
    );
  }
}