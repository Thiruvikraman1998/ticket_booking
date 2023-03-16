import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/widgets/curve_style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

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
          Gap(AppLayout.getHeight(60)),
          Row(
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
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Container(
                            height: AppLayout.getHeight(30),
                            width: AppLayout.getWidth(30),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
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
              ),
              const Spacer(),
              InkWell(
                child: Container(
                  child: Text(
                    "Edit",
                    style: Styles.headlineStyle2
                        .copyWith(color: Color(0xFF526799)),
                  ),
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(10)),
          Divider(
            color: Colors.grey.shade400,
          ),
          Gap(AppLayout.getHeight(30)),
          Stack(
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
                padding: const EdgeInsets.all(15),
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
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          "You have 150 flights in a year",
                          style: Styles.headlineStyle3
                              .copyWith(color: Colors.white),
                        )
                      ],
                    )
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


// color: Colors.red,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           "Book Tickets",
//                           style: Styles.headlineStyle1,
//                         ),
//                         Gap(AppLayout.getHeight(5)),
//                         Text(
//                           "New-York",
//                           style: Styles.headlineStyle3,
//                         ),
//                         Gap(AppLayout.getHeight(5)),
//                         Container(
//                           height: AppLayout.getHeight(30),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(30),
//                               color: Colors.white),
//                           child: Row(
//                             children: [
//                               Container(
//                                 height: AppLayout.getHeight(30),
//                                 width: AppLayout.getWidth(30),
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(100),
//                                     color: const Color(0xFF526799)),
//                                 child: const Icon(
//                                   Icons.shield,
//                                   size: 20,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               Text(
//                                 "Premium status",
//                                 style: Styles.headlineStyle3
//                                     .copyWith(color: Color(0xFF526799)),
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                     Text(
//                       "Edit",
//                       style: Styles.headlineStyle2
//                           .copyWith(color: Styles.primaryColor),
//                     ),
//                   ],
//                 ),
//               ),