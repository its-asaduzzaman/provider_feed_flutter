import 'package:flutter/material.dart';

class CalFunction with ChangeNotifier {
  String _finalResult = '';

  String get finalResult => _finalResult;

  void bmiCal(double height, double weight) {
    double result = weight / ((height / 100) * (height / 100));

    _finalResult = result.round().toString();
    notifyListeners();
  }
}
