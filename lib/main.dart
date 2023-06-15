import 'package:coffee_shop_finder/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Shop Finder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'PlusJakarta'),
      home: const HomeScreen(),
    );
  }
}
