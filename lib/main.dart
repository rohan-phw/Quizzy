import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


void main() { 
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  void answerQuestion(){
    Fluttertoast.showToast(msg:'The button is clicked !',
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    timeInSecForIosWeb: 1,);
  }


  @override
  Widget build(BuildContext context){
    var questions = ['What\'s your favourite color ?', 
    'What\'s your favourite animal ?',
    ];
    return MaterialApp(
      home: Scaffold( 
      appBar: AppBar(
        title: Text('First App'),
        ),
      body: Column(
        children: <Widget>[
          Text('The Question !'),
          RaisedButton(
            child: Text('Answer 1'), 
          onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text('Answer 2'), 
          onPressed: null,
          ),
          RaisedButton(
            child: Text('Answer 3'), 
          onPressed: null,
          ),
        ],
        ),
      ),
    );
  }
}