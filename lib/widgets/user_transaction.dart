import 'package:expense_tracker/models/transaction.dart';
import 'package:expense_tracker/widgets/new_transaction.dart';
import 'package:expense_tracker/widgets/transaction_list.dart';
import 'package:flutter/material.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
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

  void _addNewTransaction(String title, int amount) {
    final newTrx = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now()
    );

    setState(() {
      _userTransaction.add(newTrx);
    });

  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
