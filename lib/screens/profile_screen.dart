import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(30)),
        children: [
          Gap(AppLayout.getHeight(60)),
          Container(
            child: Column(
              children: [
                Row(
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
                      width: size.width * .674,
                      color: Colors.white,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
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
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.white),
                                child: Row(
                                  children: [
                                    Container(
                                      height: AppLayout.getHeight(30),
                                      width: AppLayout.getWidth(30),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                          color: const Color(0xFF526799)),
                                      child: const Icon(
                                        Icons.shield,
                                        size: 20,
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
                          Text(
                            "Edit",
                            style: Styles.headlineStyle2
                                .copyWith(color: Styles.primaryColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
