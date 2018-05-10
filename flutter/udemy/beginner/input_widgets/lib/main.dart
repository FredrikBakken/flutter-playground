import 'dart:async';
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

  // TextField
  String _tf_value = '';

  void _tf_onChange(String tf_value) {
    setState(() {
      _tf_value = 'Change: ${tf_value}';
    });
  }

  void _tf_onSubmit(String tf_value) {
    setState(() {
      _tf_value = 'Submit: ${tf_value}';
    });
  }


  // Checkbox
  bool _cb_value1 = false;
  bool _cb_value2 = false;

  void _cb_value1Changed(bool value) {
    setState(() {
      _cb_value1 = value;
    });
  }

  void _cb_value2Changed(bool value) {
    setState(() {
      _cb_value2 = value;
    });
  }


  // Radios
  int _r_value1 = 0;
  int _r_value2 = 0;

  void _r_setValue1(int value) {
    setState(() {
      _r_value1 = value;
    });
  }

  void _r_setValue2(int value) {
    setState(() {
      _r_value2 = value;
    });
  }

  Widget makeRadios() {
    List<Widget> list = new List<Widget>();

    for(int i = 0; i < 3; i++) {
      list.add(new Radio(value: i, groupValue: _r_value1, onChanged: _r_setValue1));
    }

    Column column = new Column(children: list,);
    return column;
  }

  Widget makeRadioTiles() {
    List<Widget> list = new List<Widget>();

    for(int i = 0; i < 3; i++) {
      list.add(new RadioListTile(
        value: i,
        groupValue: _r_value2,
        onChanged: _r_setValue2,
        activeColor: Colors.green,
        controlAffinity: ListTileControlAffinity.trailing,
        title: new Text('Item: ${i}'),
        subtitle: new Text('Sub title...'),
      ));
    }

    Column column = new Column(children: list,);
    return column;
  }


  // Switches
  bool _sw_value1 = false;
  bool _sw_value2 = false;

  void _sw_onChanged1(bool value) {
    setState(() {
      _sw_value1 = value;
    });
  }

  void _sw_onChanged2(bool value) {
    setState(() {
      _sw_value2 = value;
    });
  }


  // Slider
  double _sl_value = 0.0;
  void _sl_setValue(double value) {
    setState(() {
      _sl_value = value;
    });
  }


  // Date picker
  String _dp_value = '';

  Future _selectDate() async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: new DateTime.now(),
      firstDate: new DateTime(2016),
      lastDate: new DateTime(2019),
    );

    if (picked != null) {
      setState(() {
        _dp_value = picked.toString();
      });
    }
  }


  // Assignment
  /* Add a Text widget, a Textfield widget, and a RaisedButton widget - 
   * allow the user to enter text and when they click the button, the 
   * Text will display what they wrote in the TextField */

   String _text = 'Test';
   String _textfield = '';

   void _assignment_change(String value) {
     setState(() {
        _textfield = value;
      });
   }

   void _assignment_pressed() {
     setState(() {
        _text = _textfield;
      });
   }
  

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Input Widgets'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              /*** // TextField
              new Text(_tf_value),
              new TextField(
                decoration: new InputDecoration(
                  labelText: 'Hello',
                  hintText: 'Hint here',
                  icon: new Icon(Icons.people)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                onChanged: _tf_onChange,
                onSubmitted: _tf_onSubmit,
              ),
              ***/

              /*** // Checkbox
              new Checkbox(
                value: _cb_value1,
                onChanged: _cb_value1Changed,
              ),
              new CheckboxListTile(
                value: _cb_value2,
                onChanged: _cb_value2Changed,
                title: new Text('Hello World'),
                controlAffinity: ListTileControlAffinity.leading,
                subtitle: new Text('Subtitle'),
                secondary: new Icon(Icons.archive),
                activeColor: Colors.red,
              ),
              ***/

              /*** // Radios
              makeRadios(),
              makeRadioTiles(),
              ***/

              /*** // Switches
              new Switch(value: _sw_value1, onChanged: _sw_onChanged1,),
              new SwitchListTile(
                value: _sw_value2,
                onChanged: _sw_onChanged2,
                title: new Text(
                  'Hello World',
                  style: new TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red
                  ),
                ),
              ),
              ***/

              /*** // Slider
              new Text('Value: ${(_sl_value * 100).round()}'),
              new Slider(value: _sl_value, onChanged: _sl_setValue,),
              ***/

              /*** // Date picker
              new Text(_dp_value),
              new RaisedButton(onPressed: _selectDate, child: new Text('Click me'),),
              ***/

              // Assignment
              new Text(_text),
              new TextField(
                decoration: new InputDecoration(
                  labelText: 'Assignment',
                  hintText: 'Input your text here...',
                  icon: new Icon(Icons.assignment)
                ),
                autocorrect: true,
                autofocus: true,
                keyboardType: TextInputType.text,
                onChanged: _assignment_change,
              ),
              new RaisedButton(onPressed: _assignment_pressed, child: new Text('Submit'),),


            ],
          ),
        ),
      ),
    );
  }
}
