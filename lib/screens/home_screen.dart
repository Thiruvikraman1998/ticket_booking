import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/search_screen.dart';
import 'package:ticket_booking/screens/ticket_view.dart';

import '../utils/app_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          //SizedBox(height: 20),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const Gap(
                      30), // here we use Gap() instead of sizedbox, bcos for sizedBox we have to manually give height and width property, but the Gap() takes only one propery and compares it with where it has been placed, whether inside the row or column, and leaves space accordng to it.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Good Morning",
                            style: Styles.headlineStyle3,
                          ),
                          const Gap(5),
                          Text(
                            "Book Tickets",
                            style: Styles.headlineStyle1,
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/img_1.png"),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Gap(30),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: Row(
                      children: [
                        Icon(FluentSystemIcons.ic_fluent_search_regular,
                            color: Colors.red[800]),
                        Text(
                          "Search",
                          style: Styles.headlineStyle3,
                        ),
                      ],
                    ),
                  ),
                  const Gap(40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Upcoming Flights", style: Styles.headlineStyle2),
                      InkWell(
                        onTap: () {
                          print("View all tapped");
                        },
                        child: Row(
                          children: [
                            Text("view all",
                                style: Styles.textStyle
                                    .copyWith(color: Styles.primaryColor)),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color: Color(0xFF687daf),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const Gap(15),
          TicketView(),
        ],
      ),
    );
  }
}
