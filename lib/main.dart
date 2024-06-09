import 'package:flutter/material.dart';
import 'package:instagram/presentation/home/page.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.white),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "SFPro",
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ))),
    home: const HomePage(),
  ));
}
