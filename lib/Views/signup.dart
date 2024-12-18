import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_manager/Views/loginpage.dart';
import 'package:shop_manager/res/commons/colors.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String? selectedIndustry;
  String selectedBusinessType = 'Wholesaller';
  String selectedCountryCode = '+92';
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController businessnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 35),

              Text(
                'Sign Up for Free',
                style: GoogleFonts.poppins(
                  fontSize: 21,
                  color: const Color.fromARGB(255, 69, 90, 100),
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              Text(
                'Industry',
                style: GoogleFonts.poppins(
                  fontSize: 21,
                  color: AppColor.customgrey,
                ),
              ),

              DropdownButton<String>(
                value: selectedIndustry,
                hint: const Text("-- Select --"),
                isExpanded: true,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedIndustry = newValue;
                  });
                },
                items: <String>['Industry 1', 'Industry 2', 'Industry 3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              const SizedBox(height: 16),

              Text(
                'Business type',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: AppColor.customgrey,
                ),
              ),

              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align items to the left
                mainAxisSize:
                    MainAxisSize.min, // Shrinks to fit tightly around children
                children: [
                  // First Row for Retailer, Distributor, Manufacturer
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween, // Equal spacing
                    children: [
                      Row(
                        children: [
                          Radio<String>(
                            value: "Retailer",
                            groupValue: selectedBusinessType,
                            onChanged: (value) {
                              setState(() {
                                selectedBusinessType = value!;
                              });
                            },
                          ),
                          Text(
                            "Retailer",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: AppColor.customgrey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio<String>(
                            value: "Distributor",
                            groupValue: selectedBusinessType,
                            onChanged: (value) {
                              setState(() {
                                selectedBusinessType = value!;
                              });
                            },
                          ),
                          Text(
                            "Distributor",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: AppColor.customgrey,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Radio<String>(
                            value: "Manufacturer",
                            groupValue: selectedBusinessType,
                            onChanged: (value) {
                              setState(() {
                                selectedBusinessType = value!;
                              });
                            },
                          ),
                          Text(
                            "Manufacturer",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: AppColor.customgrey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // Second Row for Wholesaller (No Spacing)
                  Row(
                    children: [
                      Radio<String>(
                        value: "Wholesaller",
                        groupValue: selectedBusinessType,
                        onChanged: (value) {
                          setState(() {
                            selectedBusinessType = value!;
                          });
                        },
                      ),
                      Text(
                        "Wholesaller",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: AppColor.customgrey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Business Name',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: AppColor.customgrey,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        controller: businessnameController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          hintText: "Shop Name",
                          hintStyle: TextStyle(
                            color: AppColor.customgrey,
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.blue, width: 2.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Email Address',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: AppColor.customgrey,
                    ),
                  ),
                  TextField(
                    controller: emailController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "yourname@example.com",
                      hintStyle: TextStyle(
                        color: AppColor.customgrey,
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' Country',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: AppColor.customgrey,
                        ),
                      ),
                      Text(
                        ' Code',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: AppColor.customgrey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mobile',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: AppColor.customgrey,
                        ),
                      ),
                      Text(
                        'Number',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: AppColor.customgrey,
                        ),
                      ),
                    ],
                  )
                ],
              ),

              Row(
                children: [
                  Container(
                    width: 120,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.black,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: selectedCountryCode,
                          isExpanded: true,
                          items: List.generate(
                            999,
                            (index) => DropdownMenuItem(
                              value:
                                  '+${(index + 1).toString().padLeft(2, '0')}',
                              child: Text(
                                  '+${(index + 1).toString().padLeft(2, '0')}'),
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              selectedCountryCode = value!;
                            });
                          },
                          style: const TextStyle(
                            fontSize: 16,
                            color: AppColor.customgrey,
                          ),
                          icon: const Icon(Icons.arrow_drop_down),
                          dropdownColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  // Mobile Number Field
                  Expanded(
                    child: TextField(
                      controller: mobileNumberController,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          // Bottom line color
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.blue, width: 2.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 26),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Password',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: AppColor.customgrey,
                    ),
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              // Log In Button
              ElevatedButton(
                onPressed: () {
                  // Handle login logic here
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.customblue,
                  padding:
                      const EdgeInsets.symmetric(vertical: 17, horizontal: 150),
                    side: BorderSide.none, 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                ),
                child: Text(
                  'SIGN UP',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      color: AppColor.customgrey,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                       Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  const LoginPage()),
                      );
                    },
                    child: Text(
                      " Sign In",
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: AppColor.customblue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
