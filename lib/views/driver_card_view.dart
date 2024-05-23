import 'package:flutter/material.dart';

import '../constants.dart';

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
    required this.restriction,
    required this.icon,
    required this.valid,
    required this.country,
    required this.vehicleRestrictions,
    required this.issueDate,
    required this.gender,
    required this.code,
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
                licenceNumber,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],),
            const SizedBox(height: 10),
            Row(children: [
              const Text(
                "Valid: ",
                style: TextStyle(fontSize: plainTextSZ,fontWeight: FontWeight.bold),
              ),
              Text(
                valid,
                style: const TextStyle(fontSize: plainTextSZ),
              ),
            ],),
            const SizedBox(height: 10),
            Row(
              children: [
              const Text(
                "Restriction: ",
                style: TextStyle(fontSize: plainTextSZ,fontWeight: FontWeight.bold),
              ),
              Text(
                restriction,
                style: const TextStyle(fontSize: plainTextSZ),
              ),
              const SizedBox(width: 20,),
              const Text(
                "Gender: ",
                style: TextStyle(fontSize: plainTextSZ,fontWeight: FontWeight.bold),
              ),
              Text(
                gender,
                style: const TextStyle(fontSize: plainTextSZ),
              ),
            ],),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  "Issued: ",
                  style: TextStyle(fontSize: plainTextSZ,fontWeight: FontWeight.bold),
                ),
                Text(
                  country,
                  style: const TextStyle(fontSize: plainTextSZ),
                ),
                const SizedBox(width: 20,),
                const Text(
                  "Code: ",
                  style: TextStyle(fontSize: plainTextSZ,fontWeight: FontWeight.bold),
                ),
                Text(
                  code,
                  style: const TextStyle(fontSize: plainTextSZ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  "Vehicle Restriction: ",
                  style: TextStyle(fontSize: plainTextSZ,fontWeight: FontWeight.bold),
                ),
                Text(
                  vehicleRestrictions,
                  style: const TextStyle(fontSize: plainTextSZ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Text(
                  "First Issue: ",
                  style: TextStyle(fontSize: plainTextSZ,fontWeight: FontWeight.bold),
                ),
                Text(
                  issueDate,
                  style: const TextStyle(fontSize: plainTextSZ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
