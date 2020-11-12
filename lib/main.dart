import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  StreamController _streamController;
  Stream _stream;

  @override
  void initState() {
    _streamController = StreamController();
    _stream = _streamController.stream;
  }

  void _incrementCounter() {
    _streamController.sink.add(_counter++);
  }

  void _decrementCounter() {
    _streamController.sink.add(_counter--);
  }

  void _multiplyCounter() {
    _counter = _counter * 2;
    _streamController.sink.add(_counter);
  }

  void _divideCounter() {
    double d = _counter / 2;
    _counter = d.toInt();
    _streamController.sink.add(_counter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            StreamBuilder(
                stream: _stream,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  return Text(
                    snapshot.data != null ? snapshot.data.toString() : "0",
                    style: Theme.of(context).textTheme.display1,
                  );
                })
          ],
        ),
      ),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        SizedBox(height: 20),
        FloatingActionButton(
          onPressed: _decrementCounter,
          tooltip: 'Decrement',
          child: Icon(Icons.remove),
        ),
            SizedBox(height: 20),
        FloatingActionButton(
          onPressed: _multiplyCounter,
          tooltip: 'Multiply',
          child: Icon(Icons.clear),
        ),
            SizedBox(height: 20),
        FloatingActionButton(
          onPressed: _divideCounter,
          tooltip: 'Divide',
          child: Icon(Icons.edit),
        ),
      ] // This trailing comma makes auto-formatting nicer for build methods.
              ),
    );
  }

  @override
  void dispose() {}
}
