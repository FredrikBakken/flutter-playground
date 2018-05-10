import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';

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

  // Lecture 1: Rows and Columns
  TextEditingController _user = new TextEditingController();
  TextEditingController _pass = new TextEditingController();


  // Lecture 4: Listview Builder
  Map _countries = new Map();
  void _getData() async {
    var url = 'http://country.io/names.json';
    var response = await http.get(url);
    if (response.statusCode == 200) {
      setState(() {
        _countries = JSON.decode(response.body);
        print('Loaded ${_countries.length} countries.');
      });
    }
  }


  // Assignment
  // Make a Listview that displays a list of pets
  List _pets = ['Dogs', 'Cats', 'Fishes', 'Birds', 'Lizards'];


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Layouts'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              /*** // Lecture 1: Rows and Columns
              new Text('Please Login'),
              new Row(
                children: <Widget>[
                  new Text('Username: '),
                  new Expanded(child: new TextField(controller: _user,))
                ],
              ),
              new Row(
                children: <Widget>[
                  new Text('Password: '),
                  new Expanded(child: new TextField(controller: _pass, obscureText: true,))
                ],
              ),
              new Padding(
                padding: new EdgeInsets.all(24.0),
                child: new RaisedButton(onPressed: () => print('Login: ${_user.text}'), child: new Text('Click me'),),
              ), ***/

              /*** // Lecture 2: Card
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('Hello World!'),
                      new Text('How are you?')
                    ],
                  )
                ),
              ),
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('Hello World!'),
                      new Text('How are you?')
                    ],
                  )
                ),
              ),
              new Card(
                child: new Container(
                  padding: new EdgeInsets.all(32.0),
                  child: new Column(
                    children: <Widget>[
                      new Text('Hello World!'),
                      new Text('How are you?')
                    ],
                  )
                ),
              ), ***/

              /*** // Lecture 3: Expanded
              new Text('Image Demo'),
              new Expanded(child: new Image.network('http://voidrealms.com/images/smile.jpg'),),
              new Expanded(child: new Image.asset('images/flutter.jpg'),), ***/

              /*** // Lecture 4: Listview Builder
              new Text('Countries', style: new TextStyle(fontWeight: FontWeight.bold),),
              new Expanded(
                child: new ListView.builder(
                  itemCount: _countries.length,
                  itemBuilder: (BuildContext context, int index) {
                    String key = _countries.keys.elementAt(index);
                    return new Row(
                      children: <Widget>[
                        new Text('${key} : '),
                        new Text(_countries[key])
                      ],
                    );
                  },
                ),
              ), ***/
              new Text('Available pets', style: new TextStyle(fontWeight: FontWeight.bold),),
              // new RaisedButton(onPressed: () => _setPets(), child: new Text('Generate pets!'),),
              new Expanded(
                child: new ListView.builder(
                  itemCount: _pets.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new Text(_pets.elementAt(index));
                  },
                )
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    // _getData();
  }
}
