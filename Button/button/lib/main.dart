import 'package:flutter/material.dart';

main() {
  runApp(new MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _value = 'Hello World';

  void _onPressed(value) {
    setState(() {
      _value = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Buttons'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(24.0),
        child: new Center(
          child: new Column(
            children: [
              new Text(_value),
              new RaisedButton(
                onPressed: () => _onPressed('This is Raised Button'),
                child: new Text('Tap Me'),
                textColor: Colors.white,
                color: Colors.amber,
              ),
              new FlatButton(
                onPressed: () => _onPressed('This is Flat Button'),
                child: new Text('Click Me'),
                splashColor: Colors.blue,
                textColor: Colors.amber,
              ),
              new IconButton(
                icon: new Icon(Icons.add),
                onPressed: () => _onPressed('This is Icon Button'),
                hoverColor: Colors.deepOrange,
              ),
              new OutlineButton(
                onPressed: () => _onPressed('This is Outline Button'),
                child: new Text('Click me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
