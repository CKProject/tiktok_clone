import 'package:flutter/material.dart';
import 'package:tiktok/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok',
      theme: ThemeData(
        primaryColor: const Color(0xFFF72B68),
        colorScheme: const ColorScheme.light(
          secondary: Color(0xFF22D5E9),
        ),
      ),
      home: const MainPage(),
    );
  }
}
