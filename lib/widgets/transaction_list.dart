import 'package:expense_tracker/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final Function deleteTransaction;
  final List<Transaction> transaction;
  TransactionList(this.transaction, this.deleteTransaction);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: transaction.isEmpty
          ? LayoutBuilder(
              builder: (context, constraint) {
                return Column(
                  children: <Widget>[
                    Text(
                      'No Transactions added yet',
                      style: Theme.of(context).textTheme.title,
                    ),
                    SizedBox(height: 10),
                    Container(
                        height: constraint.maxHeight * 0.6,
                        child: Image.asset('assets/images/waiting.png',
                            fit: BoxFit.cover)),
                  ],
                );
              },
            )
          : ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 5),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: FittedBox(
                          child: Text('Rp.${transaction[index].amount}'),
                        ),
                      ),
                    ),
                    title: Text(
                      transaction[index].title,
                      style: Theme.of(context).textTheme.title,
                    ),
                    subtitle: Text(
                        DateFormat.yMMMd().format(transaction[index].date)),
                    trailing: MediaQuery.of(context).size.width > 460
                        ? FlatButton.icon(
                            color: Colors.red,
                            icon: Icon(Icons.delete),
                            label: Text('Delete'),
                            onPressed: () {
                              deleteTransaction(transaction[index].id);
                            },
                          )
                        : IconButton(
                            icon: Icon(Icons.delete),
                            color: Colors.red,
                            onPressed: () =>
                                {deleteTransaction(transaction[index].id)},
                          ),
                  ),
                );
              },
              itemCount: transaction.length,
            ),
    );
  }
}
