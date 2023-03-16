import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class CurveStyle extends StatelessWidget {
  final bool isColor;
  const CurveStyle({super.key, this.isColor = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppLayout.getHeight(30)),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
            width: 18,
            color: isColor == true ? Color(0xFF189999) : Color(0xFF2A4CD2)),
        color: Colors.transparent,
      ),
    );
  }
}
