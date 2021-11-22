import 'package:flutter/material.dart';
import 'package:my_info/model/transition.dart';
import 'package:my_info/model/transitionlist.dart';

class TranscationNotifier with ChangeNotifier {
  addTransication(String title, double amount) {
    final addTr = Transition(
        amount: amount,
        title: title,
        id: DateTime.now().toString(),
        tr_date: DateTime.now());
    transition.add(addTr);
    notifyListeners();
  }
}
