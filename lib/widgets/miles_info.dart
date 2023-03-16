import 'package:flutter/material.dart';

import '../utils/app_style.dart';

class MilesInfo extends StatelessWidget {
  List<String> miles;
  List<String> airlinesName;
  MilesInfo({super.key, required this.miles, required this.airlinesName});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              miles.toString(),
              style:
                  Styles.headlineStyle2.copyWith(fontWeight: FontWeight.w400),
            ),
            Text(
              "Miles",
              style: Styles.headlineStyle3
                  .copyWith(color: Colors.grey, fontWeight: FontWeight.w400),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              airlinesName.toString(),
              style:
                  Styles.headlineStyle2.copyWith(fontWeight: FontWeight.w400),
            ),
            Text(
              "Received from",
              style: Styles.headlineStyle3
                  .copyWith(color: Colors.grey, fontWeight: FontWeight.w400),
            ),
          ],
        )
      ],
    );
  }
}
