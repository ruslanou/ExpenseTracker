import 'package:expense_tracker/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;
  TransactionList(this.transaction);
  @override
  Widget build(BuildContext context) {
    return Column(
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
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.teal),
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
    }).toList());
  }
}
