import 'package:flutter/material.dart';

class BootstrapBadge extends StatelessWidget {
  final String text;
  final String style;

  BootstrapBadge(this.text, this.style);

  @override
  Widget build(BuildContext context) {
    Color badgeColor;

    // Set color based on the style
    switch (style) {
      case 'primary':
        badgeColor = Colors.blue;
        break;
      case 'secondary':
        badgeColor = Colors.grey;
        break;
      case 'success':
        badgeColor = Colors.green;
        break;
      case 'warning':
        badgeColor = Colors.amber;
        break;
      case 'info':
        badgeColor = Colors.cyan;
        break;
      case 'danger':
        badgeColor = Colors.red;
        break;
      // Add more styles as needed
      default:
        badgeColor = Colors.grey;
    }

    // Return the badge widget
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(
        color: text.isEmpty ? Colors.transparent : badgeColor,
        border: text.isEmpty ? Border.all(color: badgeColor, width: 1.0) : null,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: text.isEmpty
          ? Icon(Icons.circle, color: badgeColor, size: 12.0)
          : Text(
              text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
    );
  }
}