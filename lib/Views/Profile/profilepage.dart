import 'dart:io';

import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shop_manager/Views/db/app_db.dart';
import 'package:shop_manager/res/commons/colors.dart';
import 'package:shop_manager/res/commons/fonts.dart';
import 'package:shop_manager/res/components/customfields.dart';


class ProfilePage extends StatefulWidget {

  
  const ProfilePage({Key? key }) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

CustomFields customFields = CustomFields();
 int currentStep = 0;
 File? _profileImage;

 Future<drift.Uint8List?> _convertImageToBytes(File? imageFile) async {
  if (imageFile == null) return null;
  return await imageFile.readAsBytes();
}

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

  bool Variants = false;
  bool SecondaryUnits = false;
  bool SalesmanCommission = false;
  bool AgentCommission = false;
  bool NegativeStockselling = true;
  bool BarcodeQRcode = false;
  bool TaxOption = false;
  bool LendInventory = false;




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




  late AppDb _db;


@override
   void initState() {
    super.initState();
       _db = AppDb();
  _fetchProfileData();
 
  }
void _fetchProfileData() async {
  final profiles = await _db.getProfiles(); // Fetch all profiles from the database
print(profiles);
  if (profiles.isNotEmpty) {
    final profile = profiles.first; // Get the first profile if it exists
    setState(() {
//Id = profile.id;
      _businessNameController.text = profile.businessName ;
      _shopAddressController.text = profile.shopAddress;
      _cityController.text = profile.city ;
      _stateController.text = profile.state ;
      _countryController.text = profile.country ;
      _emailController.text = profile.email ;
      _selectedIndustry = profile.industry ;
      _selectedBusinessType = profile.businessType ;
      _currencyController.text = profile.currency ;
      //_smsNotification = profile.smsNotification as String ?? '';
      _gstController.text = profile.gst ;
      _vatController.text = profile.vat ;
      _headerNoteController.text = profile.headerNote ;
      _footerNoteController.text = profile.footerNote ;
     // _selectedTemplate = profile.template ?? 'A4';
      Variants = profile.variants;
      SecondaryUnits = profile.secondaryUnits;
      SalesmanCommission = profile.salesmanCommission;
      AgentCommission = profile.agentCommission;
      NegativeStockselling = profile.negativeStockSelling;
      BarcodeQRcode = profile.barcode;
      TaxOption = profile.taxOption;
      LendInventory = profile.lendInventory;
    });
  } else {
    // If no profiles exist, you can either show a message or leave fields empty
    print("No profiles found in the database.");
  }
}


List<Step> getSteps() => [
   Step(
    isActive: currentStep >= 0,
//     title: 
    
    
// ),

   title: const SizedBox.shrink(),
  label: Column(
        children: [
        

         Text('Basic Info', style: AppTextStyles.black(fontSize: 12 , ) ),
  
        ],
      ),
    content:  Padding(
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
                  
                      customFields.buildTextField("Business Name", _businessNameController),
                  
                      customFields.buildTextField("Shop Address", _shopAddressController),
                
                      customFields.buildTextField("City", _cityController),
                  
                      customFields.buildTextField("State/Province", _stateController),
                  
                      customFields.buildTextField("Country", _countryController),
                  
                      customFields.buildTextField("Email Address", _emailController),
                  
                    
                  
                     DropdownButtonFormField<String>(
                    value: _selectedIndustry,
                    hint: Text(
                      'Select Industry',
                      style: AppTextStyles.grey(fontSize: 16),
                    ),
                    decoration: InputDecoration(
                      labelText: 'Industry',
                      labelStyle: AppTextStyles.black(  fontSize: 14),
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
                          style: AppTextStyles.grey(  fontSize: 16),
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
                          customFields.buildRadioButton("Wholesaller"),
                          customFields.buildRadioButton("Distributor"),
                          customFields.buildRadioButton("Retailer"),
                          customFields.buildRadioButton("Manufacturer"),
                        ],
                      ),
                  
                      // Currency
                      customFields.buildTextField("Currency", _currencyController),
                     ],
                   ),
               ),),  ),
     Step(
      isActive: currentStep >= 1,
        title: const SizedBox.shrink(),
      label: Column(
        children: [
        
           Text('Config Features', style: GoogleFonts.poppins(color: AppColor.black ,fontSize: 11),),
        ],
      ),
   // title:
    content:  Padding(
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
                 

                customFields.buildFeatureRow("Variants"),
                customFields.buildFeatureRow("Secondary Units"),
                customFields.buildFeatureRow("Salesman Commission"),
                customFields.buildFeatureRow("Agent Commission"),
                customFields.buildFeatureRow("Negative Stock selling"),
                customFields.buildFeatureRow("Barcode / QR code"),
                customFields.buildFeatureRow("Tax option"),
                customFields.buildFeatureRow("Lend Inventory"),
                 
                const SizedBox(height: 20),
                 
                customFields.buildTextField("GST (General Sales Tax)", _gstController),
                   
                    const SizedBox(width: 10),
                 
                customFields.buildTextField("VAT (Value Added Tax)", _vatController),
                    
                 
                 
                 
                    ],
                  ),
               ),
             ), 
     ),
     Step(
      isActive: currentStep >= 2,
      title: const SizedBox.shrink(),
      label: Column(
        children: [
        
           Text('Invoice Setting', style: GoogleFonts.poppins(color: AppColor.black ,fontSize: 11) ,),
        ],
      ),
   // title:
    content: Padding(
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
            
                customFields.buildTextArea("Print Header Note", _headerNoteController),
            

                customFields.buildTextArea("Print Footer Note", _footerNoteController),
            

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
                customFields.buildRadioOption(
                    "Print Header and Logo", _headerAndLogo, (value) {
                  setState(() => _headerAndLogo = value);
                }),
                customFields.buildRadioOption("Print Urdu label", _urduLabel,
                    (value) {
                  setState(() => _urduLabel = value);
                }),
                customFields.buildRadioOption(
                    "Send SMS Notification", _smsNotification, (value) {
                  setState(() => _smsNotification = value);
                }),
              ],
            ),
            ),
             ),
     ),
     Step(
      isActive: currentStep >= 3,
       title: const SizedBox.shrink(),
      label: Column(
        children: [
         
         Text('Account Info', style: GoogleFonts.poppins(color: AppColor.black ,fontSize: 11) ,),
        ],
      ),
    //title: Text('Account\n   Info', style: GoogleFonts.poppins(color: AppColor.black ,fontSize: 13) ,),
    content:Padding(
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.red,
                    //   ),
                    //   onPressed: () {
                    //     // Cancel button action
                    //   },
                    //   child: const Text("Cancel"),
                    // ),
                   ElevatedButton(
   style: ElevatedButton.styleFrom(
                    // Transparent background
minimumSize: Size(100, 40),
                backgroundColor:  AppColor.dashappbar,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
  onPressed: () async {

 print("Name: ${_businessNameController.text}");
      print("Address: ${_shopAddressController.text}");
      print("City: ${_cityController.text}");
      print("state: ${_stateController.text}");
      print("country: ${_countryController.text}");
      print("email: ${_emailController.text}");
      print("City: ${_cityController.text}");
      print("industry: ${_selectedIndustry ?? ""}");
      print("businessType: ${_selectedBusinessType ?? ""}");
      print("currency: ${_currencyController.text}");
      print("smsNotification: ${_smsNotification}");

  try {
    // Create the ProfileCompanion entity with the form data
    final entity = ProfileCompanion(
      businessName: drift.Value(_businessNameController.text),
      shopAddress: drift.Value(_shopAddressController.text),
      city: drift.Value(_cityController.text),
      state: drift.Value(_stateController.text),
      country: drift.Value(_countryController.text),
      email: drift.Value(_emailController.text),
      industry: drift.Value(_selectedIndustry ?? ""),
      businessType: drift.Value(_selectedBusinessType ?? ""),
      currency: drift.Value(_currencyController.text),
      smsNotification: const drift.Value(false), // Default to false
      gst: drift.Value(_gstController.text),
      vat: drift.Value(_vatController.text),
      headerNote: drift.Value(_headerNoteController.text),
      footerNote: drift.Value(_footerNoteController.text),
      variants: const drift.Value(false), 
      secondaryUnits: const drift.Value(false),
      salesmanCommission: const drift.Value(false),
      agentCommission: const drift.Value(false),
      negativeStockSelling: const drift.Value(true),
      barcode: const drift.Value(false),
      taxOption: const drift.Value(false),
      lendInventory: const drift.Value(false),
      printTemplate: drift.Value(_selectedTemplate),
      printHeaderLogo: const drift.Value(false), 
      printUrduLabel: const drift.Value(false),
      username: const drift.Value("default_user"), 
      accountType: const drift.Value("default_account"), 

      
      //image: profileImageBytes != null ? drift.Value(profileImageBytes) : const drift.Value.absent(),
    );

    
    final result = await _db.updateProfile(entity);

   
    if (result) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Profile updated successfully!")),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Failed to update profile")),
      );
    }


    _fetchProfileData();
    setState(() {});
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Error: $e")),
    );
  }
},

              child:  Text("Save" , style: GoogleFonts.poppins(color: AppColor.white ,fontSize: 16),),

)


                  ],
                ),
              ],
            ),
             ),
             ),  ),
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
             onTap:  () => Navigator.pop(context),
              child: const Icon(Icons.arrow_back, color: AppColor.white)),
            const SizedBox(width: 20),
            Text(
              "Customers",
              style: GoogleFonts.poppins(fontSize: 21, color: AppColor.white),
            ),
          ],
        ),
        backgroundColor: AppColor.dashappbar,
        actions: const [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.home, color: AppColor.white, size: 17),
              SizedBox(width: 12),
              Icon(Icons.language, color: AppColor.white, size: 17),
              SizedBox(width: 12),
              Icon(Icons.refresh_outlined, color: AppColor.white, size: 17),
              SizedBox(width: 12),
              Icon(Icons.person, color: AppColor.white, size: 17),
              SizedBox(width: 12),
            ],
          ),
        ],
      ),
      body:
   
         Stepper(
   
        type: StepperType.horizontal,

        steps: getSteps(),
        currentStep: currentStep,
                    onStepTapped: (index) {
              setState(() {
                currentStep = index;
              });
            },
        onStepContinue: () {
          final isLastStep = currentStep == getSteps().length - 1;
          if(isLastStep){
print("Completed");
          }
          else{
          setState(() {
           
              currentStep += 1;
            }
          );
          }
        },
         onStepCancel: () {
          currentStep==0 ? null :
                    setState(() {
           
              currentStep -= 1;
            }
          );
        },
              controlsBuilder: (BuildContext context, ControlsDetails details) {
        return Column(

          children: [
            SizedBox(height: 10,),
                        Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                // Cancel Button
                ElevatedButton(
                  onPressed: details.onStepCancel,
                  style: ElevatedButton.styleFrom(
                        // Transparent background
            minimumSize: Size(170, 50),
              shadowColor: Colors.transparent,    // Removes the button shadow
                elevation: 0,
                    backgroundColor:  currentStep == 0 ?  Colors.grey[200] : AppColor.dashred,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child:  currentStep == 0
                      ? const Text("")
                  : Text("Previous" , style: AppTextStyles.white(  fontSize: 16),),
                ),
                // Continue Button
                ElevatedButton(
                  onPressed: details.onStepContinue,
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(170, 50),
                        shadowColor: Colors.transparent,    // Removes the button shadow
                elevation: 0, 
                    backgroundColor: currentStep == getSteps().length - 1 ?  Colors.grey[200] : AppColor.dashappbar,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: currentStep == getSteps().length - 1
                      ? const Text("")
                  :  Text("Next"  , style: AppTextStyles.white()),
                  
                ),
              ],
            ),
          ],
        );
      },
        ),
     );

  }




}
