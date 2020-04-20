import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final TextStyle myStyle = new TextStyle(fontSize: 25.0);
  final int counter = 10;

  @override
  Widget build(BuildContext cxt) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Click counter',
              style: myStyle,
            ),
            Text(
              '$counter',
              style: myStyle,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('pressed!');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
