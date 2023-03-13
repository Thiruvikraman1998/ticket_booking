import 'package:flutter/material.dart';

import '../utils/app_layout.dart';

class CurveStyle extends StatelessWidget {
  const CurveStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -45,
      top: -40,
      child: Container(
        padding: EdgeInsets.all(AppLayout.getHeight(30)),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 18, color: Color(0xFF189999)),
          color: Colors.transparent,
        ),
      ),
    );
  }
}
