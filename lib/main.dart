import 'package:flutter/material.dart';

import 'package:my_info/statemanagement/notifier.dart';
import 'package:my_info/widget/chart.dart';

import 'package:provider/provider.dart';

void main() => runApp(ChangeNotifierProvider(
      create: (_) => TranscationNotifier(),
      child: MyApp(),
    ));

class MyApp extends StatelessWidget {
  //onst MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final getprovider = Provider.of<TranscationNotifier>(context);
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
