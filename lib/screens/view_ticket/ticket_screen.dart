import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:ticket_booking/screens/ticket_view.dart';
import 'package:ticket_booking/screens/view_ticket/full_ticket.dart';
import 'package:ticket_booking/utils/app_layout.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/utils/ticket_info.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:ticket_booking/widgets/get_qr.dart';

class TicketScreen extends StatelessWidget {
  //final Map<String, dynamic> ticket;
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);

    Widget brokenLines() {
      return SizedBox(
        height: 50,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: List.generate(
                (constraints.constrainWidth() / 12).floor(),
                (index) => SizedBox(
                  height: 1,
                  width: 5,
                  child: DecoratedBox(
                      decoration: BoxDecoration(color: Colors.grey.shade400)),
                ),
              ),
            );
          },
        ),
      );
    }

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
                                style: Styles.headlineStyle3.copyWith(
                                  color: Colors.black54,
                                ),
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
            Gap(AppLayout.getHeight(30)),
            Column(
              children: [
                Container(
                  child: TicketView(
                    ticket: ticketList[0],
                    isColor: true,
                    isSemicircle: null,
                    isBottomBorderRadius: null,
                    isBottomMargin: false,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getWidth(15),
                      vertical: AppLayout.getHeight(16)),
                  margin: EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: AppLayout.getWidth(17),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                      bottomRight: Radius.circular(AppLayout.getHeight(21)),
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Thiruvikraman J",
                                style: Styles.headlineStyle3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Passenger",
                                style: Styles.headlineStyle4,
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "5221 478566",
                                style: Styles.headlineStyle3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Passport",
                                style: Styles.headlineStyle4,
                              )
                            ],
                          )
                        ],
                      ),
                      brokenLines(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "0055 444 77147",
                                style: Styles.headlineStyle3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Number of E-Ticket",
                                style: Styles.headlineStyle4
                                    .copyWith(color: Colors.grey),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "B2SG28",
                                style: Styles.headlineStyle3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Booking Code",
                                style: Styles.headlineStyle4
                                    .copyWith(color: Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                      brokenLines(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/visa.png",
                                    scale: 11,
                                  ),
                                  Text(
                                    "****2462",
                                    style: Styles.headlineStyle3.copyWith(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Text(
                                "Payment Mode",
                                style: Styles.headlineStyle4
                                    .copyWith(color: Colors.grey),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                "\$249.99",
                                style: Styles.headlineStyle3.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                              Text(
                                "Price",
                                style: Styles.headlineStyle4
                                    .copyWith(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Gap(AppLayout.getHeight(30)),
                      Divider(
                        color: Colors.grey.shade300,
                      ),
                      // BarcodeWidget(
                      //   data:
                      //       "https://github.com/Thiruvikraman1998/ticket_booking",
                      //   barcode: Barcode.code128(),
                      //   drawText: false,
                      // )
                      Gap(AppLayout.getHeight(20)),
                      GetQrCode(),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: AppLayout.getHeight(30), left: AppLayout.getWidth(20)),
              child: Text(
                "Other Tickets",
                style: Styles.headlineStyle2,
              ),
            ),
            Gap(AppLayout.getHeight(30)),
            TicketView(
              ticket: ticketList[1],
              isBottomMargin: false,
            ),
          ],
        ),
      ),
    );
  }
}
