import 'package:flutter/material.dart';
import 'package:guzogo_clone/presentation/pages/login_page.dart';
import 'package:guzogo_clone/presentation/pages/signup_page.dart';
// Import your LoginPage

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GuzoGo clone',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const LoginPage(), // Replace with the actual first page of your app
    );
  }
}
