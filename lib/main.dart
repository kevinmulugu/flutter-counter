import 'package:flutter/material.dart';

void main() => runApp(Counter());

class CounterDisplay extends StatelessWidget {
  CounterDisplay({this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text('Counter is : $count',
    style: TextStyle(
      color: Colors.white
    ),);
  }
}

class CounterIncrementor extends StatelessWidget {
  CounterIncrementor({this.onpressed});

  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: Colors.amberAccent,
      onPressed: onpressed,
      child: Text('Increment',),
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      ++_counter;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.grey[200],
      debugShowCheckedModeBanner: false,
      title: 'Counter',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Kevv Counter'),
        ),
        body: Container(
          constraints: BoxConstraints.expand(
            height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0
          ),
          color: Colors.brown[400],
          margin: EdgeInsets.all(16.0),
          alignment: Alignment.center,
          transform: Matrix4.rotationZ(0.1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              CounterIncrementor(onpressed: _increment,),
              SizedBox(height: 10.0,),
              CounterDisplay(count: _counter,)
            ],
          ),
        ),
      ),
    );
  }
}



