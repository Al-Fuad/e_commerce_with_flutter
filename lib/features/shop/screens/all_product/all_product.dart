import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/sortable/sortable_products.dart';

class AllProduct extends StatelessWidget {
  const AllProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: EAppBar(
        title: Text("Popular Products"),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(ESizes.defaultSpace),
          child: SortableProducts(),
        ),
      ),
    );
  }
}

