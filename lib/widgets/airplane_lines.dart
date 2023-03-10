import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:ticket_booking/widgets/lines.dart';

class AirplaneLines extends StatelessWidget {
  const AirplaneLines({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          const Lines(),
          Center(
            child: Transform.rotate(
              angle: 1.5,
              child: const Icon(
                Icons.local_airport_rounded,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
