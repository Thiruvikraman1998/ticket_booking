import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_style.dart';

import '../utils/app_layout.dart';

class HotelsView extends StatelessWidget {
  const HotelsView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            spreadRadius: 1,
          )
        ],
      ),
      width: size.width * 0.60,
      height: 350,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Styles.primaryColor,
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/one.png"),
              ),
            ),
          ),
          const Gap(10),
          Text(
            "Open Space",
            style: Styles.headlineStyle2.copyWith(color: Colors.grey[400]),
          ),
          Text(
            "London",
            style: Styles.headlineStyle3.copyWith(color: Colors.grey[200]),
          ),
          const Gap(10),
          Text(
            "\$25/night",
            style: Styles.headlineStyle1.copyWith(color: Colors.grey[400]),
          ),
        ],
      ),
    );
  }
}
