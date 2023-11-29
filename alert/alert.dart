import 'package:flutter/material.dart';

// Enumeration to define different types of Bootstrap alerts
enum BootstrapAlertType {
  primary,
  secondary,
  success,
  danger,
  warning,
  info,
}

// Function to generate Bootstrap-style alerts
Widget showBootstrapAlert({
  required String message,
  required BootstrapAlertType alertType,
}) {
  // Function to determine the background color based on the alert type
  Color _getAlertColor() {
    switch (alertType) {
      case BootstrapAlertType.primary:
        return Colors.blue;
      case BootstrapAlertType.secondary:
        return Colors.grey;
      case BootstrapAlertType.success:
        return Colors.green;
      case BootstrapAlertType.danger:
        return Colors.red;
      case BootstrapAlertType.warning:
        return Colors.orange;
      case BootstrapAlertType.info:
        return Colors.lightBlue;
    }
  }

  // Return a Container widget representing the Bootstrap-style alert
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(16.0),
    margin: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      color: _getAlertColor(),
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Text(
      message,
      style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
