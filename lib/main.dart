import 'package:expense_tracker/transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
      id: '1',
      title: 'Beli baju',
      amount: 50000,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: 'Beli celana',
      amount: 55000,
      date: DateTime.now(),
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('Chart!'),
              ),
            ),
            Card(
              child: Text('List of transactions'),
            ),
          ],
        ));
  }
}
