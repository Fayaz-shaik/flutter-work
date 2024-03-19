import 'package:flutter/material.dart';
import 'package:weather_app/weather_screen.dart';
void main() {
  runApp(const MyWeatherApp1());
}

class MyWeatherApp1 extends StatelessWidget {
  const MyWeatherApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true),
      home: const WeatherScreen(),
    );
  }
}