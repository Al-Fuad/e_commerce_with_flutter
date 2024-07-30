import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_string.dart';
import '../image/circular_image.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({
    super.key, this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImage(image: EImage.user, width: 50, height: 50, padding: 0,),
      title: Text("S M Al Fuad Nur", style: Theme.of(context).textTheme.headlineSmall!.apply(color: EColors.white),),
      subtitle: Text("smalfuadnur@gmail.com", style: Theme.of(context).textTheme.bodyMedium!.apply(color: EColors.white),),
      trailing: IconButton(onPressed: onPressed,icon: const Icon(Iconsax.edit, color: EColors.white,)),
    );
  }
}