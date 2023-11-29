import 'package:flutter/material.dart';

class BootstrapRange extends StatefulWidget {
  @override
  _BootstrapRangeState createState() => _BootstrapRangeState();
}

class _BootstrapRangeState extends State<BootstrapRange> {
  double _singleValue = 50.0;
  RangeValues _rangeValues = RangeValues(20, 80);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Single Value Slider
          Text('Single Value: ${_singleValue.round()}'),
          Slider(
            value: _singleValue,
            onChanged: (double newValue) {
              setState(() {
                _singleValue = newValue;
              });
            },
            min: 0,
            max: 100,
            divisions: 100,
            label: _singleValue.round().toString(),
          ),
          SizedBox(height: 16),

          // Range Slider
          Text('Selected Range: ${_rangeValues.start.round()} - ${_rangeValues.end.round()}'),
          SizedBox(height: 16),
          RangeSlider(
            values: _rangeValues,
            onChanged: (RangeValues newValues) {
              setState(() {
                _rangeValues = newValues;
              });
            },
            min: 0,
            max: 100,
            divisions: 100,
            labels: RangeLabels(
              _rangeValues.start.round().toString(),
              _rangeValues.end.round().toString(),
            ),
          ),
        ],
      ),
    );
  }
}
