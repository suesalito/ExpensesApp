import 'package:flutter/material.dart';
import 'Transaciton_list.dart';
import 'new_transaction.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _usertransactions = [
    Transaction(
      id: '1',
      title: 'FFXIV',
      amount: 49.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'CS',
      amount: 29.99,
      date: DateTime.now(),
    )
  ];

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
    return Column(
      children: <Widget>[
        NewTransaction(
          onAddTransaction: (t, a) {
            print(t);
            print(a);
            print('checked');
          },
        ),
        TransactionList(_usertransactions),
      ],
    );
  }
}
