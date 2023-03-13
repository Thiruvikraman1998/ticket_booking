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
  final Map<String, dynamic> ticket;
  final bool? isColor;
  final bool? isSemicircle;
  final bool? isBottomBorderRadius;
  final bool? isBottomMargin;
  const TicketView(
      {super.key,
      required this.ticket,
      this.isColor,
      this.isSemicircle = true,
      this.isBottomBorderRadius = true,
      this.isBottomMargin = true});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(
        context); // we are creating a class named Applayout and returning the size and width from that class which makes the code more easy to understand.
    return SizedBox(
      width: AppLayout.getWidth(350),
      height: isBottomMargin == true
          ? AppLayout.getHeight(200)
          : AppLayout.getHeight(175),
      child: Container(
        //color: Color(0xFF526799),
        margin: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(16)),
        child: Column(
          children: [
            /* The Below container is for the blue part of the ticket*/
            Container(
              decoration: BoxDecoration(
                color: isColor == null ? const Color(0xFF526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket["from"]["code"],
                        style: Styles.headlineStyle3.copyWith(
                            color:
                                isColor == null ? Colors.white : Colors.black),
                      ),
                      const Spacer(),
                      const RoundContainer(),
                      const AirplaneLines(),
                      const RoundContainer(),
                      const Spacer(),
                      Text(
                        ticket["to"]["code"],
                        style: Styles.headlineStyle3.copyWith(
                            color:
                                isColor == null ? Colors.white : Colors.black),
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ticket["from"]["name"],
                        style: Styles.headlineStyle4.copyWith(
                            color:
                                isColor == null ? Colors.white : Colors.grey),
                      ),
                      //Spacer(),
                      Text(
                        ticket["flying_time"],
                        style: Styles.headlineStyle4.copyWith(
                            color:
                                isColor == null ? Colors.white : Colors.black),
                      ),
                      //Spacer(),
                      Text(
                        ticket["to"]["name"],
                        style: Styles.headlineStyle4.copyWith(
                            color:
                                isColor == null ? Colors.white : Colors.grey),
                      )
                    ],
                  )
                ],
              ),
            ),
            /* The below container is for red pard of the ticket.*/
            Container(
              decoration: BoxDecoration(
                borderRadius: isBottomBorderRadius == true
                    ? BorderRadius.only(
                        bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                        bottomRight: Radius.circular(AppLayout.getHeight(21)),
                      )
                    : null,
                color: isColor == null ? Styles.orangeColor : Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(child: SemiCircle()),
                      Expanded(
                        child: SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                  ((constraints.constrainWidth() / 10).floor()),
                                  (index) => SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: isColor == null
                                              ? Colors.white
                                              : Colors.grey.shade400),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Transform.rotate(
                        angle: 3.14,
                        child: SemiCircle(),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Container(
                    padding: EdgeInsets.only(
                        left: AppLayout.getWidth(21),
                        right: AppLayout.getWidth(21),
                        bottom: AppLayout.getHeight(21)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ticket["date"],
                              style: Styles.headlineStyle3.copyWith(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              "Date",
                              style: Styles.headlineStyle4.copyWith(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.grey),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              ticket["departure_time"],
                              style: Styles.headlineStyle3.copyWith(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              "Departure Time",
                              style: Styles.headlineStyle4.copyWith(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.grey),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              ticket["number"].toString(),
                              style: Styles.headlineStyle3.copyWith(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.black),
                            ),
                            Gap(AppLayout.getHeight(5)),
                            Text(
                              "Seat No.",
                              style: Styles.headlineStyle4.copyWith(
                                  color: isColor == null
                                      ? Colors.white
                                      : Colors.grey),
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
