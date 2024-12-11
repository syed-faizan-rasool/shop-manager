import 'package:flutter/material.dart';
import 'package:shop_manager/Views/customerPage.dart';

class AddNewCustomerScreen extends StatelessWidget {
  final Function(Customer) onSubmit;

  AddNewCustomerScreen({required this.onSubmit});

  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _typeController = TextEditingController();
  final _statusController = TextEditingController();
  final _mobileController = TextEditingController();
  final _balanceStatusController = TextEditingController();
  final _balanceController = TextEditingController();
  final _cityController = TextEditingController();
  final _tagController = TextEditingController();
  final _dueDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Customer"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTextField("Name", _nameController),
              _buildTextField("Type", _typeController),
              _buildTextField("Status", _statusController),
              _buildTextField("Mobile Number", _mobileController),
              _buildTextField("Balance Status", _balanceStatusController),
              _buildTextField("Current Balance", _balanceController),
              _buildTextField("City", _cityController),
              _buildTextField("Tag", _tagController),
              _buildDateField(context, "Due Date", _dueDateController),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Close"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        final newCustomer = Customer(
                          name: _nameController.text,
                          type: _typeController.text,
                          status: _statusController.text,
                          mobileNumber: _mobileController.text,
                          balanceStatus: _balanceStatusController.text,
                          currentBalance: _balanceController.text,
                          city: _cityController.text,
                          tag: _tagController.text,
                          dueDate: _dueDateController.text,
                        );
                        onSubmit(newCustomer);
                        Navigator.pop(context);
                      }
                    },
                    child: const Text("Submit"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
        ),
        validator: (value) => value!.isEmpty ? "$label is required" : null,
      ),
    );
  }

  Widget _buildDateField(BuildContext context, String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        readOnly: true,
        decoration: InputDecoration(
          labelText: label,
          border: const OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: const Icon(Icons.calendar_today),
            onPressed: () async {
              final date = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
              );
              if (date != null) {
                controller.text = date.toIso8601String().split('T').first;
              }
            },
          ),
        ),
        validator: (value) => value!.isEmpty ? "$label is required" : null,
      ),
    );
  }
}
