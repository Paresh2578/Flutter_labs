import 'package:flutter/material.dart';
import 'package:untitled1/Page1.dart';
import 'package:untitled1/Page2.dart';

import 'Exam/User.dart';
import 'apiService.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  Apiservice apiservice = Apiservice();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("call *******");
    getAllData();
  }

  Future<void> getAllData() async {
   await apiservice.getAllUser();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: FutureBuilder(
        future: apiservice.getAllUser(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return CircularProgressIndicator();
          }else if(snapshot.hasData){
            List<User> data = snapshot.data!;

            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
              return ListTile(
                title:Text(data[index].user_name),
                trailing: Text(data[index].user_id),
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Page2(id: data[index].user_id),)
                  );
                },
              );
            },);
          }else{
            return Text("error");
          }
        },
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (context) {
            TextEditingController name = TextEditingController();
           return AlertDialog(
             title: Text("Add"),
             content: TextField(
               controller: name,
             ),
             actions: [
               ElevatedButton(onPressed: () async {
                await apiservice.addUser(User(user_id: "12", user_name: name.text));
                Navigator.of(context).pop();
               }, child: Text("Add"))
             ],
            );
          },).then((value) {
            setState(() {
              
            });
          },);
        },
        child: Icon(Icons.add),
      ),
    );

  }
}
