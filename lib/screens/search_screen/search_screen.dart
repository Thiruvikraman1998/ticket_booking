import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/bottom_bar.dart';
import 'package:ticket_booking/screens/search_screen/airplane_search.dart';
import 'package:ticket_booking/utils/app_layout.dart';

import '../../utils/app_style.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20)),
        children: [
          Gap(AppLayout.getHeight(50)),
          Container(
            child: Text(
              "What are\n You looking for?",
              style: Styles.headlineStyle1,
            ),
          ),
          Gap(AppLayout.getHeight(20)),
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
                Container(
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
                      "Airplane Tickets",
                      style:
                          Styles.headlineStyle3.copyWith(color: Colors.black54),
                    ),
                  ),
                ),
                Container(
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
                      "Hotels",
                      style:
                          Styles.headlineStyle3.copyWith(color: Colors.black54),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(30)),
          AirplaneSearch(),
        ],
      ),
    );
  }
}

// TextField(
//             decoration: InputDecoration(
//               prefixIcon: Icon(Icons.flight_takeoff),
//               hintText: "Departure",
//             ),
//           ),