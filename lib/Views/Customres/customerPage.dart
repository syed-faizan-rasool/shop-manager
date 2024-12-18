import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_manager/Views/Customres/addnewccustomer.dart';
import 'package:shop_manager/Views/Customres/editcustomer.dart';
import 'package:shop_manager/Views/db/app_db.dart';
import 'package:shop_manager/res/commons/colors.dart';
import 'package:intl/intl.dart';

class Customer {
  final String name;
  final String type;
  final String status;
  final String mobileNumber;
  final String balanceStatus;
  final String currentBalance;
  final String city;
  final String tag;
  final String dueDate;

  Customer({
    required this.name,
    required this.type,
    required this.status,
    required this.mobileNumber,
    required this.balanceStatus,
    required this.currentBalance,
    required this.city,
    required this.tag,
    required this.dueDate,
  });
}

class EditCustomer {
  final String name;
  final String type;
  final String status;
  final String mobileNumber;
  final String balanceStatus;
  final String currentBalance;
  final String city;
  final String tag;
  final String dueDate;
  final String email;
  final String notes;

  EditCustomer({
    required this.name,
    required this.type,
    required this.status,
    required this.mobileNumber,
    required this.balanceStatus,
    required this.currentBalance,
    required this.city,
    required this.tag,
    required this.dueDate,
    required this.email,
    required this.notes,
  });
}

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  List<Customer> customers = [];
  List<EditCustomer> editcustomers = [];


  void addNewCustomer(Customer customer) {
    setState(() {
      customers.add(customer);
    });
  }



  void neweditedCustomer(EditCustomer editcustomer) {
    setState(() {
      editcustomers.add(editcustomer);
    });
  }


    int selectedValue = 25;
    
    late AppDb _db;
    @override
    void initState() {
      super.initState();
      _db = AppDb();
    }
    
    
    
     // Initial value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.arrow_back, color: AppColor.white),
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
      body: Container(
        color: AppColor.dashgrey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                DropdownButton<int>(
          value: selectedValue,
          items: [
            DropdownMenuItem(value: 25, child: Text("Show 25 entries",style: GoogleFonts.poppins(
            fontSize: 16,
            color: AppColor.customgrey,
            fontWeight: FontWeight.w700,
          ),)),
            DropdownMenuItem(value: 50, child: Text("Show 50 entries",style: GoogleFonts.poppins(
            fontSize: 16,
            color: AppColor.customgrey,
            fontWeight: FontWeight.w700,
          ),)),
           DropdownMenuItem(value: 100, child: Text("Show 100 entries",style: GoogleFonts.poppins(
            fontSize: 16,
            color: AppColor.customgrey,
            fontWeight: FontWeight.w700,
          ),)),
          ],
          onChanged: (value) {
            setState(() {
              selectedValue = value!; // Update selected value
            });
          },
        ),
                  SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: "Search",
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        prefixIcon: Icon(Icons.search),
                      ),
                         style: GoogleFonts.poppins(
              fontSize: 14,
              color: Colors.grey, // Replace with AppColor.customgrey if defined
              fontWeight: FontWeight.w700,
            ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),





 Expanded(
                child: FutureBuilder<List<CustomerData>>(
  future: _db.getCustomers(),
  builder: (context, snapshot) {
    final List<CustomerData>? customers = snapshot.data;
    if (snapshot.connectionState != ConnectionState.done) {
      return const Center(child: CircularProgressIndicator());
    }
    if (snapshot.hasError) {
      return Center(child: Text('Error: ${snapshot.error}'));
    }
    
    // Add a return for the null case
    if (customers == null || customers.isEmpty) {
      return const Center(child: Text("No customers available"));
    }

                 
                      return ListView.builder(  
                        itemCount: customers.length,
                        itemBuilder: (context, index) {
                          final customer = customers[index];
                      return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal:8.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text("Name:",  style: GoogleFonts.poppins(
            fontSize: 14,
            color: AppColor.customgrey,
            fontWeight: FontWeight.w700,
          ),),
                Text(customer.name,style: const TextStyle(color: AppColor.customblue),),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text("Current Balance:",  style: GoogleFonts.poppins(
            fontSize: 14,
            color: AppColor.customgrey,
            fontWeight: FontWeight.w700,
          ),),
                Text(customer.currentBalance,style: const TextStyle(color: AppColor.customred),),
              ],
            ),
            const Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text("Balance Status:", style: GoogleFonts.poppins(
            fontSize: 14,
            color: AppColor.customgrey,
            fontWeight: FontWeight.w700,
          ),),
                Text(customer.balanceStatus,style: const TextStyle(color: AppColor.customred),),
              ],
            ),
            const Divider(),

           

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text("City:", style: GoogleFonts.poppins(
            fontSize: 14,
            color: AppColor.customgrey,
            fontWeight: FontWeight.w700,
          ),),
                Text(customer.city),
              ],
            ),
            const Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text("Tag:",  style: GoogleFonts.poppins(
            fontSize: 14,
            color: AppColor.customgrey,
            fontWeight: FontWeight.w700,
          ),),
                Text(customer.tag),
              ],
            ),
            const Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 Text("Due Date:",  style: GoogleFonts.poppins(
            fontSize: 14,
            color: AppColor.customgrey,
            fontWeight: FontWeight.w700,
          ),),
               Text(DateFormat('yyyy-MM-dd').format(customer.dueDate)),

              ],
            ),
            const Divider(),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    SizedBox(
      width: 40,
      height: 40, 
      
      child: ElevatedButton(
  onPressed: () {
    
    final selectedCustomer = customer;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.9, 
            child: EditCustomerPage(
              editcustomer: selectedCustomer,
              onUpdate: (updatedCustomer) {
              
                setState(() {
     
      int index = customers.indexOf(selectedCustomer);
      if (index != -1) {
        customers[index] = updatedCustomer as CustomerData;
      }
    });
                Navigator.pop(context); 
              },
            ),
          ),
        );
      },
    );
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: AppColor.customorange,
    padding: const EdgeInsets.symmetric(vertical: 12.0),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(5), // Custom border radius
    ),
  ),
  child: Text(
    "Edit",
    style: GoogleFonts.poppins(
      fontSize: 12,
      color: AppColor.white,
      fontWeight: FontWeight.w700,
    ),
    textAlign: TextAlign.center,
  ),
),

    ),
    const SizedBox(width: 2,),
    SizedBox(
      width: 83,
      height: 40, // Custom width for Ledger dropdown
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.dashzinc,
          borderRadius: BorderRadius.circular(5), // Custom border radius
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            isExpanded: true,
            icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
            dropdownColor: AppColor.white,
            style: const TextStyle(color: Colors.white),
            items:  [
              DropdownMenuItem(
                value: "Detailed",
                
                child: Text("Detailed",
                 style: GoogleFonts.poppins(
            fontSize: 14,
            color: AppColor.customgrey,
            fontWeight: FontWeight.w700,
          ),),
              ),
             
            ],
            onChanged: (value) {
            
            },
            hint:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Ledger",
                 style: GoogleFonts.poppins(
            fontSize: 12,
            color: AppColor.white,
            fontWeight: FontWeight.w700,
          ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    ),
    const SizedBox(width: 2,),

    SizedBox(
      width: 40, 
      height: 40, 
    
      child: ElevatedButton(
        onPressed: () {
        
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5), 
          ),
        ),
        child:  Text(
          "Call",
           style: GoogleFonts.poppins(
            fontSize: 12,
            color: AppColor.white,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    const SizedBox(width: 2,),

    SizedBox(
      width: 40, 
      height: 40, 
     
      child: ElevatedButton(
        onPressed: () {
       
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5), // Custom border radius
          ),
        ),
        child:  Text(
          "SMS",
         style: GoogleFonts.poppins(
            fontSize: 12,
            color: AppColor.white,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    const SizedBox(width: 2,),

    SizedBox(
      width: 70,
      height: 40, 
      
      child: ElevatedButton(
        onPressed: () {
       
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.dashzinc,
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5), 
          ),
        ),
        child:  Text(
          "WhatsApp",
         style: GoogleFonts.poppins(
            fontSize: 12,
            color: AppColor.white,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    const SizedBox(width: 2,),

    SizedBox(
      width: 50, 
      height: 40, 
   
      child: ElevatedButton(
        onPressed: () {
       
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5), // Custom border radius
          ),
        ),
        child: Text(
          "Photos",
       style: GoogleFonts.poppins(
            fontSize: 12,
            color: AppColor.white,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  ],
),

SizedBox(
  height: 15,
),

InkWell(
  onTap: () {

  },
  child: Center(
    child: Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
  
        color:AppColor.dashappbar
  
      ),
            child:Icon(Icons.delete_forever_outlined,color: AppColor.dashred,),
      ),
  ),
),


          ],
        ),
      ),
    );
                        });
                    }
                  
                  
                ),
              ),






              
          
               Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Copyright 2017-2024 Roznamcha App Pvt LTD",
                  style: GoogleFonts.poppins(
            fontSize: 12,
            color: AppColor.customgrey,
          
          ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: SizedBox(
        width: 100,
        child: FloatingActionButton(
          backgroundColor: AppColor.dashappbar,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: AddNewCustomerScreen(
                    onSubmit: addNewCustomer,
                  ),
                );
              },
            );
          },
          child: Text(
            "Add New",
            style: GoogleFonts.poppins(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}