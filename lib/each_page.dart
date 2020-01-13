import 'package:flutter/material.dart';

class EachPage extends StatefulWidget {
  String _title;
  EachPage(this._title);
  @override
  _EachPageState createState() => _EachPageState();
}

class _EachPageState extends State<EachPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: Text(widget._title),
      ),
    );
  }
}
