import 'package:flutter/material.dart';
import 'package:my_info/statemanagement/notifier.dart';
import 'package:provider/provider.dart';

class ChartForm extends StatelessWidget {
  //const ChartForm({Key? key}) : super(key: key);
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final getProvider = Provider.of<TranscationNotifier>(context);
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            width: double.infinity,
            margin: EdgeInsets.zero,
            child: Card(
              color: Colors.green.shade500,
              //margin: EdgeInsets.only(top: 20, bottom: 20),
              margin: EdgeInsets.zero,
              child: Container(
                padding: EdgeInsets.only(top: 8, bottom: 8),
                child: Text(
                  "Chart",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 20, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Title",
                    border: OutlineInputBorder(),
                  ),
                  controller: titleController,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Amount',
                    border: OutlineInputBorder(),
                  ),
                  controller: amountController,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    // print(titleController.text);
                    // print(amountController.text);
                    getProvider.addTransication(titleController.text,
                        double.parse(amountController.text));
                  },
                  style: ElevatedButton.styleFrom(),
                  child: Container(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Add"),
                        const Icon(Icons.add),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
