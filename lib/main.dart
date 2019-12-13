import 'package:flutter/material.dart';
import 'dart:math';

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

/*
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDiceNumber = 4;
    var rightDiceNumber = 3;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //expanded widget spreads out to the entire screen
            // flex: 2, //#2  = 2x as large as the other expanded widget
            //if you don't set flex, they will take up equal space, default ==1
            child: FlatButton(
              onPressed: () {
                print('diceNumber = $leftDiceNumber');
              },
              child: Image(
                image: AssetImage('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            //flex: 1,
            child: FlatButton(
              onPressed: () {
                print('Right button got pressed!');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ), //this is another way to create images
          ),
        ],
      ),
    );
    //return Container();
  }
}
*/
class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 4;
  var rightDiceNumber = 3;
//looks like you can declare void functions inside another class
  void generateRandom() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
      // print('Right button got pressed! ' + diceNumber.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            //expanded widget spreads out to the entire screen
            // flex: 2, //#2  = 2x as large as the other expanded widget
            //if you don't set flex, they will take up equal space, default ==1
            child: FlatButton(
              onPressed: () {
                //change dicenumber
                generateRandom();
                /*setState(() {
                  //setstate will rebuild everything
                  /*leftDiceNumber = Random().nextInt(6) + 1;
                  print('diceNumber = $leftDiceNumber');
                  */

                }); */
              },
              child: Image(
                image: AssetImage('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            //flex: 1,
            child: FlatButton(
              onPressed: () {
                /*etState(() {
                  /*  rightDiceNumber = Random().nextInt(6) + 1;
                  print('Right button got pressed! ' +
                      rightDiceNumber.toString()); */
                  generateRandom();
                });
*/
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ), //this is another way to create images
          ),
        ],
      ),
    );
    //return Container();
  }
}
