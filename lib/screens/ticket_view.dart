import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/widgets/airplane_lines.dart';
import 'package:ticket_booking/widgets/lines.dart';
import 'package:ticket_booking/widgets/round_container.dart';
import 'package:ticket_booking/widgets/semi_circle.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(
        context); // we are creating a class named Applayout and returning the size and width from that class which makes the code more easy to understand.
    return SizedBox(
      width: size.width * 0.85,
      height: 200,
      child: Container(
        //color: Color(0xFF526799),
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            /* The Below container is for the blue part of the ticket*/
            Container(
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      const RoundContainer(),
                      const AirplaneLines(),
                      const RoundContainer(),
                      const Spacer(),
                      Text(
                        "LDN",
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New-York",
                        style:
                            Styles.headlineStyle4.copyWith(color: Colors.white),
                      ),
                      //Spacer(),
                      Text(
                        "8H 30M",
                        style:
                            Styles.headlineStyle4.copyWith(color: Colors.white),
                      ),
                      //Spacer(),
                      Text(
                        "London",
                        style:
                            Styles.headlineStyle4.copyWith(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ),
            /* The below container is for red pard of the ticket.*/
            Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
                color: Styles.orangeColor,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const SemiCircle(),
                      const Expanded(child: Lines()),
                      Transform.rotate(
                        angle: 3.14,
                        child: const SemiCircle(),
                      )
                    ],
                  ),
                  const Gap(10),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "1 May",
                              style: Styles.headlineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            const Gap(5),
                            Text(
                              "Date",
                              style: Styles.headlineStyle4
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "08:00 AM",
                              style: Styles.headlineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              "Departure Time",
                              style: Styles.headlineStyle4
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "23",
                              style: Styles.headlineStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            Text(
                              "Seat No.",
                              style: Styles.headlineStyle4
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "1 May",
//                               style: Styles.headlineStyle3
//                                   .copyWith(color: Colors.white),
//                             ),
//                             Text(
//                               "08:00 AM",
//                               style: Styles.headlineStyle3
//                                   .copyWith(color: Colors.white),
//                             ),
//                             Text(
//                               "23",
//                               style: Styles.headlineStyle3
//                                   .copyWith(color: Colors.white),
//                             ),
//                           ],
//                         ),
//                         const Gap(5),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               "Date",
//                               style: Styles.headlineStyle4
//                                   .copyWith(color: Colors.white),
//                             ),
//                             Text(
//                               "Departure Time",
//                               style: Styles.headlineStyle4
//                                   .copyWith(color: Colors.white),
//                             ),
//                             Text(
//                               "Seat",
//                               style: Styles.headlineStyle4
//                                   .copyWith(color: Colors.white),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),