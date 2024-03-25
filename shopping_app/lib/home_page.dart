import 'package:flutter/material.dart';
import 'package:shopping_app/global_variables.dart';
import 'package:shopping_app/product_card.dart';
import 'package:shopping_app/product_details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> filters = const ["All", "Nike", "Bata", "Addidas"];

  late String selectedFilter;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Shoes\nCollection",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              const Expanded(
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
                    ),
                  ),
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
                  child: GestureDetector(
                    onTap: () {
                      //print("object");

                      setState(() {
                        selectedFilter = filters[index];
                      });
                      //print(selectedFilter);
                    },
                    child: Chip(
                      padding: const EdgeInsets.all(12),
                      side: const BorderSide(
                        color: Color.fromRGBO(245, 247, 249, 0.732),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(900),
                      ),
                      backgroundColor: (filter != selectedFilter)
                          ? const Color.fromRGBO(147, 182, 216, 0.765)
                          : Colors.yellow,
                      label: Text(filter),
                      labelStyle: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                // if (selectedFilter == "All") {
                //   return productCart(
                //     title: products[index]["title"].toString(),
                //     price: products[index]['price'].toString(),
                //     image: products[index]['imageUrl'].toString(),
                //   );
                // } else if (selectedFilter == "Nike") {
                //   if (products[index]['company'] == "Nike") {
                //     return productCart(
                //       title: products[index]["title"].toString(),
                //       price: products[index]['price'].toString(),
                //       image: products[index]['imageUrl'].toString(),
                //     );
                //   }
                // } else if (selectedFilter == "Bata") {
                //   if (products[index]['company'] == "Bata") {
                //     return productCart(
                //       title: products[index]["title"].toString(),
                //       price: products[index]['price'].toString(),
                //       image: products[index]['imageUrl'].toString(),
                //     );
                //   }
                // } else if (selectedFilter == "Addidas") {
                //   if (products[index]['company'] == "Addidas") {
                //     return productCart(
                //       title: products[index]["title"].toString(),
                //       price: products[index]['price'].toString(),
                //       image: products[index]['imageUrl'].toString(),
                //     );
                //   }
                // }
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return productDetailsPage(product: product);
                    }
                    ),
                    );
                  },
                  child: productCart(
                      title: products[index]["title"].toString(),
                      price: products[index]['price'].toString(),
                      image: products[index]['imageUrl'].toString(),
                    ),
                );
              }
            ),
          )
        ],
      ),
    ));
  }
}
