import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  final TextStyle _myStyle = new TextStyle(fontSize: 25.0);
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Click counter',
              style: _myStyle,
            ),
            Text(
              '$_counter',
              style: _myStyle,
            ),
          ],
        ),
      ),
      floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(child: Icon(Icons.add), onPressed: _add),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.adjust),
          onPressed: _reset,
        ),
        SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _substract,
        ),
      ],
    );
  }

  void _add() {
    setState(() {
      _counter++;
    });
  }

  void _substract() {
    setState(() {
      if (_counter <= 0)
        _counter = 0;
      else
        _counter--;
    });
  }

  void _reset() {
    setState(() {
      _counter = 0;
    });
  }
}
