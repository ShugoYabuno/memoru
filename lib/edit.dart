import 'package:flutter/material.dart';

class Edit extends StatefulWidget {
  @override
  _EditState createState() => new _EditState();
}

class _EditState extends State<Edit> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("編集"),
        ),
        body: Center(
          child: Text("編集画面です"),
        ));
  }
}
