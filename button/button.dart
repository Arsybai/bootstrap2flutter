import 'package:flutter/material.dart';

class BootstrapButton extends StatelessWidget {
  // Properties
  final String text;
  final String type;
  final Function()? onPressed;

  // Constructor
  BootstrapButton(this.text, this.type, this.onPressed);

  @override
  Widget build(BuildContext context) {
    // Determine button color based on type
    Color buttonColor;
    switch (type) {
      case 'primary':
        buttonColor = Colors.blue;
        break;
      case 'secondary':
        buttonColor = Colors.grey;
        break;
      case 'success':
        buttonColor = Colors.green;
        break;
      case 'danger':
        buttonColor = Colors.red;
        break;
      case 'warning':
        buttonColor = Colors.orange;
        break;
      case 'info':
        buttonColor = Colors.cyan;
        break;
      case 'light':
        buttonColor = Colors.grey[200]!;
        break;
      case 'dark':
        buttonColor = Colors.black;
        break;
      case 'link':
        // For a link button, you can customize text color and remove the background color
        return TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
        );
      default:
        buttonColor = Colors.blue;
    }

    // Return the styled button
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
      ),
      child: Text(text),
    );
  }
}
