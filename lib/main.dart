import 'package:flutter/material.dart';

void main() {
  runApp(NegativeCounterApp());
}

class NegativeCounterApp extends StatefulWidget {
  @override
  _NegativeCounterAppState createState() => _NegativeCounterAppState();
}

class _NegativeCounterAppState extends State<NegativeCounterApp> {
  int _counter = 0;

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });
  }
    void_incrementCounter(){
        setState(() {
            _counter++;
        });
    }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Negative Counter App'),
        ),
        body: Center(
          child: Column(
            //mainAxisAlinment 
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Count:';
                style: TextStyle(fontsize:24),
              ),
              Text(
            '$_counter',
                style: TextStyle(fontSize: 48),
              ),
            ],
          ),
        ),
        FloatingActionButton(
        onPressed:_incrementCounter
        tooltip: 'Increment', 
        child: Icons(Icons.add),
        ),
        (
          onPressed: _decrementCounter,
          tooltip: 'Decrement',
          child: Icon(Icons.remove),
        ),
      ),
    );
  }
}
