import 'package:flutter/cupertino.dart';
//import 'package:flutter/material.dart';


class base2 extends StatefulWidget {
  const base2({super.key});

  @override
  State<base2> createState() => _base2State();
}

class _base2State extends State<base2> {
  @override
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  Widget build(BuildContext context) {
    // final border = OutlineInputBorder(
    //   borderSide : const BorderSide(
    //     width : 2.0,
    //     style : BorderStyle.solid,
    //   ),
    //   borderRadius : BorderRadius.circular(5);
    // )

    return CupertinoApp(
      home: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.activeGreen,
        navigationBar: const CupertinoNavigationBar(
          middle: Text("Currency Converter"),
          backgroundColor: CupertinoColors.systemRed,
        ),
        child: ColoredBox(
          color: CupertinoColors.systemGrey2,
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
               Text(
                result.toString(),
                style: const TextStyle(
                  color: CupertinoColors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: CupertinoColors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  decoration: BoxDecoration(
                    border : Border.all(),
                    borderRadius: BorderRadius.circular(5),
                    
                  ),
                  placeholder: "Enter the value in INR",
                  placeholderStyle: const TextStyle(
                      color: CupertinoColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                  ),
                  prefix : const Icon(CupertinoIcons.money_dollar) ,
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  // InputDecoration(
                  //   filled: true,
                  //   fillColor: Colors.white,
                  //   prefixIcon: Icon(Icons.monetization_on_sharp),
                  //   prefixIconColor: Colors.deepPurpleAccent,
                  //   hintText: "Enter the value in INR",
                  //   hintStyle: TextStyle(
                  //     color: Colors.black,
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 20,
                  //   ),
                    // focusedBorder: OutlineInputBorder(
                    //   borderRadius: BorderRadius.all(Radius.circular(10)),
                    //   borderSide: BorderSide(
                    //     color: Colors.black, // Change color based on focus
                    //     width: 2.0,
                    //     style: BorderStyle.solid,
                    //   ),
                    // ),
                  //   enabledBorder: OutlineInputBorder(
                  //     borderRadius: BorderRadius.all(Radius.circular(10)),
                  //     borderSide: BorderSide(
                  //       color: Colors.black, // Change color based on focus
                  //       width: 2.0,
                  //       style: BorderStyle.solid,
                  //     ),
                  //   ),
                  // ),
                  
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: CupertinoButton(
                  onPressed: () { 
                    setState(() { 
                    });
                    result = double.parse(textEditingController.text) * 81;
                  },
                  color : CupertinoColors.activeBlue,
                  // minSize: ,

                  // style: CupertinoButton.styleFrom(
                  //   backgroundColor: Colors.black,
                  //   foregroundColor: Colors.amber,
                  //   minimumSize: const Size(double.infinity, 50),
                  //   textStyle: const TextStyle(
                  //     fontWeight: FontWeight.bold,
                  //     backgroundColor: Colors.black,
                  //   ),

                  borderRadius: const BorderRadius.all(
                        Radius.circular(10),
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
