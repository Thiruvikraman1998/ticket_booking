import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_style.dart';
import 'package:ticket_booking/widgets/airplane_lines.dart';
import 'package:ticket_booking/widgets/round_container.dart';

import '../../utils/app_layout.dart';

class FullTicket extends StatelessWidget {
  const FullTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppLayout.getHeight(400),
      width: AppLayout.getWidth(300),
      // margin: EdgeInsets.symmetric(
      //     horizontal: AppLayout.getWidth(15),
      //     vertical: AppLayout.getHeight(15)),
      padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidth(20),
          vertical: AppLayout.getHeight(25)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getHeight(24)),
          color: Colors.white),
      child: Column(
        children: [
          Row(
            children: const [
              Text("NYC"),
              Spacer(),
              RoundContainer(),
              AirplaneLines(),
              RoundContainer(),
              Spacer(),
              Text("LDN"),
            ],
          )
        ],
      ),
    );
  }
}
