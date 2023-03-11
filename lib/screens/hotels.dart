import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_style.dart';

import '../utils/app_layout.dart';

class HotelsView extends StatelessWidget {
  final Map<String, dynamic> hotels;
  const HotelsView({super.key, required this.hotels});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(15),
          vertical: AppLayout.getHeight(17)),
      margin: EdgeInsets.only(right: AppLayout.getWidth(15)),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            spreadRadius: 1,
          )
        ],
      ),
      width: size.width * 0.60,
      height: AppLayout.getHeight(350),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotels["image"]}"),
              ),
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            hotels["place"],
            style: Styles.headlineStyle2.copyWith(color: Colors.grey[400]),
          ),
          Text(
            hotels["destination"],
            style: Styles.headlineStyle3.copyWith(color: Colors.grey[200]),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            ("\$${hotels["price"]}/night"),
            style: Styles.headlineStyle1.copyWith(color: Colors.grey[400]),
          ),
        ],
      ),
    );
  }
}
