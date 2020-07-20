import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
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

  List<Transaction> _usertransactions = [];

  TransactionList(this._usertransactions);

  set userTrans(List<Transaction> listusers) {
    _usertransactions = listusers;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List<Card>.generate(_usertransactions.length, (int index) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                child: Text(
                  //'\$' + transactions[index].amount.toString(),
                  '\$${_usertransactions[index].amount.toStringAsFixed(2)}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    border: Border.all(
                      color: Colors.lightBlue, //                   <--- border color
                      width: 1.0,
                    )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      //margin: EdgeInsets.all(5),
                      child: Text(
                    _usertransactions[index].title,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
                  Container(
                      child: Text(
                    DateFormat('yyyy-MM-dd hh:mm a').format(_usertransactions[index].date),
                    style: TextStyle(color: Colors.grey),
                  )),
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}
