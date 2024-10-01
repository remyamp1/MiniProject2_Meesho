import 'package:flutter/material.dart';
import 'package:meesho/Descreption.dart';
import 'package:meesho/cart.dart';
import 'package:meesho/first.dart';
import 'package:meesho/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:FadeTransitionDemo(),
    );
  }
}
    