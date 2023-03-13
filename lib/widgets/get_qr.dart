import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

import '../utils/app_layout.dart';

class GetQrCode extends StatelessWidget {
  const GetQrCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: AppLayout.getHeight(20)),
      child: PrettyQr(
        size: 120,
        data: "https://github.com/Thiruvikraman1998/ticket_booking",
        image: const AssetImage("assets/images/img.png"),
      ),
    );
  }
}
