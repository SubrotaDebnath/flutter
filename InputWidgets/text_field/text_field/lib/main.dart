import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _title = 'Text Field';
  var _value = 'Empty Text Field';

  _onChanged(value) {
    setState(() {
      _value = "Changed: $value";
    });
  }

  _onSubmitted(value) {
    setState(() {
      _value = "Submitted: $value";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.amber,
          title: new Text('Text Field'),
        ),
        body: new Container(
          padding: EdgeInsets.all(24.0),
          child: new Center(
            child: new Column(
              children: [
                new Text(
                  _value,
                ),
                new TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Level',
                    contentPadding: EdgeInsets.all(
                       8.0),
                  ),
                  onChanged: _onChanged,
                  onSubmitted: _onSubmitted,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
