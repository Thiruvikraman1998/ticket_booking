import 'package:flutter/material.dart';
import 'package:ticket_booking/screens/bottom_bar.dart';

void main() {
  runApp(const TicketApp());
}

class TicketApp extends StatelessWidget {
  const TicketApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BottomBar();
  }
}

