import 'package:flutter/material.dart';
//import 'models/transaction.dart';
import 'Widgets/user_transactions.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // final List<Transaction> transactions = [
  //   Transaction(
  //     id: '1',
  //     title: 'FFXIV',
  //     amount: 49.99,
  //     date: DateTime.now(),
  //   ),
  //   Transaction(
  //     id: '2',
  //     title: 'CS',
  //     amount: 29.99,
  //     date: DateTime.now(),
  //   )
  // ];

  String inputTitle;
  double inputAmount;

  // You can create the textfiled controller to listen what people input
  // on need to do onchanged method for each textfield.
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 7),
            // child: Ink(
            //   decoration: const ShapeDecoration(
            //     color: Colors.lightBlue,
            //     shape: CircleBorder(),
            //   ),
            child: IconButton(
              icon: Icon(Icons.add),
              color: Colors.white,
              padding: EdgeInsets.all(2),
              onPressed: () {},
              // highlightColor: Colors.transparent,
              // hoverColor: Colors.transparent,
            ),
            //),
          )
        ],
        title: Text('Flutter Expense App'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('CHART!'),
              elevation: 5,
            ),
          ),
          UserTransactions(),
        ],
      ),
    );
  }
}
