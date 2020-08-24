import 'package:expensesapp/models/TransactionData.dart';
import 'package:flutter/material.dart';
//import 'models/transaction.dart';
import 'Widgets/user_transactions.dart';
import 'package:provider/provider.dart';
import 'Widgets/new_transaction.dart';
import 'Widgets/chart.dart';
//import 'models/transactionData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TransactionData(),
      child: MaterialApp(
        title: 'Flutter App',
        home: MyHomePage(),
      ),
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
    return Consumer<TransactionData>(
      builder: (context, transDa, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () async {
              final String returnName = await showModalBottomSheet(
                context: context,
                isScrollControlled: true,

                //backgroundColor: Colors.transparent, //set the edges transparent. better than set it hard code ARGB
                //backgroundColor: Color.fromARGB(255, 117, 117, 117),
                builder: (context) {
                  return Container(
                    height: 500,
                    child: NewTransaction(
                      onAddTransaction: (title, amount) {
                        print(title);
                        print(amount);
                        //_addNewTransaction(title, amount);
                        transDa.addNewTransaction(title, amount);
                        return Navigator.pop(context);
                      },
                    ),
                  );
                },
              );
              // if (returnName != null && returnName != '') {
              //   print(returnName);
              //   //addListTasks(returnName);
              //   taskData.addListTasks(returnName);
              // }
            },
            backgroundColor: Colors.pink,
            child: Icon(Icons.add),
          ),
          appBar: AppBar(
            backgroundColor: Colors.pink,
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
                    onPressed: () async {
                      final String returnName = await showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,

                        //backgroundColor: Colors.transparent, //set the edges transparent. better than set it hard code ARGB
                        //backgroundColor: Color.fromARGB(255, 117, 117, 117),
                        builder: (context) {
                          return Container(
                            height: 500,
                            child: NewTransaction(
                              onAddTransaction: (title, amount) {
                                print(title);
                                print(amount);
                                //_addNewTransaction(title, amount);
                                transDa.addNewTransaction(title, amount);
                                return Navigator.pop(context);
                              },
                            ),
                          );
                        },
                      );
                      // if (returnName != null && returnName != '') {
                      //   print(returnName);
                      //   //addListTasks(returnName);
                      //   taskData.addListTasks(returnName);
                      // }
                    }
                    // highlightColor: Colors.transparent,
                    // hoverColor: Colors.transparent,
                    ),
                //),
              )
            ],
            title: Text('Flutter Expense App'),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    child: Chart(),
                  ),
                  UserTransactions(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
