import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_manager/Views/addnewccustomer.dart';
import 'package:shop_manager/res/constants/colors.dart';

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

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({Key? key}) : super(key: key);

  @override
  _CustomerScreenState createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  List<Customer> customers = [];

  void addNewCustomer(Customer customer) {
    setState(() {
      customers.add(customer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.arrow_back, color: AppColor.white),
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
                    value: 25,
                    items: const [
                      DropdownMenuItem(value: 25, child: Text("Show 25 entries")),
                      DropdownMenuItem(value: 50, child: Text("Show 50 entries")),
                      DropdownMenuItem(value: 100, child: Text("Show 100 entries")),
                    ],
                    onChanged: (value) {
                      // Handle rows per page change
                    },
                  ),
                  const SizedBox(
                    width: 200,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search",
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Expanded(
                child:ListView.builder(
  itemCount: customers.length,
  itemBuilder: (context, index) {
    final customer = customers[index];
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Name:", style: TextStyle(fontWeight: FontWeight.bold)),
                Text(customer.name),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Type:", style: TextStyle(fontWeight: FontWeight.bold)),
                Text(customer.type),
              ],
            ),
            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Status:", style: TextStyle(fontWeight: FontWeight.bold)),
                Text(customer.status),
              ],
            ),
            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Mobile Number:", style: TextStyle(fontWeight: FontWeight.bold)),
                Text(customer.mobileNumber),
              ],

            ),
            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Balance Status:", style: TextStyle(fontWeight: FontWeight.bold)),
                Text(customer.balanceStatus),
              ],
            ),
            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Current Balance:", style: TextStyle(fontWeight: FontWeight.bold)),
                Text(customer.currentBalance),
              ],
            ),
            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("City:", style: TextStyle(fontWeight: FontWeight.bold)),
                Text(customer.city),
              ],
            ),
            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Tag:", style: TextStyle(fontWeight: FontWeight.bold)),
                Text(customer.tag),
              ],
            ),
            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Due Date:", style: TextStyle(fontWeight: FontWeight.bold)),
                Text(customer.dueDate),
              ],
            ),
            Divider(),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    SizedBox(
      width: 40, // Custom width for Edit button
      child: ElevatedButton(
        onPressed: () {
          // Edit action
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Custom border radius
          ),
        ),
        child: const Text(
          "Edit",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    SizedBox(
      width: 83, // Custom width for Ledger dropdown
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(12), // Custom border radius
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            isExpanded: true,
            icon: const Icon(Icons.arrow_drop_down, color: Colors.white),
            dropdownColor: Colors.teal,
            style: const TextStyle(color: Colors.white),
            items: const [
              DropdownMenuItem(
                value: "View",
                child: Text("View"),
              ),
              DropdownMenuItem(
                value: "Edit",
                child: Text("Edit"),
              ),
            ],
            onChanged: (value) {
              // Handle ledger actions
            },
            hint: Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                "Ledger",
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    ),
    SizedBox(
      width: 40, // Custom width for Call button
      child: ElevatedButton(
        onPressed: () {
          // Call action
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Custom border radius
          ),
        ),
        child: const Text(
          "Call",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    SizedBox(
      width: 40, // Custom width for SMS button
      child: ElevatedButton(
        onPressed: () {
          // SMS action
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Custom border radius
          ),
        ),
        child: const Text(
          "SMS",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    SizedBox(
      width: 70, // Custom width for WhatsApp button
      child: ElevatedButton(
        onPressed: () {
          // WhatsApp action
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal,
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Custom border radius
          ),
        ),
        child: const Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    ),
    SizedBox(
      width: 50, // Custom width for Photos button
      child: ElevatedButton(
        onPressed: () {
          // Photos action
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.purple,
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Custom border radius
          ),
        ),
        child: const Text(
          "Photos",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  ],
)


          ],
        ),
      ),
    );
  },
),

              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  "Copyright 2017-2024 Roznamcha App Pvt LTD",
                  style: TextStyle(fontSize: 12),
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
          backgroundColor: Colors.blue,
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
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}