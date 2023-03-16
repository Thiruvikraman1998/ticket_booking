import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/hotels.dart';
import 'package:ticket_booking/screens/search_screen/search_screen.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/utils/hotel_info_list.dart';
import 'package:ticket_booking/utils/ticket_info.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';
import 'view_ticket/ticket_screen.dart';

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
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
              child: Column(
                children: [
                  Gap(AppLayout.getHeight(
                      40)), // here we use Gap() instead of sizedbox, bcos for sizedBox we have to manually give height and width property, but the Gap() takes only one propery and compares it with where it has been placed, whether inside the row or column, and leaves space accordng to it.
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
                          Gap(AppLayout.getHeight(5)),
                          Text(
                            "Book Tickets",
                            style: Styles.headlineStyle1,
                          ),
                        ],
                      ),
                      Container(
                        height: AppLayout.getHeight(50),
                        width: AppLayout.getWidth(50),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(12)),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Styles
                                .planeImage, // here we added image url in a class and called it.
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(30)),
                  /* Below is the search bar box */
                  Container(
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        color: Colors.white),
                    padding: EdgeInsets.symmetric(
                        horizontal: AppLayout.getWidth(5),
                        vertical: AppLayout.getHeight(10)),
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
                  Gap(AppLayout.getHeight(40)),
                  /* Upcomming flights section */
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Upcoming Flights", style: Styles.headlineStyle2),
                      InkWell(
                        onTap: () {},
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
          Gap(AppLayout.getHeight(15)),
          /* Ticket view */
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList
                  .map((eachTicket) => TicketView(ticket: eachTicket))
                  .toList(), // we use .toList() bcos its parent Row widget accepts only list.
            ),
          ),
          Gap(AppLayout.getHeight(5)),
          Container(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotels",
                  style: Styles.headlineStyle1,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Text(
                        "view all",
                        style: Styles.textStyle
                            .copyWith(color: Styles.primaryColor),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                        color: Color(0xFF687daf),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Gap(AppLayout.getHeight(15)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: AppLayout.getWidth(20)),
            child: Row(
              children: hotelList
                  .map((hotels) => HotelsView(hotels: hotels))
                  .toList(), // we use .toList() bcos its parent Row widget accepts only list.
            ),
          ),
        ],
      ),
    );
  }
}
