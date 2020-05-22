import 'package:expense_tracker/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
            Column(
                children: transaction.map((trx) {
              return Card(
                  child: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.teal,
                      width: 2,
                    )),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Rp.${trx.amount}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.teal),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        trx.title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(DateFormat.yMMMMEEEEd().format(trx.date),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ))
                    ],
                  )
                ],
              ));
            }).toList())
          ],
        ));
  }
}
