import 'package:flutter/material.dart';

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
      home: const AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Anasayfa")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //SizedBox(height: 30,),
            ElevatedButton(onPressed: () {}, child: Text("Form1")),
            //SizedBox(height: 30,),
            ElevatedButton(onPressed: () {}, child: Text("Goster")),
          ],
        ),
      ),
    );
  }
}