import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_manager/Views/customerPage.dart';
import 'package:shop_manager/res/components/card.dart';
import 'package:shop_manager/res/constants/colors.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  // Map to keep track of expanded states for dropdowns in the drawer
 final Map<String, bool> _expandedItems = {
  "Manage": false,
  "Transaction": false,
  "Reports": false,
  "History": false,
  "Utilities": false,
  "Setting": false,
};

// Define the sub-items for each section
final Map<String, List<String>> _subItems = {
  "Manage": [
    "Banks and Accounts",
    "Products",
    "Services",
    "All Contacts",
    "Customers",
    "Suppliers",
    "Agents",
    "Employees",
    "Employees Access",
    "Expense Types",
    "Locations/Warehouse",
    "Manufacturing Jobs",
  ],
  "Transaction": [
    "Sale Invoice",
    "WholeSale Invoice",
    "Sales Return",
    "Purchase Invoice",
    "Purchase Return",
    "New Expense",
    "New Payments",
    "Stock Transfer",
    "Manufacturing Jobs",
    "Journal Entry",
  ],
  "Reports": [
    "General Journal",
    "Stock Report",
    "Lended Inventory",
    "Purchase Rate List",
    "Sale Rate List",
    "Sold Items",
    "Profit and Loss",
    "Balance Sheet",
    "Receivable / Payable",
    "Daily Report",
    "Purchase Report by Supplier",
    "Sales Report by Customer",
    "Sales Report",
    "Cash Sales",
    "Credit Sales",
    "Partially Paid Sales",
  ],
  "History": [
    "Sales History",
    "Sales Return History",
    "Sales Quotation History",
    "Purchases History",
    "Purchases Return History",
    "Expense History",
    "Payment History",
    "Stock Transfer",
  ],
  "Utilities": [
    "ToDo List",
    "Print Shipping",
    "Shipping History",
  ],
  "Setting": [
    "Profile",
    "Change Password",
    "Membership",
    "Buy Now",
    "Logout",
  ],
};

Widget _buildDrawer() {
  return Drawer(
    shape:  RoundedRectangleBorder(
      borderRadius : BorderRadius.zero,
    ),
    backgroundColor: AppColor.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 300,
          child: DrawerHeader(
            decoration: const BoxDecoration(
             
              
            ),
            child: Container(
             
              width: double.infinity, 
              child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
            

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,



                          children: [
                             const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/Images/shopmanager_logo.jpg'),
                        ),
            const SizedBox(width: 15),

                            Text(
                                        "ShopManager",
                                        style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          color: AppColor.customblue,
                                          fontWeight: FontWeight.w600,
                                        ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                         CircleAvatar(
  radius: 50,
  backgroundImage: const AssetImage('assets/Images/shopmanager_logo.jpg'),
  backgroundColor: Colors.transparent, // Optional, if you want to make the background transparent
  child: Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(
        color: const Color.fromARGB(255, 222, 230, 235), // Set the border color
        width: 1, // Set the border width
      ),
    ),
  ),
),

                        const SizedBox(height: 10),
                       
                        Text(
            "dummy",
            style: GoogleFonts.poppins(
              fontSize: 16,
             
            ),
                        ),
            const SizedBox(height: 10),
                        const Row(
            mainAxisAlignment: MainAxisAlignment.center, // Centers the icons horizontally
            children: [
              Icon(Icons.home, color: AppColor.customgrey, size: 20),
              SizedBox(width: 12),
              Icon(Icons.settings, color: AppColor.customgrey, size: 20),
              SizedBox(width: 12),
              Icon(Icons.exit_to_app, color: AppColor.customgrey, size: 20),
              
            ],
                        ),
                      
                      ],
              ),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left:16,top:30),
          child: Text(
            "Main Menu",
            style: GoogleFonts.poppins(
              fontSize: 16,
              
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: _expandedItems.keys.map((title) {
              // Pass the list of sub-items dynamically based on the section
              return _buildExpandableDrawerItem(title, _subItems[title] ?? []);
            }).toList(),
          ),
        ),
      ],
    ),
  );
}

Widget _buildExpandableDrawerItem(String title, List<String> subItems) {
  return ExpansionTile(
    backgroundColor: AppColor.white,
    initiallyExpanded: _expandedItems[title] ?? false,
    onExpansionChanged: (isExpanded) {
      setState(() {
        _expandedItems[title] = isExpanded;
      });
    },
    leading: const Icon(Icons.folder, color: AppColor.customgrey),
    title: Text(
      title,
      style: GoogleFonts.poppins(
        fontSize: 16,
        color: AppColor.customgrey,
        fontWeight: FontWeight.w700,
      ),
    ),
    children: subItems.map((item) {
      return ListTile(
        leading: const Icon(Icons.arrow_right, size: 16, color: AppColor.customgrey),
        title: Text(
          item,
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: AppColor.customgrey,
            fontWeight: FontWeight.w700,
          ),
        ),
        onTap: () {
          if (item == "Customers") {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  CustomerScreen()),
            );
          } else {
            // Handle other items as needed
            debugPrint('$title - $item tapped');
          }
        },
      );
    }).toList(),
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.dashgrey,
      appBar: AppBar(
        leading: Builder(
        builder: (BuildContext context) {
          return Padding(
          padding: const EdgeInsets.all(8.0),
           
            child: InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child:  const Icon(Icons.menu,color: AppColor.white,),
                       
            ),
          );
        },
      ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
         
            Text(
              "Dashboard",
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColor.white,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Dashboard",
                          style: GoogleFonts.poppins(
                            fontSize: 21,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Home ",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: AppColor.customblue,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: AppColor.customgrey,
                          size: 15,
                        ),
                        Text(
                          " Dashboard",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: AppColor.customgrey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomCard(
                  "Stock / Products",
                  ["Products List", "New Product", "Stock Report"],
                  [AppColor.dashzinc, AppColor.dashpurple, AppColor.dashzinc],
                ),
                CustomCard(
                  "Sale",
                  ["New Invoice", "Customers List", "Receive Payment"],
                  [AppColor.dashpurple, AppColor.dashzinc, AppColor.dashzinc],
                ),
                CustomCard(
                  "Purchase",
                  ["Create Purchase Invoice", "Suppliers List", "Paid Payment"],
                  [AppColor.dashpurple, AppColor.dashzinc, AppColor.dashzinc],
                ),
                CustomCard(
                  "Expense and Payments",
                  ["New Expense", "Journal Entry", "New Payment"],
                  [AppColor.dashred, AppColor.dashzinc, AppColor.dashzinc],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  child: Container(
                    height: 1,
                    color: const Color.fromARGB(255, 179, 182, 183),
                  ),
                ),
                const SizedBox(height: 5),
                Card(
                  color: AppColor.white,
                  elevation: 4,
                  margin: const EdgeInsets.all(8.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Accounts Payable / Receivable",
                          style: GoogleFonts.poppins(
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Receivable\nRs",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: AppColor.customgrey,
                              ),
                            ),
                            Text(
                              "Total Payable\nRs",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: AppColor.customgrey,
                              ),
                            ),
                            Text(
                              "Net Payable\nRs 0",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: AppColor.customgrey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                CustomCard(
                  "Cash and Bank Accounts",
                  ["Cash\nRs 0", "Create Bank Account"],
                  [AppColor.dashgreen, AppColor.dashzinc],
                ),
              ],
            ),
            Container(
              color: AppColor.white,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Copyright 2017-2024 Roznamcha App Pvt LTD",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: AppColor.customgrey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: _buildDrawer(),
    );
  }
}
