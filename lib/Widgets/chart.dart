import 'package:expensesapp/models/TransactionData.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class Chart extends StatelessWidget {
  final List<Transaction> listT = [];

  List<Map<String, Object>> get groupTransValue {
    return List.generate(
      7,
      (index) {
        final weekday = DateTime.now().subtract(Duration(days: index));
        double totalSum;

        for (Transaction tran in listT) {
          if (tran.date.weekday == weekday.day && tran.date.month == weekday.month && tran.date.year == weekday.year) {
            totalSum += tran.amount;
          }
        }

        print(DateFormat.E(weekday));
        print(totalSum);
        return {'Day': DateFormat.E(weekday), 'amount': totalSum};
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[],
      ),
    );
  }
}
