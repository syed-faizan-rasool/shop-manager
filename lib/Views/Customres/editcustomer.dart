import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_manager/Views/Customres/customerPage.dart';
import 'package:shop_manager/Views/db/app_db.dart';

import 'package:drift/drift.dart' as drift;
import 'package:shop_manager/res/commons/colors.dart';


class EditCustomerPage extends StatefulWidget {
  final Function(EditCustomer) onUpdate;
  final CustomerData editcustomer; 
  final int Id;

   const EditCustomerPage({
    super.key,
    required this.onUpdate,
    required this.editcustomer, required this.Id, // Make customer data required
  });

  @override
  State<EditCustomerPage> createState() => _EditCustomerPageState();
}

class _EditCustomerPageState extends State<EditCustomerPage> {


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

    final _emailController = TextEditingController();

  final _notesController = TextEditingController();


  String selectedValue = "" ;

  List<String> types = ['Select Type', 'Customer', 'Supplier', 'Employee', 'Agent', 'Other'];

  String selectedStatus = "" ;

  List<String> status = ['Select Status', 'Published', 'Draft', 'Suspended ', 'Delete'];

  String selectedBStatus = "" ;

  List<String> bstatus = ['Select Balance Status', 'Receiveable', 'Payable'];

  String selectedCountryCode = '+92';





  late AppDb _db;


  @override
void initState() {
    super.initState();

_nameController.text = widget.editcustomer.name;
  _typeController.text = widget.editcustomer.type;
  _statusController.text = widget.editcustomer.status;
  _mobileController.text = widget.editcustomer.mobileNumber.toString();
  _balanceStatusController.text = widget.editcustomer.balanceStatus;
  _balanceController.text = widget.editcustomer.currentBalance.toString();
  _cityController.text = widget.editcustomer.city;
  _tagController.text = widget.editcustomer.tag;
  _dueDateController.text = widget.editcustomer.dueDate.toString();
  _emailController.text = widget.editcustomer.email;
  _notesController.text = widget.editcustomer.notes;

    selectedValue = types[0]; 
    _typeController.text = selectedValue; 

        selectedStatus = status[0]; 
    _statusController.text = selectedStatus; 

            selectedBStatus = bstatus[0]; 
    _balanceStatusController.text = selectedBStatus; 

    _db = AppDb();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Contacts'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                const SizedBox(height: 16),
                 TextFormField(
                  controller:_nameController,
                  decoration: const InputDecoration(
                    labelText: 'Contact Name',
                
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                               DropdownButtonFormField<String>(
  value: selectedValue,
  hint:  Text(
    'Select Type',
    style: GoogleFonts.poppins(
                  fontSize: 16,
                  color:  AppColor.customgrey,
                ),
  ),
  decoration: const InputDecoration(
    labelText: 'Type',
    labelStyle: TextStyle(color: Colors.black), 
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColor.customgrey, width: 2), 
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColor.customgrey, width: 1), 
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: AppColor.customgrey, width: 1),
    ),
  ),
  items: types.map((String type) {
    return DropdownMenuItem<String>(
      value: type,
      child: Text(type,   style: GoogleFonts.poppins(  
                  fontSize: 16,
                  color:  AppColor.customgrey,
                  fontWeight: FontWeight.w400,

                ),),
    );
  }).toList(),
  onChanged: (value) {
    setState(() {
      selectedValue = value!;
      _typeController.text = selectedValue; 
    });
  },
  validator: (value) {
    if (value == null) {
      return 'Please select a type';
    }
    return null;
  },
),
                const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColor.customgrey),
                        borderRadius: BorderRadius.circular(4), 
                      ),
                      child: TextFormField(

                        controller: _mobileController,
               
                        keyboardType: TextInputType.phone,
                        decoration: const InputDecoration(
                          labelText: 'Mobile Number',
                          border: InputBorder.none, 
                          contentPadding: EdgeInsets.symmetric(vertical: 12.0),
                        ),
                      ),
                    ),
                const SizedBox(height: 16),
                 TextFormField(
                  controller:_tagController,

                  decoration: const InputDecoration(
                    labelText: 'Tags',
                    
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                 TextFormField(
                  controller:_emailController,

                  decoration: const InputDecoration(
                    labelText: 'Email Address',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                 TextFormField(
                  controller:_cityController,
                  decoration: const InputDecoration(
                    labelText: 'City',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
               TextFormField(
        controller: _dueDateController,
        readOnly: true,
        decoration: InputDecoration(
          labelText: "Due Date",
          hintText: "dd/mm/yyyy",
          hintStyle: const TextStyle(color: AppColor.customgrey),
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
                _dueDateController.text = date.toIso8601String().split('T').first;
              }
            },
          ),
        ),
        
      ),
                const SizedBox(height: 16),
                             DropdownButtonFormField<String>(
  value: selectedStatus,
  hint:  Text(
    'Select Status',
   style: GoogleFonts.poppins(
                  fontSize: 16,
                  color:  AppColor.dashgrey,
                ),
  ),
  decoration: const InputDecoration(
    labelText: 'Status',
    labelStyle: TextStyle(color: AppColor.black), 
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColor.customgrey, width: 2), 
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColor.customgrey, width: 1), 
    ),
    border: OutlineInputBorder(
    ),
  ),
  items: status.map((String status) {
    return DropdownMenuItem<String>(
      value: status,
      child: Text(status  ,  style: GoogleFonts.poppins(
                  fontSize: 16,
                  color:  AppColor.customgrey,
                  fontWeight: FontWeight.w400,
                ),),
    );
  }).toList(),
  onChanged: (value) {
    setState(() {
      selectedStatus = value!;
      _statusController.text = selectedStatus; 
    });
  },
  validator: (value) {
    if (value == null) {
      return 'Please select a Status';
    }
    return null;
  },
),
                const SizedBox(height: 16),
                 TextFormField(
                  controller: _balanceController,
                  decoration: const InputDecoration(
                    labelText: 'Current Balance',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                 TextFormField(
                  controller:_notesController,
                  decoration: const InputDecoration(
                    labelText: 'Notes',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 32),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
    backgroundColor: WidgetStateProperty.all(AppColor.dashred), 
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
    padding: WidgetStateProperty.all(
      const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
    ),
  ),
                      onPressed:  () => Navigator.pop(context),
                      child: Text("Close",  style: GoogleFonts.poppins(
                  fontSize: 16,
                  color:  AppColor.white,
                ),),
                    ),
                    ElevatedButton(
  onPressed: () async {
    try {
    
      if (_mobileController.text.isEmpty) {
        print("Error: Mobile number cannot be empty");
        return;
      }

      final mob_num = int.tryParse(_mobileController.text);
      if (mob_num == null) {
        print("Error: Invalid mobile number format");
        return;
      }


      if (_dueDateController.text.isEmpty) {
        print("Error: Due date cannot be empty");
        return;
      }

      DateTime? dueDate;
      try {
        dueDate = DateTime.parse(_dueDateController.text);
      } catch (e) {
        print("Error: Invalid due date format");
        return;
      }

  
      print("Name: ${_nameController.text}");
      print("Type: ${_typeController.text}");
      print("Status: ${_statusController.text}");
      print("Mobile: ${_mobileController.text}");
      print("Balance Status: ${_balanceStatusController.text}");
      print("Current Balance: ${_balanceController.text}");
      print("City: ${_cityController.text}");
      print("Tag: ${_tagController.text}");
      print("Due Date: $dueDate");
      print("Email: ${_emailController.text}");
      print("Notes: ${_notesController.text}");


      final entity = CustomerCompanion(
        Id: drift.Value(widget.Id),
        name: drift.Value(_nameController.text.isNotEmpty ? _nameController.text : ''),
        type: drift.Value(_typeController.text.isNotEmpty ? _typeController.text : ''),
        status: drift.Value(_statusController.text.isNotEmpty ? _statusController.text : ''),
        mobileNumber: drift.Value(mob_num),
        currentBalance: drift.Value(_balanceController.text.isNotEmpty ? _balanceController.text : ''),
        balanceStatus: drift.Value(_balanceStatusController.text.isNotEmpty ? _balanceStatusController.text : ''),
        city: drift.Value(_cityController.text.isNotEmpty ? _cityController.text : ''),
        tag: drift.Value(_tagController.text.isNotEmpty ? _tagController.text : ''),
        email: drift.Value(_emailController.text.isNotEmpty ? _emailController.text : ''),
        notes: drift.Value(_notesController.text.isNotEmpty ? _notesController.text : ''),
        dueDate: drift.Value(dueDate),
      );

  
      await _db.updateCustomer(entity);
      print("Customer Updated Successfully");

      final neweditedCustomer = EditCustomer(
        name: _nameController.text,
        type: _typeController.text,
        status: _statusController.text,
        mobileNumber: _mobileController.text,
        balanceStatus: _balanceStatusController.text,
        currentBalance: _balanceController.text,
        city: _cityController.text,
        tag: _tagController.text,
        dueDate: _dueDateController.text,
        email: _emailController.text,
        notes: _notesController.text,
      );

      widget.onUpdate(neweditedCustomer);
      Navigator.pop(context);
    } catch (e) {
      print("Error updating customer: $e");
    }
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: AppColor.customblue,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  ),
  child: Text(
    "Submit",
    style: GoogleFonts.poppins(
      fontSize: 16,
      color: AppColor.white,
    ),
  ),
),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

