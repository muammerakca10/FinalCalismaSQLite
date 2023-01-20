import 'package:flutter/material.dart';

import 'form1.dart';
import 'form2.dart';
import 'form3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Form1(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: ((context) => Form1())));
            }, child: Text("Form 1")),
            //SizedBox(height: 30,),
            ElevatedButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Form3(),));
            }, child: Text("Show")),
          ],
        ),
      ),
    );
  }
}