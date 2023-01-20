import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Form3 extends StatefulWidget {
  const Form3({super.key});

  @override
  State<Form3> createState() => _Form3State();
}

class _Form3State extends State<Form3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form3")),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("data"),
        ],
      )),
    );
  }
}
