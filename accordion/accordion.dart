import 'package:flutter/material.dart';

class BootstrapAccordion extends StatefulWidget {
  @override
  _BootstrapAccordionState createState() => _BootstrapAccordionState();
}

class _BootstrapAccordionState extends State<BootstrapAccordion> {
  // Data for the accordion panels
  List<Item> _data = generateItems(5);

  // Index of the currently open panel, -1 if none are open
  int _openIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(16.0),
        child: ExpansionPanelList(
          elevation: 1,
          expandedHeaderPadding: EdgeInsets.all(0),
          // Expansion callback to handle panel opening and closing
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              // Close the previously open panel if any
              if (_openIndex != -1 && _openIndex != index) {
                _data[_openIndex].isExpanded = false;
              }
              // Toggle the current panel's state
              _data[index].isExpanded = !isExpanded;
              // Update the currently open index
              _openIndex = isExpanded ? -1 : index;
            });
          },
          children: _data.map<ExpansionPanel>((Item item) {
            return ExpansionPanel(
              headerBuilder: (BuildContext context, bool isExpanded) {
                return ListTile(
                  title: Text(item.headerValue),
                );
              },
              body: ListTile(
                title: Text(item.expandedValue),
              ),
              isExpanded: item.isExpanded,
            );
          }).toList(),
        ),
      ),
    );
  }

  // Function to generate sample data for the accordion panels
  List<Item> generateItems(int numberOfItems) {
    return List<Item>.generate(numberOfItems, (int index) {
      return Item(
        headerValue: 'Panel $index',
        expandedValue: 'This is item number $index',
      );
    });
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}
