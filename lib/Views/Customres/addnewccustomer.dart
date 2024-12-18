import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_manager/Views/Customres/customerPage.dart';
import 'package:shop_manager/Views/db/app_db.dart';
import 'package:shop_manager/res/commons/colors.dart';

import 'package:drift/drift.dart' as drift;


class AddNewCustomerScreen extends StatefulWidget {
  final Function(Customer) onSubmit;

  const AddNewCustomerScreen({super.key, required this.onSubmit});

  @override
  State<AddNewCustomerScreen> createState() => _AddNewCustomerScreenState();
}

class _AddNewCustomerScreenState extends State<AddNewCustomerScreen> {
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
    selectedValue = types[0]; 
    _typeController.text = selectedValue; 

        selectedStatus = status[0]; 
    _statusController.text = selectedStatus; 

            selectedBStatus = bstatus[0]; 
    _balanceStatusController.text = selectedBStatus; 

    _db = AppDb();
  }


  @override
  void dispose() {

    _db.close();
    _nameController.dispose();
    _typeController.dispose();
    _statusController.dispose();
    _mobileController.dispose();
    _balanceStatusController.dispose();
    _balanceController.dispose();
    _cityController.dispose();
    _tagController.dispose();
    _dueDateController.dispose();
    _emailController.dispose();
    _notesController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Customer",  style: GoogleFonts.poppins(
                  fontSize: 18,
                  color:  AppColor.black,
                ),),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColor.customblue,
                    width: 4,
                  ),
                ),
                child: const Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                      color: AppColor.customblue, 
                      fontSize: 20, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
               Text(
                'Basic',
                 style: GoogleFonts.poppins(
                  fontSize: 16,
                  color:  AppColor.customgrey,
                  fontWeight: FontWeight.w500
                ),
              ),
              _buildTextField("Name", _nameController, GoogleFonts.poppins(
                  fontSize: 16,
                  color: AppColor.customgrey,
                )),

const SizedBox(height: 7,),

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
const SizedBox(height: 15,),


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
const SizedBox(height: 15,),






Row(
  children: [

    Container(
      width: 120,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: AppColor.black), 
        borderRadius: BorderRadius.circular(4), 
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedCountryCode,
          isExpanded: true,
          items: List.generate(
            999,
            (index) => DropdownMenuItem(
              value: '+${(index + 1).toString().padLeft(2, '0')}',
              child: Text('+${(index + 1).toString().padLeft(2, '0')}'),
            ),
          ),
          onChanged: (value) {
            setState(() {
              selectedCountryCode = value!;
            });
          },
           style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: AppColor.customgrey,
                ),
          icon: const Icon(Icons.arrow_drop_down),
          dropdownColor: AppColor.white,
        ),
      ),
    ),
    const SizedBox(width: 8),
   
    Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.customgrey),
          borderRadius: BorderRadius.circular(4), 
        ),
        child: TextField(
          controller: _mobileController,
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(
            border: InputBorder.none, 
            contentPadding: EdgeInsets.symmetric(vertical: 12.0),
          ),
        ),
      ),
    ),
  ],
),



             // _buildTextField("Type", _typeController, const TextStyle(color: AppColor.dashgrey)),
            //  _buildTextField("Status", _statusController, const TextStyle(color: AppColor.dashgrey)),
             // _buildTextField("Mobile Number", _mobileController, const TextStyle(color: AppColor.dashgrey)),
const SizedBox(height: 15,),
    DropdownButtonFormField<String>(
  value: selectedBStatus,
  hint:  Text(
    'Select Balance Status',
      style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: AppColor.dashgrey,
                ),
  ),
  decoration: const InputDecoration(
    labelText: 'Balance Status',
    labelStyle: TextStyle(color: AppColor.black),
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
  items: bstatus.map((String bstatus) {
    return DropdownMenuItem<String>(
      value: bstatus,
      child: Text(bstatus  , style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: AppColor.customgrey,
                  fontWeight: FontWeight.w400
                ),),
    );
  }).toList(),
  onChanged: (value) {
    setState(() {
      selectedBStatus = value!;
      _balanceStatusController.text = selectedBStatus; 
    });
  },
  validator: (value) {
    if (value == null) {
      return 'Please select a Status';
    }
    return null;
  },
),
const SizedBox(height: 7,),
            //  _buildTextField("Balance Status", _balanceStatusController, const TextStyle(color: AppColor.dashred)),
              _buildTextField("Current Balance", _balanceController, GoogleFonts.poppins(
                  fontSize: 16,
                  color: AppColor.dashred,
                ),),
              _buildTextField("City", _cityController, GoogleFonts.poppins(
                  fontSize: 16,
                  color: AppColor.dashgrey,
                )),
              _buildTextField("Tag", _tagController,  GoogleFonts.poppins(
                  fontSize: 16,
                  color: AppColor.dashgrey,
                )),
              _buildTextField("Email Address", _emailController,  GoogleFonts.poppins(
                  fontSize: 16,
                  color: AppColor.dashgrey,
                )),
              _buildTextField("Notes", _notesController,  GoogleFonts.poppins(
                  fontSize: 16,
                  color: AppColor.dashgrey,
                )),
              _buildDateField(context, "Due Date", _dueDateController),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   TextButton(  style: ButtonStyle(
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
                    onPressed: () => Navigator.pop(context),
                    child:  Text("Close",  style: GoogleFonts.poppins(
                  fontSize: 16,
                  color:  AppColor.white,
                ),),
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
                        widget.onSubmit(newCustomer);
                        Navigator.pop(context);
                      }
                        final dueDate = DateTime.parse(_dueDateController.text);
                         final mob_num = int.tryParse(_mobileController.text);
                    final entity = CustomerCompanion(
                        name: drift.Value(_nameController.text),
                        type: drift.Value(_typeController.text),
                        status: drift.Value(_statusController.text),
                        mobileNumber: drift.Value(mob_num!),
                        currentBalance: drift.Value(_balanceController.text),
                        balanceStatus: drift.Value(_balanceStatusController.text),
                        city: drift.Value(_cityController.text),
                        tag: drift.Value(_tagController.text),
                        email: drift.Value(_emailController.text),
                        notes: drift.Value(_notesController.text),
                        dueDate: drift.Value(dueDate),
                        

                    );


_db.insertCustomer(entity).then((value) => print('$value Customer added Successfully '));

                    },

  style: ElevatedButton.styleFrom(
    backgroundColor: AppColor.customblue, 
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8), 
    ),
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
  ),
                    
                    child: Text("Submit",  style: GoogleFonts.poppins(
                  fontSize: 16,
                  color:  AppColor.white,
                ),),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller, TextStyle style ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        style: const TextStyle(color: AppColor.customgrey),
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
