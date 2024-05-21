import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  final String title;
  final String info;
  final IconData icon;

  const InfoCard({
    Key? key,
    required this.title,
    required this.info,
    required this.icon,
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
                  info,
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
