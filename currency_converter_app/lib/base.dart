import 'dart:ffi' as ffi;

import 'package:flutter/material.dart';

class base extends StatefulWidget {
  const base({super.key});
  @override
  State<base> createState() => _baseState();
}

class _baseState extends State<base> {
  @override
      double result = 0;
    final TextEditingController textEditingController = TextEditingController();
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Currency Converter"),
          backgroundColor: Colors.amberAccent,
        ),
        body: ColoredBox(
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Text(
                result.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.monetization_on_sharp),
                    prefixIconColor: Colors.deepPurpleAccent,
                    hintText: "Enter the value in INR",
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: Colors.black, // Change color based on focus
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: Colors.black, // Change color based on focus
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    
                    
                    setState(() {
                      
                    });

                    result = double.parse(textEditingController.text) * 81;
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.amber,
                    minimumSize: const Size(double.infinity, 50),
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.black,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text("Click Me"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class basee extends StatelessWidget {
  const basee({super.key});
  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Currency Converter"),
          backgroundColor: Colors.amberAccent,
        ),
        body: ColoredBox(
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Column 1",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.monetization_on_sharp),
                    prefixIconColor: Colors.deepPurpleAccent,
                    hintText: "Enter the value in INR",
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: Colors.black, // Change color based on focus
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(
                        color: Colors.black, // Change color based on focus
                        width: 2.0,
                        style: BorderStyle.solid,
                      ),
                    ),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {
                    print(double.parse(textEditingController.text) * 81);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.amber,
                    minimumSize: const Size(double.infinity, 50),
                    textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.black,
                    ),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text("Click Me"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
