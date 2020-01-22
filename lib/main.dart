import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Flutter is cool'),
          leading: new Icon(
            Icons.comment
          ),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.school),
              tooltip: 'Hi',
              onPressed: () => {},
            ),
            new IconButton(
              icon: new Icon(Icons.airport_shuttle),
              tooltip: 'Wow!!!',
              onPressed: () => {},
            ),
            new IconButton(
              icon: new Icon(Icons.album),
              tooltip: 'snapp',
              onPressed: () => {},
            )
          ],
        ),
        bottomNavigationBar: new BottomNavigationBar(
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.search),
              title: new Text("Search")
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.add),
              title: new Text("Add")
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text("Home")
            ),
          ],
        ),
        body: new Container(
          padding: const EdgeInsets.all(20.0),
          child: new Column(
            children: <Widget>[
              new Text("helloooo"),
              new TextField(
                decoration: new InputDecoration(
                  border:  InputBorder.none,
                  hintText: 'Please enter text!!'
                ),
              ),
              new Checkbox(
                value: true,
                onChanged: (bool value){

                },
              ),
              new Radio<int>(
                value: 0,
                groupValue: 0,
                onChanged: (_){},
              ),
              new Switch(
                value: false,
                onChanged: (bool value){

                },
              ),
              new ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new RaisedButton(
                    child: const Text('Raised'),
                    onPressed: () {},
                  ),
                  const RaisedButton(
                    child: const Text('Disable'),
                    onPressed: null,
                  )
                ],
              ),
              new ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new FlatButton(
                    child: const Text('Flat'),
                    onPressed: () {},
                  ),
                  const FlatButton(
                    child: const Text('Disable'),
                    onPressed: null,
                  )
                ],
              ),
              new ButtonBar(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  new OutlineButton(
                    child: const Text('Outline'),
                    onPressed: () {},
                  ),
                  const RaisedButton(
                    child: const Text('Disable'),
                    onPressed: null,
                  )
                ],
              ),
              new Image.network(
                'http://thecatapi.com/api/images/get?formet=src&type=gif',
              ),
            ],
          ),
        )
      ),
    );
  }
}