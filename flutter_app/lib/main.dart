import 'package:flutter/material.dart';
import 'package:flutter_app/MainActivity.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Hello World',
      theme: new ThemeData(
        primaryColor: Colors.lightBlue,
      ),
      home: new RandomWords(),
    );

  }
}

class RandomWordsState  extends State<RandomWords>{

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
            child: new Text('登录'),
            onPressed: (){
          Navigator.push(context, new MaterialPageRoute(builder: (context)=>new MainActivity()));
        }),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}