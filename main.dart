import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
      return MaterialApp(
            title: 'Material App',
                  home: Scaffold(
                          appBar: AppBar(
                                    title: Text('Graceseva Br Sinaga (6SIA4)'),
                                            ),
                                                    body: GracesevaApp(),
                                                          ),
                                                              );
                                                                }
                                                                }
class GracesevaApp extends StatefulWidget {
  _GracesevaAppState createState() => _GracesevaAppState();
  }
class _GracesevaAppState extends State<GracesevaApp> {
  final txtnama = TextEditingController();
    String _selected;
      String hasil;
        onProses() {
            setState(() {
                  hasil = "${txtnama.text} alamat $_selected";
                      });
                        }
  Widget build(BuildContext context) {
  return Container(
  padding: EdgeInsets.all(20.0),
child: Column(children: <Widget>[
TextField(
  controller: txtnama,
   decoration: new InputDecoration(
labelText: "alamat",
),
),
   DropdownButton(
   hint: Text("Pilihan alamat"),
 value: _selected,
 items: ['jokjakarta', 'bandung', 'medan']
 .map((choice) {
 return DropdownMenuItem(
child: Text(choice),
value: choice,
);
}).toList(),
onChanged: (value) {
setState(() {
_selected = value;
 });
}),
RaisedButton(
child: Text('Proses'),
onPressed: onProses,
),
  Text('$hasil')
  ]));
 }
  }
