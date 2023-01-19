import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Form2 extends StatefulWidget {
  //const Form2({super.key});

  String name;
  String telephone;
  Form2(this.name, this.telephone);

  @override
  State<Form2> createState() => _Form2State();
}

class _Form2State extends State<Form2> {
  String selectedCity = '';
  List<String> cities = ['Konya', 'Istanbul', 'Vancouver'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton(
              value: selectedCity,
                hint: Text("Select city"),
                items: cities
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (selected) {
                  setState(() {
                    selectedCity = selected.toString();
                    print("Selected city : $selectedCity");
                    
                  });
                })
          ],
        ),
      ),
    );
  }
}
