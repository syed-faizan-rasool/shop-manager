import 'package:flutter/material.dart';
import 'package:shop_manager/Views/dashboardpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Shop Manager',
      debugShowCheckedModeBanner: false,
      home:  DashboardPage(),
    );
  }
}

