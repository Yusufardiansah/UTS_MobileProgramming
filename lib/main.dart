import 'package:flutter/material.dart';
import 'login.dart';

void main(List<String> args) {
  runApp(Myapps());
}

class Myapps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    );
  }
}