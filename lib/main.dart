import 'package:flutter/material.dart';
import 'package:my_info/model/transition.dart';
import 'package:my_info/widget/chart.dart';
import 'package:my_info/widget/chartForm.dart';
import 'package:my_info/widget/signup.dart';

import 'model/transitionlist.dart';
import 'widget/list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  //onst MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Transition App"),
          centerTitle: true,
          backgroundColor: Colors.green.shade900,
        ),
        body: SafeArea(
          child: Chart(),
          //child: SignUp(),
        ),
      ),
    );
  }
}
