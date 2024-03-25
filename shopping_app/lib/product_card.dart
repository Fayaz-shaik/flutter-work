import 'package:flutter/material.dart';

class productCart extends StatelessWidget {
  final String title;
  //final String company;
  final String price;
  final String image;
  const productCart({
    super.key,
    required this.title,
    required this.price,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: Color.fromARGB(255, 139, 202, 237),
          ),
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "\$$price",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Center(
                child: Image(
                  alignment: Alignment.center,
                  height: 200,
                  image: AssetImage(image),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          
        ),
    );
  }
}
