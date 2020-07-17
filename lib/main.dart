import 'package:flutter/material.dart';
import 'transaction.dart';

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
  final List<Transaction> transactions = [
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
          Column(
            children: List<Card>.generate(transactions.length, (int index) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        //'\$' + transactions[index].amount.toString(),
                        '\$${transactions[index].amount.toString()}',
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
                          transactions[index].title,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        )),
                        Container(
                            child: Text(
                          transactions[index].date.toString(),
                          style: TextStyle(color: Colors.grey),
                        )),
                      ],
                    )
                  ],
                ),
              );
            }),
          ),
          Card(
            child: Text('LIST OF TX'),
          ),
        ],
      ),
    );
  }
}
