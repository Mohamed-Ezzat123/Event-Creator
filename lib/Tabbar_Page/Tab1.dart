import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Tab1 extends StatefulWidget {
  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
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
                      '--Select Event--',
                    ),
                    value: '-1',
                  ),
                  DropdownMenuItem(
                    child: Text(
                      'Widding',
                    ),
                    value: '1',
                  ),
                  DropdownMenuItem(
                    child: Text(
                      'Prom Party',
                    ),
                    value: '2',
                  ),
                  DropdownMenuItem(
                    child: Text(
                      'Birthday Party',
                    ),
                    value: '3',
                  ),
                  DropdownMenuItem(
                    child: Text(
                      'Engangement',
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
                    labelText: 'Event Date'),
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
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Number Of People',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Low Price ',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Higher Price ',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.check_box_outline_blank),
                Text(
                  'Photoghrafer',
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(Icons.check_box_outline_blank),
                Text(
                  'Hairdresser',
                  style: TextStyle(fontSize: 25),
                )
              ],
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
        ),
      ),
    );
  }
}
