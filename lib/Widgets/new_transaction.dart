import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  Function(String title, String amount) onAddTransaction;

  NewTransaction({@required this.onAddTransaction});

  void submitData() {
    if (titleController.text.isNotEmpty && amountController.text.isNotEmpty) {
      onAddTransaction(titleController.text, amountController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          TextField(
            controller: titleController,
            onSubmitted: (_) => submitData(),
            decoration: InputDecoration(
              labelText: 'Title',
            ),
            // onChanged: (value) {
            //   inputTitle = value;
            //   print(inputTitle);
            // },
          ),
          TextField(
            keyboardType: TextInputType.numberWithOptions(decimal: true),
            controller: amountController,
            onSubmitted: (_) => submitData(),
            decoration: InputDecoration(
              labelText: 'Amount',
            ),
            // onChanged: (value) {
            //   inputAmount = double.parse(value);
            //   print(inputAmount);
            // },
          ),
          FlatButton(
            child: Text(
              'Add Transaction',
              style: TextStyle(color: Colors.pink),
            ),
            //onPressed: onAddTransaction(titleController.text, amountController.text),
            onPressed: () {
              //print('Pressed');
              //onAddTransaction(titleController.text, amountController.text);
              submitData();
            },
          )
        ],
      ),
    );
  }
}
