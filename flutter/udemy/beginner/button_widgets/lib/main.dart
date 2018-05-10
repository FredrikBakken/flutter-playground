import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  
  // RaisedButton
  String _value = 'Hello World';
  void _onPressed() {
    setState(() {
      _value = 'My name is Fredrik';
    });
  }

  // RaisedButton with parameters
  String _value2 = 'Hello World again';
  void _onPressed2(String value) {
    setState(() {
      _value2 = value;
    });
  }

  // Flat Button
  String _value3 = 'Hello World again again!';
  void _onPressed3() {
    setState(() {
      _value3 = new DateTime.now().toString();
    });
  }

  // Icon Button
  int _value4 = 0;

  void _add() {
    setState(() {
      _value4++;
    });
  }

  void _subtract() {
    setState(() {
      _value4--;
    });
  }

  // Assignment:
  // Make a button, when pressed it should display your name in a Text widget
  String _question = 'What is your name?';
  void _onPressedAssignment(String name) {
    setState(() {
      _question = name;
    });
  }



  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            // Raised button
            new Text(_value),
            new RaisedButton(onPressed: _onPressed, child: new Text('Click me!')),

            // Raised button with parameters
            new Text(_value2),
            new RaisedButton(onPressed: () => _onPressed2('Hello Fredrik!'), child: new Text('Click me too!')),

            // Flat button
            new Text(_value3),
            new FlatButton(onPressed: _onPressed3, child: new Text('Click me three!')),

            // Icon button
            new Text('Value = ${_value4}'),
            new IconButton(icon: new Icon(Icons.add), onPressed: _add),
            new IconButton(icon: new Icon(Icons.remove), onPressed: _subtract),

            // Assignment
            new Text(_question),
            new MaterialButton(onPressed: () => _onPressedAssignment('Fredrik Bakken'), child: new Text('Click me to solve the assignment!')),
          ],
        ),
      ),
    );
  }
}