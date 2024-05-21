import 'package:all_of_me/views/id_card_view.dart';
import 'package:flutter/material.dart';

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
              title: 'I.D No XXXXXX XXXX XXX',
              surname: 'MAMPURU',
              forename: "NTWAMPE",
              country: "SOUTH AFRICA",
              issueDate: "2012-07-23",
              bob: "2002-06-29",
              icon: Icons.credit_card,
            ),
            // SizedBox(height: 20),
            // InfoCard(
            //   title: "Driver's Card",
            //   info: 'Driver\'s card info here',
            //   icon: Icons.directions_car,
            // ),
            // SizedBox(height: 20),
            // InfoCard(
            //   title: 'Passport Info',
            //   info: 'Your passport info here',
            //   icon: Icons.flight,
            // ),
          ],
        ),
      ),
    );
  }
}