import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Tab2 extends StatefulWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  State<Tab2> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  TextEditingController _date = TextEditingController();
  var _value = '-1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: DropdownButtonFormField(
            value: _value,
            items: [
              DropdownMenuItem(
                child: Text(
                  '--Select Model--',
                ),
                value: '-1',
              ),
              DropdownMenuItem(
                child: Text(
                  'BMW',
                ),
                value: '1',
              ),
              DropdownMenuItem(
                child: Text(
                  'Merceds-Benz',
                ),
                value: '2',
              ),
              DropdownMenuItem(
                child: Text(
                  'Toyota',
                ),
                value: '3',
              ),
              DropdownMenuItem(
                child: Text(
                  'Honda',
                ),
                value: '4',
              ),
            ],
            onChanged: (v) {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            controller: _date,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.calendar_month),
                labelText: 'Pickup Date'),
            onTap: () async {
              DateTime? pickeddate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(Duration(days: 365)));
              if (pickeddate != null) {
                setState(() {
                  _date.text = DateFormat('yyyy-MM-dd').format(pickeddate);
                });
              }
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            controller: _date,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.calendar_month),
                labelText: 'Return Date'),
            onTap: () async {
              DateTime? pickeddate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now(),
                  lastDate: DateTime.now().add(Duration(days: 365)));
              if (pickeddate != null) {
                setState(() {
                  _date.text = DateFormat('yyyy-MM-dd').format(pickeddate);
                });
              }
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25.0),
          child: DropdownButtonFormField(
            value: _value,
            items: [
              DropdownMenuItem(
                child: Text(
                  '--Options--',
                ),
                value: '-1',
              ),
              DropdownMenuItem(
                child: Text(
                  'Child Seat',
                ),
                value: '1',
              ),
              DropdownMenuItem(
                child: Text(
                  'GPS Navigator',
                ),
                value: '2',
              ),
              DropdownMenuItem(
                child: Text(
                  'Insurance',
                ),
                value: '3',
              ),
            ],
            onChanged: (v) {},
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Container(
          color: Colors.yellow,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 113),
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 30, vertical: 20))),
              child: Text(
                'Check Now',
                style: TextStyle(fontSize: 20),
              )),
        )
      ],
    )));
  }
}
