import 'package:e_commerce_app/screens/home/page/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TurzosEcom());
}

class TurzosEcom extends StatelessWidget {
  const TurzosEcom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Turzos E-Commerce",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
