import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';
import 'curve_style.dart';

class BannerView extends StatelessWidget {
  const BannerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: AppLayout.getHeight(100),
          width: double.infinity,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Styles.primaryColor),
        ),
        const Positioned(
          right: -45,
          top: -40,
          child: CurveStyle(
            isColor: false,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(15),
              vertical: AppLayout.getHeight(20)),
          child: Row(
            children: [
              CircleAvatar(
                maxRadius: 30,
                foregroundColor: Styles.primaryColor,
                backgroundColor: Colors.white,
                child: const Icon(
                  FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                  size: 35,
                ),
              ),
              Gap(AppLayout.getWidth(3)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "You've got a new award",
                    style: Styles.headlineStyle1
                        .copyWith(color: Colors.white, fontSize: 25),
                  ),
                  Gap(AppLayout.getHeight(3)),
                  Text(
                    "You have 150 flights in a year",
                    style: Styles.headlineStyle3.copyWith(color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
