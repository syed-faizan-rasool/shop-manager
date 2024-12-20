// custom_fields.dart

import 'package:flutter/material.dart';

class CustomFields {
  String? _selectedBusinessType = "Retailer";

  final Map<String, String> _featureSelection = {
    "Variants": "off",
    "Secondary Units": "off",
    "Salesman Commission": "off",
    "Agent Commission": "off",
    "Negative Stock selling": "on",
    "Barcode / QR code": "off",
    "Tax option": "off",
    "Lend Inventory": "off",
  };

  // TextField widget
  Widget buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }

  // Radio Button widget
  Widget buildRadioButton(String title) {
    return RadioListTile<String>(
      title: Text(title),
      value: title,
      groupValue: _selectedBusinessType,
      onChanged: (String? value) {
        _selectedBusinessType = value;
      },
      dense: true,
    );
  }

  // Feature Row widget
  Widget buildFeatureRow(String featureName) {
    return Row(
      children: [
        Expanded(
          child: Text(
            featureName,
            style: const TextStyle(fontSize: 16),
          ),
        ),
        Row(
          children: [
            Radio<String>(
              value: "on",
              groupValue: _featureSelection[featureName],
              onChanged: (value) {
                _featureSelection[featureName] = value!;
              },
            ),
            const Text("On"),
            Radio<String>(
              value: "off",
              groupValue: _featureSelection[featureName],
              onChanged: (value) {
                _featureSelection[featureName] = value!;
              },
            ),
            const Text("Off"),
          ],
        ),
      ],
    );
  }

  // Radio Option widget
  Widget buildRadioOption(String title, String groupValue, Function(String) onChanged) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 16)),
        const SizedBox(width: 10),
        Row(
          children: [
            Radio<String>(
              value: "on",
              groupValue: groupValue,
              onChanged: (value) => onChanged(value!),
            ),
            const Text("On"),
            Radio<String>(
              value: "off",
              groupValue: groupValue,
              onChanged: (value) => onChanged(value!),
            ),
            const Text("Off"),
          ],
        ),
      ],
    );
  }

  // Text Area widget
  Widget buildTextArea(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        const SizedBox(height: 5),
        Container(
          height: 100,
          child: TextField(
            controller: controller,
            maxLines: 5,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Enter your note here...",
            ),
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
