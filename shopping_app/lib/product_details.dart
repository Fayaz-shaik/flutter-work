import 'package:flutter/material.dart';

class productDetailsPage extends StatefulWidget {
  // final List<Map<String,Object>> product = prod;
  final Map<String, Object> product;

  const productDetailsPage({
    super.key,
    required this.product,
  });

  @override
  State<productDetailsPage> createState() => _productDetailsPageState();
}

class _productDetailsPageState extends State<productDetailsPage> {
  late int selectedSize = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Details",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              widget.product['title'].toString(),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Spacer(),
          Image.asset(widget.product["imageUrl"].toString()),
          const Spacer(
            flex: 2,
          ),
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromRGBO(245, 247, 249, 1),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Spacer(),
                Text(
                  "\$${widget.product['price']}",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: (widget.product["sizes"] as List<int>).length,
                    itemBuilder: (context, index) {
                      //print(selectedSize);
                      final size =
                          (widget.product['sizes'] as List<int>)[index];
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedSize =
                                  (widget.product['sizes'] as List<int>)[index];
                            });
                          },
                          child: Chip(
                            label: Text(
                              size.toString(),
                            ),
                            backgroundColor: (selectedSize != size)
                                ? (Colors.white)
                                : Colors.yellow,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    print("${selectedSize} is selected.");
                    
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.yellow)),
                  child: const SizedBox(
                    width: double.maxFinite,
                    child: Center(
                      child: Text(
                        "Add To Cart",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(
                  flex: 3,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
