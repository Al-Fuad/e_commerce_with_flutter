import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edge_widget.dart';
import 'circular_container.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: Container(
        color: EColors.primary,
        child: Stack(
          children: [
            Positioned(top: -150, right: -250, child: ECircularContainer(backgroundColor: EColors.textWhite.withOpacity(0.1),)),
            Positioned(top: 100, right: -300, child: ECircularContainer(backgroundColor: EColors.textWhite.withOpacity(0.1),)),
            child,
          ],
        ),
      ),
    );
  }
}
