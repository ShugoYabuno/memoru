import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './edit.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(primaryColor: Colors.white),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("テスト"),
      ),
      body: ListView(
        children: List.generate(10, (int index) {
          // メインで編集する部分↓
          return InkWell(
            onTap: () {
              Navigator.push(
                  context, CupertinoPageRoute(builder: (context) => Edit()));
            },
            child: Card(
              child: ListTile(
                title: Text("テスト$index"),
                subtitle: Text("うぉぉぉぉぉぉぉぉぉぉおx。"),
              ),
            ),
          );
        }),
      ),
    );
  }
}
