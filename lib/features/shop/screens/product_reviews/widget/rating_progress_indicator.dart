import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../utils/constants/colors.dart';

class RatingProgressIndicator extends StatelessWidget {
  const RatingProgressIndicator({
    super.key, required this.text, required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: Text(text, style: Theme.of(context).textTheme.bodyMedium,)
        ),
        Flexible(
          flex: 11,
          child: LinearPercentIndicator(
            lineHeight: 10,
            backgroundColor: EColors.grey,
            percent: value,
            progressColor: EColors.primary,
            barRadius: const Radius.circular(10),
          ),
        )
      ],
    );
  }
}
