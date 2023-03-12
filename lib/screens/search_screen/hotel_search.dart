import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/app_layout.dart';

class HotelSearch extends StatefulWidget {
  const HotelSearch({super.key});

  @override
  State<HotelSearch> createState() => _HotelSearchState();
}

class _HotelSearchState extends State<HotelSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppLayout.getWidth(350),
      height: AppLayout.getHeight(400),
      color: Colors.red,
    );
  }
}
