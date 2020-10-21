import 'package:flutter/material.dart';

class PageHome extends StatefulWidget {

  final String name;
  final String pass;

  //constructor


  PageHome({Key key, @required this.name, @required this.pass}) : super(key:  key);

  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Home'),
        backgroundColor: Colors.blue,
      ),

      body: ListView(
        children: <Widget>[
          Text('Selamat Datang : ${widget.name}'),
          Text('Dengan Password Anda : ' + widget.pass)
        ],
      ),
    );
  }
}