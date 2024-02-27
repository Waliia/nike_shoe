import 'package:flutter/material.dart';
import 'package:nike_shoe/pages/home_page.dart';
import 'package:nike_shoe/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.grey.shade300,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
