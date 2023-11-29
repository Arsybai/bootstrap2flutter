import 'package:flutter/material.dart';

// Define a class for the BootstrapCheckbox
class BootstrapCheckbox extends StatefulWidget {
  final String label;

  // Constructor to initialize the label
  const BootstrapCheckbox({required this.label});

  @override
  _BootstrapCheckboxState createState() => _BootstrapCheckboxState();
}

class _BootstrapCheckboxState extends State<BootstrapCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    // Material widget for the border and InkWell for the tap effect
    return Material(
      borderRadius: BorderRadius.circular(4.0),
      child: InkWell(
        onTap: () {
          // Update the state when tapped
          setState(() {
            isChecked = !isChecked;
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: isChecked ? Colors.blue : Colors.grey,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(4.0),
            color: isChecked ? Colors.blue : Colors.white,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Checkbox widget for the actual checkbox
              Checkbox(
                value: isChecked,
                onChanged: (value) {
                  // Update the state when the checkbox value changes
                  setState(() {
                    isChecked = value!;
                  });
                },
                activeColor: Colors.blue,
              ),
              SizedBox(width: 5.0),
              // Text widget for the label
              Text(
                widget.label,
                style: TextStyle(
                  color: isChecked ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
