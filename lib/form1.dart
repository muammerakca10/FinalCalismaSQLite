import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'form2.dart';
import 'main.dart';

class Form1 extends StatefulWidget {
  const Form1({super.key});

  @override
  State<Form1> createState() => _Form1State();
}

class _Form1State extends State<Form1> {
  TextEditingController nameController = TextEditingController();
  TextEditingController telephoneController = TextEditingController();

  late String name;
  late String telephone;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form 1")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(hintText: "Name",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
                      
            ),
            SizedBox(height: 10,),
            TextField(
              controller: telephoneController,
              decoration: InputDecoration(hintText: "Telephone Number",
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
                      
            ),
            ElevatedButton(
                onPressed: (() {
                  name = nameController.text;
                  telephone = telephoneController.text;

                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Form2(name,telephone),
                      ));
                }),
                child: Text("Form 2")),
            ElevatedButton(
                onPressed: (() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ));
                }),
                child: Text("Anasayfa")),
          ],
        )),
      ),
    );
  }
}
