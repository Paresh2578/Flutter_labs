import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  DateTime date = new DateTime.now();

  DateTime? d2;
  @override
  Widget build(BuildContext context) {
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



    return Scaffold(
      body: Column(
        children: [
          Text(
            d2.toString(),
            style: TextStyle(fontSize: 100),
          ),
          ElevatedButton(
              onPressed: () async {
                DateTime? d = await showDatePicker(
                    context: context,
                    initialDate: d2 ?? DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(3000));

                if(d != null && d2 != d){
                  setState(() {
                    d2 = d;
                  });
                }
              },



              child: Text("Date"))
        ],
      ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Container(
      //         color: Colors.red,
      //         height: 200,
      //         width: double.maxFinite,
      //       ),
      //       Container(
      //         color: Colors.blueAccent,
      //         height: 200,
      //         width: double.maxFinite,
      //         child: ListView.builder(
      //           itemCount: cities.length,
      //           itemBuilder: (context, index) {
      //             return Text(
      //               cities[index],
      //               style: TextStyle(fontSize: 50),
      //             );
      //           },
      //         ),
      //       ),
      //       Container(
      //         color: Colors.red,
      //         height: 200,
      //         width: double.maxFinite,
      //         child: GridView.builder(
      //           itemCount: cities.length,
      //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //                 crossAxisCount: 3,childAspectRatio: 10),
      //             itemBuilder: (context, index) {
      //              return Text(cities[index],style: TextStyle(fontSize: 50),);
      //             },),
      //       ),
      //       Container(
      //         color: Colors.green,
      //         height: 200,
      //         width: double.maxFinite,
      //       ),
      //       Container(
      //         color: Colors.red,
      //         height: 200,
      //         width: double.maxFinite,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
