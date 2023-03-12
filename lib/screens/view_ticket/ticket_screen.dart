import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/screens/view_ticket/full_ticket.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/utils/ticket_info.dart';

class TicketScreen extends StatelessWidget {
  //final Map<String, dynamic> ticket;
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SizedBox(
        child: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(50)),
          children: [
            Text(
              "Tickets",
              style: Styles.headlineStyle1,
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(
                      AppLayout.getWidth(3),
                    ),
                    height: AppLayout.getHeight(40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: const Color(0xFFF4F6FD),
                    ),
                    child: Row(
                      children: [
                        GestureDetector(
                          child: Container(
                            width: size.width * 0.44,
                            height: AppLayout.getHeight(40),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                left: Radius.circular(
                                  AppLayout.getWidth(50),
                                ),
                              ),
                              color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "Upcoming",
                                style: Styles.headlineStyle3
                                    .copyWith(color: Colors.black54),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          child: Container(
                            width: size.width * 0.44,
                            height: AppLayout.getHeight(40),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.horizontal(
                                right: Radius.circular(
                                  AppLayout.getWidth(50),
                                ),
                              ),
                              //color: Colors.white,
                            ),
                            child: Center(
                              child: Text(
                                "Previous",
                                style: Styles.headlineStyle3
                                    .copyWith(color: Colors.black54),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Gap(AppLayout.getHeight(20)),
            Container(
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
                isSemicircle: null,
                isBottomBorderRadius: null,
              ),
            )
          ],
        ),
      ),
    );
  }
}
