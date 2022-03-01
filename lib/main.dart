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

class DicePage extends StatefulWidget {
//  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDiceFace(){
    setState(() {
      //  leftDiceNumber = 5;
      leftDiceNumber = Random().nextInt(6) + 1; // 0-5
      rightDiceNumber = Random().nextInt(6) + 1;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          // to avoid the image overflow, will use a expanded widget which provide flexible layout
          Expanded(
            flex: 1,
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              onPressed: () {
                //print('Left button got pressed.');
                changeDiceFace();
                // setState(() {
                //   //  leftDiceNumber = 5;
                //   leftDiceNumber = Random().nextInt(6) + 1; // 0-5
                //   rightDiceNumber = Random().nextInt(6) + 1;
                //
                // });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              onPressed: () {
                // print('Right button got pressed.');
                changeDiceFace();
                // setState(() {
                //   rightDiceNumber = Random().nextInt(6) + 1;
                //   leftDiceNumber = Random().nextInt(6) + 1; // 0-5
                //
                // });
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

/*
Method 1 :
    return Row(
      children: <Widget>[
        // to avoid the image overflow, will use a expanded widget which provide flexible layout
        Expanded(
          flex: 1,
          child: Image.asset('images/dice1.png'),
        ),
        Expanded(
          flex: 1,
          child: Image.asset('images/dice1.png'),
        ),
      ],
    );


    Method 2 :
    return Center(
      child: Row(
        children: <Widget>[
          // to avoid the image overflow, will use a expanded widget which provide flexible layout
          Expanded(
            flex: 1,
            child: Image.asset('images/dice1.png'),
          ),
          Expanded(
            flex: 1,
            child: Image.asset('images/dice1.png'),
          ),
        ],
      ),
    );
 */
