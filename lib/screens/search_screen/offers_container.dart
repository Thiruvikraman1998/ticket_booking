import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_style.dart';

class OffersView extends StatelessWidget {
  const OffersView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(10),
              vertical: AppLayout.getHeight(10),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                AppLayout.getHeight(20),
              ),
            ),
            width: AppLayout.getWidth(170),
            child: Column(
              children: [
                Container(
                  height: AppLayout.getHeight(180),
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(12)),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/sit.jpg"),
                        fit: BoxFit.cover),
                  ),
                ),
                Gap(AppLayout.getHeight(10)),
                Text(
                  "Get 20% discount on the early booking of this flight. Don't miss it.",
                  style:
                      Styles.headlineStyle2.copyWith(color: Colors.grey[700]),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                children: [
                  Container(
                    width: AppLayout.getWidth(170),
                    padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(15),
                      vertical: AppLayout.getHeight(15),
                    ),
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                      color: Color(0xFF3ab9b8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discount\nfor survey",
                          style: Styles.headlineStyle2
                              .copyWith(color: Colors.white),
                        ),
                        Gap(AppLayout.getHeight(10)),
                        Text(
                          "Take the survey about our services and get a discount.",
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
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
                  ),
                ],
              ),
              Gap(AppLayout.getHeight(10)),
              Container(
                width: AppLayout.getWidth(170),
                height: AppLayout.getHeight(150),
                padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(15),
                  vertical: AppLayout.getHeight(15),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  color: Color(0xFFEB6545),
                ),
                child: Column(
                  children: [
                    Text(
                      "Take Love",
                      style:
                          Styles.headlineStyle2.copyWith(color: Colors.white),
                    ),
                    Gap(AppLayout.getHeight(10)),
                    RichText(
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "😍",
                            style: TextStyle(fontSize: 20),
                          ),
                          TextSpan(
                            text: "🥰",
                            style: TextStyle(fontSize: 50),
                          ),
                          TextSpan(
                            text: "😘",
                            style: TextStyle(fontSize: 35),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
