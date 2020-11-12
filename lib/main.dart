import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }

  void _multipleCounter(){
    setState(() {
      _counter = _counter * 2;
    });
  }

  void _divideCounter(){
    setState(() {
      double temp = 0.0;
      temp = _counter/2;
      _counter = temp.toInt();
    });
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
              'You have pushed the action button and the results are:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,

            ),
          ],
        ),
      ),

      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: Icon(Icons.add),
          ),
          SizedBox(
            height: 16,
          ),
          FloatingActionButton(
            onPressed: _decrementCounter,
            // tooltip: 'Decrement',
            child: Icon(Icons.remove),
          ),
          SizedBox(
            height: 16,
          ),
          FloatingActionButton(
            onPressed: _multipleCounter,
            tooltip: 'Multiply',
            child: Icon(Icons.clear),
          ),
          SizedBox(
            height: 16,
          ),
          FloatingActionButton(
            onPressed: _divideCounter,
            tooltip: 'Divide',
            child: Icon(Icons.create),
          ),
        ],
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
