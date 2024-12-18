import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shop_manager/res/commons/colors.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {


 File? _imageFile;
  final picker = ImagePicker();

  // Text Editing Controllers
  final TextEditingController _headerNoteController = TextEditingController();
  final TextEditingController _footerNoteController = TextEditingController();

  // Dropdown Selection
  String _selectedTemplate = 'A4';
  final List<String> _templates = ['A4', 'A5', 'Thermal_8mm'];

  // Radio Button States
  String _headerAndLogo = 'on';
  String _urduLabel = 'off';
  String _smsNotification = 'on';

  Future<void> _pickImage() async {
    final pickedFile = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('Pick from Gallery'),
                onTap: () async {
                  final pickedFile = await picker.pickImage(source: ImageSource.gallery);
                  Navigator.of(context).pop();
                  setState(() {
                    if (pickedFile != null) {
                      _imageFile = File(pickedFile.path);
                    }
                  });
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text('Take a Picture'),
                onTap: () async {
                  final pickedFile = await picker.pickImage(source: ImageSource.camera);
                  Navigator.of(context).pop();
                  setState(() {
                    if (pickedFile != null) {
                      _imageFile = File(pickedFile.path);
                    }
                  });
                },
              ),
            ],
          ),
        );
      },
    );
  }





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


  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _shopAddressController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _currencyController = TextEditingController();
  final TextEditingController _gstController = TextEditingController();
  final TextEditingController _vatController = TextEditingController();

  String? _selectedIndustry = "IT";
  String? _selectedBusinessType = "Retailer";

  final List<String> industries = ['Animal Health', 'Appliance', 'Automobile', 'Chemicals', 'Clothes', 'COnstruction', 'Cosmetics', 'Electronics', 'Food', 'Garments', 'General Store', 'Grocery', 'Handicraft', 'Hardware', 'Health', 'Interior', 'IT', 'Jewellary', 'Medical', 'Mobiles', 'Paper', 'Petroleum', 'Shoes', 'Skin Care', 'Sports', 'Stationary', 'Textile', 'Tyres', 'Vegetables', 'Pesticides', 'Others'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Edit Profile"),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 70,
              color:AppColor.white,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Profile",style: TextStyle(fontSize: 21),),
                    Text("Home",style: TextStyle(fontSize: 16,color: AppColor.customblue),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                   Padding(
               padding: const EdgeInsets.all(4.0),
               child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(8.0),
            color: AppColor.white,),
                 padding: const EdgeInsets.all(16.0),
               
                 child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
    
                      const Text(
                        "Basic Information",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                  
                      _buildTextField("Business Name", _businessNameController),
                  
                      _buildTextField("Shop Address", _shopAddressController),
                  
                      _buildTextField("City", _cityController),
                  
                      _buildTextField("State/Province", _stateController),
                  
                      _buildTextField("Country", _countryController),
                  
                      _buildTextField("Email Address", _emailController),
                  
                    
                  
                     DropdownButtonFormField<String>(
                    value: _selectedIndustry,
                    hint: Text(
                      'Select Industry',
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: AppColor.customgrey,
                      ),
                    ),
                    decoration: InputDecoration(
                      labelText: 'Industry',
                      labelStyle: GoogleFonts.poppins(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: AppColor.customgrey, width: 2),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: AppColor.customgrey, width: 1),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: AppColor.customgrey, width: 1),
                      ),
                    ),
                    items: industries.map((String industry) {
                      return DropdownMenuItem<String>(
                        value: industry,
                        child: Text(
                          industry,
                          style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: AppColor.customgrey,
                  fontWeight: FontWeight.w400,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedIndustry = newValue!;
                      });
                    },
                    validator: (value) {
                      if (value == null) {
                        return 'Please select an industry';
                      }
                      return null;
                    },
                  ),
                  
                      const SizedBox(height: 10),
                  
                      // Business Type Radio Buttons
                      const Text("Business Type"),
                      Column(
                        children: [
                          _buildRadioButton("Wholesaller"),
                          _buildRadioButton("Distributor"),
                          _buildRadioButton("Retailer"),
                          _buildRadioButton("Manufacturer"),
                        ],
                      ),
                  
                      // Currency
                      _buildTextField("Currency", _currencyController),
                     ],
                   ),
               ),),
              
            
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(8.0),
            color: AppColor.white,),
                 padding: const EdgeInsets.all(16.0),
               
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
             const Text(
                      "Configure Features",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                 
                const SizedBox(height: 10),
                 

                _buildFeatureRow("Variants"),
                _buildFeatureRow("Secondary Units"),
                _buildFeatureRow("Salesman Commission"),
                _buildFeatureRow("Agent Commission"),
                _buildFeatureRow("Negative Stock selling"),
                _buildFeatureRow("Barcode / QR code"),
                _buildFeatureRow("Tax option"),
                _buildFeatureRow("Lend Inventory"),
                 
                const SizedBox(height: 20),
                 
                _buildTextField("GST (General Sales Tax)", _gstController),
                   
                    const SizedBox(width: 10),
                 
                _buildTextField("VAT (Value Added Tax)", _vatController),
                    
                 
                 
                 
                    ],
                  ),
               ),
             ),
            
            
            
            
            
            
               Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(8.0),
            color: AppColor.white,),
                 padding: const EdgeInsets.all(16.0),
               
                 child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Invoice Setting",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
            
                // Image Upload Section
                GestureDetector(
                  onTap: _pickImage,
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: _imageFile != null
                        ? Image.file(
                            _imageFile!,
                            fit: BoxFit.cover,
                          )
                        : const Center(
                            child: Text(
                              "Drop files here to upload",
                              style: TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ),
                  ),
                ),
                const SizedBox(height: 20),
            
                _buildTextArea("Print Header Note", _headerNoteController),
            

                _buildTextArea("Print Footer Note", _footerNoteController),
            

                const Text(
                  "Print Default Template",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 5),
                DropdownButtonFormField<String>(
                  value: _selectedTemplate,
                  items: _templates
                      .map((template) =>
                          DropdownMenuItem(value: template, child: Text(template)))
                      .toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedTemplate = value!;
                    });
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20),
            
                // Radio Buttons Section
                _buildRadioOption(
                    "Print Header and Logo", _headerAndLogo, (value) {
                  setState(() => _headerAndLogo = value);
                }),
                _buildRadioOption("Print Urdu label", _urduLabel,
                    (value) {
                  setState(() => _urduLabel = value);
                }),
                _buildRadioOption(
                    "Send SMS Notification", _smsNotification, (value) {
                  setState(() => _smsNotification = value);
                }),
              ],
            ),
            ),
             ),
            
            
            
            
                 Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(8.0),
            color: AppColor.white,),
                 padding: const EdgeInsets.all(16.0),
               
                 child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Account Information Section
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Account Information",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Username",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "+92-3152638113",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Account Type",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "prepaid",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
            
                  
            
                const SizedBox(height: 16),
            
                // Buttons Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                      ),
                      onPressed: () {
                        // Cancel button action
                      },
                      child: const Text("Cancel"),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      onPressed: () {
                        // Save and Next button action
                      },
                      child: const Text("Save and Next"),
                    ),
                  ],
                ),
              ],
            ),
             ),
             ),
            
            
            
            
                ],
              ),
            
            ),
             Container(
              height: 70,
              color:AppColor.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child:  Text(
                      "Copyright 2017-2024 Roznamcha App Pvt LTD",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: AppColor.customgrey,
                      ),
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
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

  Widget _buildRadioButton(String title) {
    return RadioListTile<String>(
      title: Text(title),
      value: title,
      groupValue: _selectedBusinessType,
      onChanged: (String? value) {
        setState(() {
          _selectedBusinessType = value;
        });
      },
      dense: true,
    );
  }

  Widget _buildFeatureRow(String featureName) {
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
                setState(() {
                  _featureSelection[featureName] = value!;
                });
              },
            ),
            const Text("On"),
            Radio<String>(
              value: "off",
              groupValue: _featureSelection[featureName],
              onChanged: (value) {
                setState(() {
                  _featureSelection[featureName] = value!;
                });
              },
            ),
            const Text("Off"),
          ],
        ),
      ],
    );
  }


 Widget _buildRadioOption(String title, String groupValue, Function(String) onChanged) {
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

  Widget _buildTextArea(String label, TextEditingController controller) {
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
