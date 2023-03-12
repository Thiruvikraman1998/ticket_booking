import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class Lines extends StatelessWidget {
  final bool? isColor;
  const Lines({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
              ((constraints.constrainWidth() / 10).floor()),
              (index) => SizedBox(
                width: 5,
                height: 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color:
                          isColor == null ? Colors.white : Styles.orangeColor),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
