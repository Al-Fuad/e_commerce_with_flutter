
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce/features/shop/controllers/home_controller.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../common/widgets/custom_shapes/containers/circular_container.dart';
import '../../../../../common/widgets/image/rounded_image.dart';
import '../../../../../utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key, required this.banner,
  });

  final List<String> banner;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) => controller.updatePageIndicator(index)
          ),
          items: banner.map((e) => RoundedImage(image: e)).toList()
        ),
        const SizedBox(height: ESizes.spaceBtwItems),
        Center(
          child: Obx(
              () => Row(
                mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banner.length; i++)
                  ECircularContainer(
                    width: 20,
                    height: 5,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i ? EColors.primary : EColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
