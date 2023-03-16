import 'package:flutter/material.dart';

class BrokenLines extends StatelessWidget {
  final bool isColor;
  const BrokenLines({super.key, this.isColor = true});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Flex(
            direction: Axis.horizontal,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: List.generate(
              (constraints.constrainWidth() / 12).floor(),
              (index) => SizedBox(
                height: 1,
                width: 5,
                child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: isColor == true
                            ? Colors.grey.shade300
                            : Colors.grey.shade300)),
              ),
            ),
          );
        },
      ),
    );
  }
}
