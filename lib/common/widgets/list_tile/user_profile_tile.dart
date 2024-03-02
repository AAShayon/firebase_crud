
import 'package:firebase_operation/common/widgets/images/circular_image.dart';
import 'package:firebase_operation/utils/constant/colors.dart';
import 'package:firebase_operation/utils/constant/image_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key, this.onPressed,
  });
  // final String userName,userEmail,image;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const AppCircularImage(image: AppImages.user,width: 50,height: 50,padding: 0,),
      title: Text('User Name',style: Theme.of(context).textTheme.headlineSmall!.apply(color: AppColors.white),),
      subtitle: Text('user@example.com',style: Theme.of(context).textTheme.bodyMedium!.apply(color: AppColors.white),),
      trailing: IconButton(onPressed: (){}, icon:const Icon(Iconsax.edit,color: AppColors.white,)),
      onTap: onPressed,
    );
  }
}
