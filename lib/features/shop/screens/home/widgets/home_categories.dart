import 'package:e_commerce/features/shop/screens/sub_category/sub_categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_string.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: ESizes.defaultSpace),
      child: Column(
        children: [
          const SectionHeading(
            title: EText.popularCat,
            showActionButton: false,
            textColor: EColors.white,
          ),
          const SizedBox(height: ESizes.spaceBtwItems,),
          SizedBox(
            height: 80,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: (_, index) {
                return VerticalImageText(
                  image: EImage.shoeIcon,
                  title: "Shoes Categories",
                  onTap: () => Get.to(() => const SubCategories()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
