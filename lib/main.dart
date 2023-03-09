import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ticket_booking/screens/bottom_bar.dart';

import 'utils/app_style.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const TicketApp());
}

class TicketApp extends StatelessWidget {
  const TicketApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ticket App Demo",
      theme: ThemeData(
        primaryColor: primary,
      ),
      home: const BottomBar(),
    );
  }
}
