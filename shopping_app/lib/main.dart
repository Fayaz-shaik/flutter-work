import 'package:flutter/material.dart';
import 'package:shopping_app/home_page.dart';

void main() {
  runApp( MyApp());
}
  // This widget is the root of your application.

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        fontFamily: 'Lato',
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(256,206, 1, 1),
          
        ),
        inputDecorationTheme: const InputDecorationTheme(
          hintStyle: TextStyle(
            //fontFamily: 'Lato',
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          prefixIconColor: Color.fromRGBO(119, 119,119, 1),
        )
      ),
      
      home: MyHomePage(),
    );
  }
}