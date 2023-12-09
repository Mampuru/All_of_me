import 'package:all_of_me/views/info_card_view.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InfoCard(
            title: 'ID Info',
            info: 'Your ID info here',
            icon: Icons.credit_card,
          ),
          SizedBox(height: 20),
          InfoCard(
            title: "Driver's Card",
            info: 'Driver\'s card info here',
            icon: Icons.directions_car,
          ),
          SizedBox(height: 20),
          InfoCard(
            title: 'Passport Info',
            info: 'Your passport info here',
            icon: Icons.flight,
          ),
        ],
      ),
    );
  }
}