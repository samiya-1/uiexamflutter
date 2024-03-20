import 'package:flutter/material.dart';
import 'package:uiexamflutter/view/HomePage/HomePage.dart';
import 'package:uiexamflutter/view/SingleProduct/ProductDetails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProductDetails(),
    );
  }
}
