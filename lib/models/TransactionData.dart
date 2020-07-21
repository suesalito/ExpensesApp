import 'package:flutter/material.dart';
import 'transaction.dart';
import 'package:flutter/foundation.dart';
import 'dart:collection';

class TransactionData extends ChangeNotifier {
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

  UnmodifiableListView<Transaction> get usertrans {
    return UnmodifiableListView(_usertransactions);
  }

  int get usercount {
    return _usertransactions.length;
  }

  void addNewTransaction(String title, String amount) {
    _usertransactions.add(Transaction(
      id: title,
      title: title,
      amount: double.parse(amount),
      date: DateTime.now(),
    ));
    notifyListeners();
  }
}
