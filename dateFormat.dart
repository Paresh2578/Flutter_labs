

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled/home.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  List<String> cities = [
    "Ahmedabad",
    "Surat",
    "Vadodara",
    "Rajkot",
    "Bhavnagar",
    "Jamnagar",
    "Junagadh",
    "Gandhinagar",
    "Anand",
    "Nadiad",
    "Morbi",
    "Mehsana",
    "Navsari",
    "Vapi",
    "Bharuch",
    "Palanpur",
    "Porbandar",
    "Godhra",
    "Dahod",
    "Valsad"
  ];

  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    String f1 = DateFormat("dd/MMM/yyyy").format(date);

    print("build");
    return Scaffold(
      body: Column(
        children: [
          Text(
            date.toString(),
            style: TextStyle(fontSize: 100),
          ),
          Text(
            f1.toString(),
            style: TextStyle(fontSize: 100),
          ),
          ElevatedButton(
              onPressed: () async {
                DateTime? d = await showDatePicker(
                    context: context,
                    initialDate:  date,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2026));

                  if(d != null && d != date){
                     setState(() {
                       date = d;
                     });
                  }
              },
              child: Text("show"))
        ],
      ),

      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Container(
      //         height: 200,
      //         width: double.maxFinite,
      //         color: Colors.red,
      //       ),
      //       Container(
      //         height: 200,
      //         width: double.maxFinite,
      //         color: Colors.green,
      //       ),
      //       Container(
      //         height: 200,
      //         width: double.maxFinite,
      //         color: Colors.red,
      //         child: ListView.builder(
      //           itemCount: cities.length,
      //           itemBuilder: (context, index) {
      //             return Text(
      //               cities[index],
      //               style: TextStyle(fontSize: 100, color: Colors.white),
      //             );
      //           },
      //         ),
      //       ),
      //       Container(
      //         height: 400,
      //         width: double.maxFinite,
      //         color: Colors.yellow,
      //         child: GridView.builder(
      //           itemCount: cities.length,
      //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //                 crossAxisCount: 3,childAspectRatio: 5),
      //             itemBuilder: (context, index) {
      //               return Text(
      //                 cities[index],
      //                 style: TextStyle(fontSize: 100, color: Colors.white),
      //               );
      //             },),
      //       ),
      //       Container(
      //         height: 200,
      //         width: double.maxFinite,
      //         color: Colors.red,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
