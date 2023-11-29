import 'package:flutter/material.dart';

class BootstrapForm extends StatefulWidget {
  @override
  _BootstrapFormState createState() => _BootstrapFormState();
}

class _BootstrapFormState extends State<BootstrapForm> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  bool _subscribeToNewsletter = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            // Name Input
            _buildTextInput(
              label: 'Name',
              controller: _nameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),

            // Age Input
            _buildTextInput(
              label: 'Age',
              controller: _ageController,
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your age';
                }
                // You can add more sophisticated age validation if needed
                return null;
              },
            ),
            SizedBox(height: 16.0),

            // Checkbox for Newsletter Subscription
            _buildCheckbox(
              label: 'Subscribe to Newsletter',
              value: _subscribeToNewsletter,
              onChanged: (value) {
                setState(() {
                  _subscribeToNewsletter = value ?? false;
                });
              },
            ),
            SizedBox(height: 16.0),

            // Submit Button
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  // Function to create a text input
  Widget _buildTextInput({
    required String label,
    required TextEditingController controller,
    TextInputType keyboardType = TextInputType.text,
    required String? Function(String?) validator,
  }) {
    return Container(
      decoration: _inputDecoration(),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
          border: InputBorder.none,
        ),
        validator: validator,
      ),
    );
  }

  // Function to create a checkbox
  Widget _buildCheckbox({
    required String label,
    required bool value,
    required void Function(bool?) onChanged,
  }) {
    return Container(
      decoration: _inputDecoration(),
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
          ),
          Text(label),
        ],
      ),
    );
  }

  // Function to create the submit button
  Widget _buildSubmitButton() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // Form is valid, perform desired actions
          // For example, you can send data to a server or navigate to another screen
          // Here, we're just printing the values for demonstration purposes
          print('Name: ${_nameController.text}');
          print('Age: ${_ageController.text}');
          print('Subscribe to Newsletter: $_subscribeToNewsletter');
        }
      },
      child: Text('Submit'),
    );
  }

  // Function to define the input decoration
  BoxDecoration _inputDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(4.0),
      border: Border.all(
        color: Colors.grey,
        width: 1.0,
      ),
    );
  }
}
