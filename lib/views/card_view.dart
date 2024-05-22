import 'package:all_of_me/views/id_card_view.dart';
import 'package:all_of_me/views/passport_card_view.dart';
import 'package:flutter/material.dart';

import 'driver_card_view.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IDCard(
              title: 'No. XXXXXX XXXX XXX',
              surname: 'JOHN',
              forename: "WICK",
              country: "SOUTH AFRICA",
              issueDate: "2012-07-23",
              bob: "2002-06-29",
              icon: Icons.credit_card,
            ),
            SizedBox(height: 10),
            DriverCard(
              licenceNumber: "No. XXXXXXXXXXXX",
              country: "ZA",
              gender: 'M',
              restriction: "0",
              valid: "04/05/2023 - 03/05/2028",
              code: "C1",
              vehicleRestrictions: "0",
              issueDate: "22/12/2017",
              icon: Icons.directions_car,
            ),
            SizedBox(height: 10),
            PassCard(
              title: 'No. XXXXXX XXXX XXX',
              surname: 'JOHN',
              forename: "WICK",
              country: "SOUTH AFRICA",
              issueDate: "2012-07-23",
              bob: "2002-06-29",
              icon: Icons.flight,
            ),
          ],
        ),
      ),
    );
  }
}