import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:guzogo_clone/presentation/pages/login_page.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyBpE2R8eLA_FNIL2V4sLCvLo7n0rDDdqAo',
      appId: '1:822679231912:web:a0a6cd2f4c0f1185b3519d',
      messagingSenderId: '822679231912',
      projectId: 'chat-app-cb713',
      authDomain: 'chat-app-cb713.firebaseapp.com',
      databaseURL: 'https://chat-app-cb713-default-rtdb.firebaseio.com',
      storageBucket: 'chat-app-cb713.appspot.com',
      measurementId: 'G-7ZLGR4K0YY',
    ),
  );
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
