import 'package:flutter/material.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: const Column(
        children: [
          ListTile(
            leading: Icon(Icons.message),
            title: Text("ID Request Action"),
            trailing: Text("12:00"),
            subtitle: Text("Application of the Loan at Nedbank"),
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Icon(Icons.message),
            title: Text("ID Request Action"),
            trailing: Text("10:00"),
            subtitle: Text("Security check confirmation"),
          )
        ],
      ),
    );
  }
}
