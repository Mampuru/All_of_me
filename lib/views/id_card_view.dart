import 'package:flutter/material.dart';

import '../constants.dart';

class IDCard extends StatelessWidget {
  final String title;
  final String forename;
  final String surname;
  final String country;
  final String bob;
  final String issueDate;
  final IconData icon;

  const IDCard({
    Key? key,
    required this.title,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Icon(
                icon,
                size: 30,
                color: Colors.blue,
              ),
              const SizedBox(width: 10,),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Surname: ",
                  style: TextStyle(fontSize: plainTextSZ,fontWeight: FontWeight.bold),
                ),
                Text(
                  surname,
                  style: TextStyle(fontSize: plainTextSZ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Forenames: ",
                  style: TextStyle(fontSize: plainTextSZ,fontWeight: FontWeight.bold),
                ),
                Text(
                  forename,
                  style: TextStyle(fontSize: plainTextSZ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Country of Birth: ",
                  style: TextStyle(fontSize: plainTextSZ,fontWeight: FontWeight.bold),
                ),
                Text(
                  country,
                  style: TextStyle(fontSize: plainTextSZ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "DoB: ",
                  style: TextStyle(fontSize: plainTextSZ,fontWeight: FontWeight.bold),
                ),
                Text(
                  bob,
                  style: TextStyle(fontSize: plainTextSZ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Text(
                  "Issued: ",
                  style: TextStyle(fontSize: plainTextSZ,fontWeight: FontWeight.bold),
                ),
                Text(
                  issueDate,
                  style: TextStyle(fontSize: plainTextSZ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
