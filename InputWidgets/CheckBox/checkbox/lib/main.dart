import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var _checkValue = false;
  var _checkTileValue = false;

  void _checkValueSet(value) {
    setState(() {
      _checkValue = value;
    });
  }

  void _checkTileValueSet(value) {
    setState(() {
      _checkTileValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Checkbox'),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: [
                Checkbox(value: _checkValue, onChanged: _checkValueSet),
                CheckboxListTile(
                  value: _checkTileValue,
                  onChanged: _checkTileValueSet,
                  checkColor: Colors.amber,
                  title: Text('This is a Title'),
                  subtitle: Text('This is a Sub Title'),
                  activeColor: Colors.deepOrange,
                  autofocus: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
