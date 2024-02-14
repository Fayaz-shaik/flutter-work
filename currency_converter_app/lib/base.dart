import 'package:flutter/material.dart';

class base extends StatefulWidget {
  State createState() => _baseState();
}

class _baseState extends State {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Scaffold();
  
  }
}

class basee extends StatelessWidget {
  basee({super.key});
  @override
  Widget build(BuildContext buildContext) {
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
                child: const TextField(
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
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
                  keyboardType: TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () {},
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
