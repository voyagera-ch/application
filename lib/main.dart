import 'package:application/screens/travel/travel.dart';
import 'package:application/styles/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: getTheme(),
    home: const MainPage(),
    debugShowCheckedModeBanner: false,
  ));
}
