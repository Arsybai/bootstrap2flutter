import 'package:flutter/material.dart';
import 'alert.dart'; // Import the alert file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Bootstrap Alerts'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Use the showBootstrapAlert function to display alerts
              showBootstrapAlert(
                message: 'This is a primary alert!',
                alertType: BootstrapAlertType.primary,
              ),
              showBootstrapAlert(
                message: 'This is a secondary alert!',
                alertType: BootstrapAlertType.secondary,
              ),
              showBootstrapAlert(
                message: 'This is a success alert!',
                alertType: BootstrapAlertType.success,
              ),
              showBootstrapAlert(
                message: 'This is a danger alert!',
                alertType: BootstrapAlertType.danger,
              ),
              showBootstrapAlert(
                message: 'This is a warning alert!',
                alertType: BootstrapAlertType.warning,
              ),
              showBootstrapAlert(
                message: 'This is an info alert!',
                alertType: BootstrapAlertType.info,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
