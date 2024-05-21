import 'package:flutter/material.dart';

class DriverCard extends StatelessWidget {
  final String licenceNumber;
  final String gender;
  final String restriction;
  final String country;
  final String valid;
  final String code;
  final String vehicleRestrictions;
  final String issueDate;
  final IconData icon;

  const DriverCard({
    Key? key,
    required this.licenceNumber,
    required this.forename,
    required this.icon,
    required this.surname,
    required this.country,
    required this.bob,
    required this.issueDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the screen width
    final double screenWidth = MediaQuery.of(context).size.width;

    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(20),
      child: Container(
        width: screenWidth - 40, // Margin is 20 on each side
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(
              icon,
              size: 50,
              color: Colors.blue,
            ),
            const SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  surname,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Text(
                  forename,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Text(
                  country,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Text(
                  bob,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                Text(
                  issueDate,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
