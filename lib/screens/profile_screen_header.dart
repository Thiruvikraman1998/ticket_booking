import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: AppLayout.getHeight(90),
          width: AppLayout.getWidth(90),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              AppLayout.getHeight(12),
            ),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Styles.planeImage,
            ),
          ),
        ),
        Gap(AppLayout.getWidth(10)),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Book Tickets",
                style: Styles.headlineStyle1,
              ),
              Gap(AppLayout.getHeight(5)),
              Text(
                "New-York",
                style: Styles.headlineStyle3,
              ),
              Gap(AppLayout.getHeight(5)),
              Container(
                height: AppLayout.getHeight(30),
                width: AppLayout.getWidth(160),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: AppLayout.getHeight(25),
                      width: AppLayout.getWidth(25),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: const Color(0xFF526799)),
                      child: const Icon(
                        Icons.shield,
                        size: 18,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Premium status",
                      style: Styles.headlineStyle3
                          .copyWith(color: Color(0xFF526799)),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        const Spacer(),
        InkWell(
          child: Container(
            child: Text(
              "Edit",
              style: Styles.headlineStyle3.copyWith(color: Color(0xFF526799)),
            ),
          ),
        )
      ],
    );
  }
}
