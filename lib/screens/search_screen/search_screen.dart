import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/bottom_bar.dart';
import 'package:ticket_booking/screens/search_screen/airplane_search.dart';
import 'package:ticket_booking/screens/search_screen/offers_container.dart';
import 'package:ticket_booking/screens/search_screen/shift_widgets.dart';
import 'package:ticket_booking/utils/app_layout.dart';

import '../../utils/app_style.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getsize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getWidth(30)),
        children: [
          Gap(AppLayout.getHeight(60)),
          Container(
            child: Text(
              "What are\n You looking for?",
              style: Styles.headlineStyle1,
            ),
          ),
          Gap(AppLayout.getHeight(20)),
          ShiftWidgets(),
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Offers for you",
                style: Styles.headlineStyle1,
              ),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Text(
                      "View all",
                      style: Styles.headlineStyle4,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xFF687daf),
                      size: 15,
                    ),
                  ],
                ),
              )
            ],
          ),
          Gap(AppLayout.getHeight(30)),
          OffersView(),
        ],
      ),
    );
  }
}
