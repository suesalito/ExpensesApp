import 'package:expensesapp/models/TransactionData.dart';
import 'package:flutter/material.dart';
import 'Transaciton_list.dart';
import 'new_transaction.dart';
import '../models/transaction.dart';
import 'package:provider/provider.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  // final List<Transaction> _usertransactions = [
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

  // void _addNewTransaction(String title, String amount) {
  //   setState(() {
  //     _usertransactions.add(Transaction(
  //       id: title,
  //       title: title,
  //       amount: double.parse(amount),
  //       date: DateTime.now(),
  //     ));
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    // TransactionList tList = TransactionList();

    // Transaction newTransaction = Transaction(
    //   id: '2',
    //   title: 'CSx',
    //   amount: 29.99,
    //   date: DateTime.now(),
    // );
    // _usertransactions.add(newTransaction);

    // tList.userTrans = _usertransactions;
    return Consumer<TransactionData>(builder: (context, transData, child) {
      return Container(
        //height: 700,
        child: Column(
          children: <Widget>[
            // NewTransaction(
            //   onAddTransaction: (title, amount) {
            //     print(title);
            //     print(amount);
            //     //_addNewTransaction(title, amount);
            //     transData.addNewTransaction(title, amount);
            //   },
            // ),
            transData.usertrans.length == 0
                ? Container(
                    child: Text('No Transaction'),
                  )
                : TransactionList(transData.usertrans),
            //TransactionList(transData.usertrans),
          ],
        ),
      );
    });
  }
}
