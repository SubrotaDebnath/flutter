import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var _value1 =0;
  var _value2 = 0;

  _setValue1(var value){
    setState(() {
      _value1 = value;
    });
  }

  _setValue2(var value){
    setState(() {
      _value2 = value;
    });
  }

  Widget makeRadios() {
    var list = [];

    for(int i=0; i<4; i++){
      list.add(Radio(value: i, groupValue: _value1, onChanged: _setValue1));
    }

    Column column = Column(children:list);

    return column;

  }

  Widget makeRadioTiles() {
    var list = [];

    for(int i=0; i<4; i++){
      list.add(RadioListTile(value: i, groupValue: _value2, onChanged: _setValue2));
    }

    Column column = Column(children:list);

    return column;

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Radio Button'),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                makeRadios(),
                makeRadioTiles()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
