import 'package:expense_tracker/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;
  TransactionList(this.transaction);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      child: transaction.isEmpty ? Column(
        children: <Widget>[
          Text('No Transactions added yet', style: Theme.of(context).textTheme.title,),
          SizedBox(height: 10),
          Container(
            height: 400,
            child: Image.asset('assets/images/waiting.png', fit: BoxFit.cover)),
        ],
      ) :
      ListView.builder(
        itemBuilder: (context, index) {
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
                  color: Theme.of(context).primaryColorDark,
                  width: 2,
                )),
                padding: EdgeInsets.all(10),
                child: Text(
                  'Rp.${transaction[index].amount}',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Theme.of(context).primaryColor),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    transaction[index].title,
                    style: Theme.of(context).textTheme.title
                  ),
                  Text(DateFormat.yMMMMEEEEd().format(transaction[index].date),
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ))
                ],
              )
            ],
          ));
        },
        itemCount: transaction.length,
      ),
    );
  }
}
