import 'package:flutter/material.dart';
import 'package:my_info/widget/chartForm.dart';

import 'list.dart';

class Chart extends StatelessWidget {
  const Chart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
