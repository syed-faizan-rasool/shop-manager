import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_manager/Views/signup.dart';
import 'package:shop_manager/res/commons/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String selectedCountryCode = '+92';
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
           backgroundColor: AppColor.white,

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 25,
              ),

              Text(
                'Sign In - Your Account',
                style: GoogleFonts.poppins(
                  fontSize: 21,
                  color: const Color.fromARGB(255, 69, 90, 100),
                ),
              ),
              const SizedBox(
                height: 35,
              ),

              Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Country',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: AppColor.customgrey,
                        ),
                      ),
                      Text(
                        'Code',
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
              const SizedBox(height: 40),
              // Password Field
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
              const SizedBox(height: 28),
              // Forgot Password Link
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(Icons.lock, size: 15),
                  const SizedBox(width: 7),
                  Text(
                    'Forgot Password?',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: const Color.fromARGB(255, 29, 33, 36),
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
    padding: const EdgeInsets.symmetric(vertical: 17),
    side: BorderSide.none, // Remove the border
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(7),
    ),
  ),
  child: Text(
    'LOG IN',
    style: GoogleFonts.poppins(
      fontSize: 20,
      color: AppColor.white,
    ),
  ),
)
,

              const SizedBox(height: 30),

              Center(
                child: Text(
                  "Don't have an account?",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: AppColor.customgrey,
                  ),
                ),
              ),

              const SizedBox(height: 5),

              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignupPage()),
                      );
                    },
                    child: Container(
                      width: 270,
                      height: 51,
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.zero,
                      ),
                      child: Center(
                        child: Text(
                          'Register / Sign Up',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: AppColor.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
