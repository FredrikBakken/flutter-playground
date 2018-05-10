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
  
  // Lecture 1: AppBar
  int _ab_value = 0;
  
  void _ab_add() {
    setState(() {
      _ab_value++;
    });
  }

  void _ab_remove() {
    setState(() {
      _ab_value--;
    });
  }


  // Lecture 2: Floating action button
  String _fab_value = '';

  void _fab_onClicked() {
    setState(() {
      _fab_value = new DateTime.now().toString();
    });
  }


  // Lecture 4: Footer Buttons
  String _fb_value = '';

  void _fb_onClick(String value) {
    setState(() {
      _fb_value = value;
    });
  }


  // Lecture 5: Bottom Navigation Bar
  List<BottomNavigationBarItem> _items;
  String _value = '';
  int _index = 0;

  @override
  void initState() {
    _items = new List();
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.people), title: new Text('People')));
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.weekend), title: new Text('Weekend')));
    _items.add(new BottomNavigationBarItem(icon: new Icon(Icons.message), title: new Text('Message')));
  }


  // Assignment
  String _assignment_value = '';
  void _assignment_onClicked() {
    setState(() {
      _assignment_value = new DateTime.now().toString();
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // Lecture 1: AppBar
      appBar: new AppBar(
        title: new Text('Scaffold'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.add), onPressed: _ab_add,),
          new IconButton(icon: new Icon(Icons.remove), onPressed: _ab_remove,),
        ],
      ),

      // Lecture 2: Floating action button
      floatingActionButton: new FloatingActionButton(
        onPressed: _fab_onClicked,
        backgroundColor: Colors.red,
        mini: true,
        child: new Icon(Icons.timer),
      ),

      // Lecture 3: Drawer
      drawer: new Drawer(
        child: new Container(
          padding: new EdgeInsets.all(32.0),
          child: new Column(
            children: <Widget>[
              new Text('Hello Drawer'),

              // Assignment
              new RaisedButton(onPressed: _assignment_onClicked, child: new Text('Assignment'),),

              new RaisedButton(onPressed: () => Navigator.pop(context), child: new Text('Close'),),
            ],
          ),
        ),
      ),

      // Lecture 4: Footer Buttons
      persistentFooterButtons: <Widget>[
        new IconButton(icon: new Icon(Icons.timer), onPressed: () => _fb_onClick('Button 1'),),
        new IconButton(icon: new Icon(Icons.people), onPressed: () => _fb_onClick('Button 2'),),
        new IconButton(icon: new Icon(Icons.map), onPressed: () => _fb_onClick('Button 3'),),
      ],

      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              // Lecture 1: AppBar
              new Text(_ab_value.toString(), style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 37.0)),

              // Lecture 2: Floating action button
              new Text(_fab_value),

              // Lecture 4: Footer Buttons
              new Text(_fb_value),

              // Lecture 5: Bottom Navigation Bar
              new Text(_value),

              // Assignment
              new Text(_assignment_value),
            ],
          ),
        ),
      ),

      // Lecture 5: Bottom Navigation Bar
      bottomNavigationBar: new BottomNavigationBar(
        items: _items,
        fixedColor: Colors.blue,
        currentIndex: _index,
        onTap: (int item) {
          setState(() {
            _index = item;
            _value = 'Current value is: ${_index.toString()}';
          });
        },
      ),
    );
  }
}
