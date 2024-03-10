import 'package:currency_converter_app/base.dart';
import 'package:currency_converter_app/base2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
//import 'dart:ffi' as ffi;

void main() {
  var app = myMaterialApp();
  runApp(app);
}

class myMaterialApp extends StatelessWidget {
  const myMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home : base(),
    );
  }
}

class myCupertinoApp extends StatelessWidget {
  const myCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: base2(),
    );
  }
}
