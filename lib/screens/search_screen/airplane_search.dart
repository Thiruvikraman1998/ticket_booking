import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/utils/app_style.dart';

import '../../utils/app_layout.dart';

class AirplaneSearch extends StatefulWidget {
  const AirplaneSearch({super.key});

  @override
  State<AirplaneSearch> createState() => _AirplaneSearchState();
}

class _AirplaneSearchState extends State<AirplaneSearch> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.flight_takeoff),
                border: InputBorder.none,
                prefixIconColor: Colors.grey,
                hintText: "Departure",
                hintStyle: Styles.headlineStyle3,
              ),
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.flight_land),
                border: InputBorder.none,
                prefixIconColor: Colors.grey,
                hintText: "Arrival",
                hintStyle: Styles.headlineStyle3,
              ),
            ),
          ),
          Gap(AppLayout.getHeight(30)),
          ElevatedButton(
            onPressed: () {
              print("Tickets fund");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF314CD3),
              fixedSize: Size(AppLayout.getWidth(400), AppLayout.getHeight(55)),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            child: Text(
              "Find Tickets",
              style: Styles.headlineStyle3.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
