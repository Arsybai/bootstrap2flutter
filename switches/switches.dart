import 'package:flutter/material.dart';

/// A Flutter switch with a simple Bootstrap style.
class BootstrapSwitch extends StatefulWidget {
  @override
  _BootstrapSwitchState createState() => _BootstrapSwitchState();
}

class _BootstrapSwitchState extends State<BootstrapSwitch> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _switchValue ? 'ON' : 'OFF',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 8.0),
            Switch(
              value: _switchValue,
              onChanged: (value) {
                setState(() {
                  _switchValue = value;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
