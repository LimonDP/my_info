import 'package:flutter/material.dart';
import 'package:my_info/model/transition.dart';
import 'package:my_info/widget/chartForm.dart';

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
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ChartForm(),
            Column(
              children: [
                Container(
                  color: Colors.green.shade400,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    "product Transitions",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 22, color: Colors.black),
                  ),
                ),
                TrasitionList()
              ],
            )
          ],
        )),
      ),
    );
  }
}
