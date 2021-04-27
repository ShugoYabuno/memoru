import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String _text = "テキストだよ^^";

  String get text => _text;

  void changeText() {
    _text = "テキストだよ!!!!!!!";
    notifyListeners();
  }
}
