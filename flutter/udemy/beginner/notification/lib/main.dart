import 'package:flutter/material.dart';
import 'dart:async';


void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}


// Lecture 4: Simple Dialog
enum Answers{YES, NO, MAYBE}



class _State extends State<MyApp> {

  // Lecture 1: Bottom Sheet
  void _showBottom() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return new Container(
          padding: new EdgeInsets.all(15.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text('Some information here', style: new TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
              new RaisedButton(onPressed: () => Navigator.pop(context), child: new Text('Close'),),
            ],
          ),
        );
      }
    );
  }


  // Lecture 2: Snack Bar
  final GlobalKey<ScaffoldState> _scaffoldstate = new GlobalKey<ScaffoldState>();

  void _showbar() {
    _scaffoldstate.currentState.showSnackBar(new SnackBar(content: new Text('Hello world!')));
  }


  // Lecture 3: Alert Dialog
  Future _showAlert(BuildContext context, String message) async {
    return showDialog(
      context: context,
      child: new AlertDialog(
        title: new Text(message),
        actions: <Widget>[
          new FlatButton(onPressed: () => Navigator.pop(context), child: new Text('Ok'),),
        ],
      )
    );
  }


  // Lecture 4: Simple Dialog
  String _value = '';

  void _setValue(String value) {
    setState(() {
      _value = value;
    });
  }

  Future _askUser() async {
    switch(
      await showDialog(
        context: context,
        child: new SimpleDialog(
          title: new Text('Do you like Flutter?'),
          children: <Widget>[
            new SimpleDialogOption(child: new Text('Yes!!!'), onPressed: () {Navigator.pop(context, Answers.YES);},),
            new SimpleDialogOption(child: new Text('No :('), onPressed: () {Navigator.pop(context, Answers.NO);},),
            new SimpleDialogOption(child: new Text('Maybe :|'), onPressed: () {Navigator.pop(context, Answers.MAYBE);},),
          ],
        )
      )
    ) {
      case Answers.YES:
        _setValue('Yes');
        break;

      case Answers.NO:
        _setValue('No');
        break;

      case Answers.MAYBE:
        _setValue('Maybe');
        break;
    }
  }


  // Assignment
  // Allow the user to enter their name, and when a button is clicked,
  // display a snackbar displaying their name.
  String _name = '';
  String _tmp_name = '';

  void _changeName(String name) {
    setState(() {
      _tmp_name = name;
    });
  }

  void _submitName(BuildContext context) {
    setState(() {
      _name = _tmp_name;
    });
    Navigator.pop(context);
  }

  Future _askName(BuildContext context, String message) async {
    return showDialog(
      context: context,
      child: new AlertDialog(
        title: new Text(message),
        // Helpful resource:
        // https://stackoverflow.com/questions/46841637/show-a-text-field-dialog-without-being-covered-by-keyboard?utm_medium=organic&utm_source=google_rich_qa&utm_campaign=google_rich_qa
        content: new Row(
          children: <Widget>[
            new Expanded(
              child: new TextField(
                decoration: new InputDecoration(
                  labelText: 'Your name:',
                  hintText: 'Insert your name here...',
                  icon: new Icon(Icons.people),
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                onChanged: _changeName,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          new FlatButton(onPressed: () => _submitName(context), child: new Text('Ok'),),
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // Lecture 2: Snack Bar
      key: _scaffoldstate,

      appBar: new AppBar(
        title: new Text('Notification'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              // Lecture 1: Bottom Sheet
              new RaisedButton(onPressed: _showBottom, child: new Text('Click me for Bottom Sheet!')),

              // Lecture 2: Snack Bar
              new RaisedButton(onPressed: _showbar, child: new Text('Click me for Snack Bar!')),

              // Lecture 3: Alert Dialog
              new RaisedButton(onPressed: () => _showAlert(context, 'Do you like flutter? I do!'), child: new Text('Click me for Alert Dialog!')),

              // Lecture 4: Simple Dialog
              new RaisedButton(onPressed: _askUser, child: new Text('Click me for Simple Dialog!')),
              new Text(_value),

              // Assignment
              new RaisedButton(onPressed: () => _askName(context, 'What is your name?'), child: new Text('Click me for Assignment!')),
              new Text(_name),
            ],
          ),
        ),
      ),
    );
  }
}
