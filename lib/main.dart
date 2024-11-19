import 'package:application/screens/home.dart';
import 'package:application/styles/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: getTheme(),
    home: const MainPage(),
    debugShowCheckedModeBanner: false,
  ));
}
