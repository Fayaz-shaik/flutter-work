import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  final List<String> filters = const ["All","Nike","Bata","Addidas"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Shoes\nCollection",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(225, 225, 225, 1)),
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(300),
                        ),
                      ),),
                ),
              ),
            ],
            
          ),
          SizedBox(
            height: 120,
            child: ListView.builder(
              itemCount: filters.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final filter = filters[index];
                return Padding(                 
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Chip(
                    padding: EdgeInsets.all(12),
                    side: BorderSide(
                      color: Color.fromRGBO(245, 247, 249, 0.732),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(900),
                    ),
                    backgroundColor: Color.fromRGBO(37, 64, 91, 0.765),
                    label: Text(filter),
                    labelStyle: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                );
            
              },
            ),
          ),
        ],
      ),
    ));
  }
}
