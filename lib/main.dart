import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          //expanded widget spreads out to the entire screen
          // flex: 2, //#2  = 2x as large as the other expanded widget
          //if you don't set flex, they will take up equal space, default ==1
          child: Image(
            image: AssetImage('images/dice1.png'),
          ),
        ),
        Expanded(
          //flex: 1,
          child: Image(
            image: AssetImage('images/dice1.png'),
          ),
        ),
      ],
    );
    //return Container();
  }
}