import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'main.dart';

class Form2 extends StatefulWidget {
  //const Form2({super.key});

  String name;
  String telephone;
  Form2(this.name, this.telephone);

  @override
  State<Form2> createState() => _Form2State();
}

class _Form2State extends State<Form2> {
  List<String> cities = ['Konya', 'Istanbul', 'Vancouver'];

  //for Radio Button
  //if state == 0  --> Married else Single olacak
  String familyState = "asd";
  bool isSelected = true;
  bool isSelected2 = false;
  int state = 0;

  String? selectedCity;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    String selectedCity = cities.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Form2")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome ${widget.name}"),
            DropdownButton<String>(
              value: selectedCity,
              icon: Icon(Icons.arrow_downward),
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
              },
            ),
            Divider(
              color: Colors.grey,
              thickness: 2,
              height: 10,
              indent: 40,
              endIndent: 40,
            ),
            RadioListTile(
              value: 1,
              groupValue: state,
              onChanged: (select) {
                setState(() {
                  state = select as int;
                  familyState = "Married";
                  print(select);
                });
              },
              title: Text("Married"),
              // subtitle: Text("Sub title"),
              activeColor: Colors.purple,
              // secondary: Icon(Icons.add),
            ),
            RadioListTile(
              value: 2,
              groupValue: state,
              onChanged: (select) {
                setState(() {
                  state = select as int;
                  familyState = "Single";
                  print(select);
                });
              },
              title: Text("Single"),
              // subtitle: Text("Sub title"),
              activeColor: Colors.purple,
              // secondary: Icon(Icons.add),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Save")),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
              child: Text("Home Page"),
            )
          ],
        ),
      ),
    );
  }
}
