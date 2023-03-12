import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticket_booking/screens/search_screen/hotel_search.dart';

import '../../utils/app_layout.dart';
import '../../utils/app_style.dart';
import 'airplane_search.dart';

class ShiftWidgets extends StatefulWidget {
  const ShiftWidgets({super.key});

  @override
  State<ShiftWidgets> createState() => _ShiftWidgetsState();
}

class _ShiftWidgetsState extends State<ShiftWidgets> {
  @override
  @override
  Widget build(BuildContext context) {
    int _selectIndex = 0;
    final List<Widget> shiftWidgets = <Widget>[
      AirplaneSearch(),
      HotelSearch(),
    ];
    void _onTapItem(int index) {
      _selectIndex = index;
    }

    final size = AppLayout.getsize(context);
    return Container(
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
                        "Airplane Tickets",
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
                        "Hotels",
                        style: Styles.headlineStyle3
                            .copyWith(color: Colors.black54),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(AppLayout.getHeight(30)),
          shiftWidgets[_selectIndex],
        ],
      ),
    );
  }
}
