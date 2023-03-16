import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/profile_screen_header.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/widgets/banner_view.dart';
import 'package:ticket_booking/widgets/broken_lines.dart';
import 'package:ticket_booking/widgets/curve_style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:ticket_booking/widgets/miles_info.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(15),
            vertical: AppLayout.getHeight(30)),
        children: [
          Gap(AppLayout.getHeight(40)),
          const ProfileHeader(),
          Gap(AppLayout.getHeight(10)),
          Divider(
            color: Colors.grey.shade300,
          ),
          Gap(AppLayout.getHeight(20)),
          const BannerView(),
          Gap(AppLayout.getHeight(20)),
          Text(
            "Accumulated miles",
            style: Styles.headlineStyle2,
          ),
          Gap(AppLayout.getHeight(30)),
          Container(
            padding: EdgeInsets.only(
                top: AppLayout.getHeight(5), bottom: AppLayout.getHeight(10)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      "192808",
                      style: Styles.headlineStyle1
                          .copyWith(fontWeight: FontWeight.w500, fontSize: 50),
                    )
                  ],
                ),
                Gap(AppLayout.getHeight(15)),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: AppLayout.getWidth(10)),
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(5),
                    vertical: AppLayout.getHeight(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Miles accrued",
                            style: Styles.headlineStyle3,
                          ),
                          Text(
                            "23 May 2021",
                            style: Styles.headlineStyle3,
                          )
                        ],
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Divider(
                        color: Colors.grey.shade300,
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "23 042",
                                style: Styles.headlineStyle2
                                    .copyWith(fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Miles",
                                style: Styles.headlineStyle3.copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "AirLine Co",
                                style: Styles.headlineStyle2
                                    .copyWith(fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Received from",
                                style: Styles.headlineStyle3.copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                      //Gap(AppLayout.getHeight(3)),
                      const BrokenLines(isColor: false),
                      //Gap(AppLayout.getHeight(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "23 042",
                                style: Styles.headlineStyle2
                                    .copyWith(fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Miles",
                                style: Styles.headlineStyle3.copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "AirLine Co",
                                style: Styles.headlineStyle2
                                    .copyWith(fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Received from",
                                style: Styles.headlineStyle3.copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                      //Gap(AppLayout.getHeight(3)),
                      const BrokenLines(isColor: false),
                      //Gap(AppLayout.getHeight(5)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "52 345",
                                style: Styles.headlineStyle2
                                    .copyWith(fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Miles",
                                style: Styles.headlineStyle3.copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "Emirates",
                                style: Styles.headlineStyle2
                                    .copyWith(fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Received from",
                                style: Styles.headlineStyle3.copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Gap(AppLayout.getHeight(10)),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "How to get more miles",
                    style: Styles.headlineStyle3
                        .copyWith(color: Styles.primaryColor),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
