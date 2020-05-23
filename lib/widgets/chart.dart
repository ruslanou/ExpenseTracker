import 'package:expense_tracker/models/transaction.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {

  List<Map<String, Object>>get groupedTransactionValues {
    final List<Transaction> recentTransactions;
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(Duration(days: index));
      int totalSum;

      for(var i = 0;i < recentTransactions.length; i++){
        if(recentTransactions[i].date.day == weekDay.day && recentTransactions[i].date.month == weekDay.month && recentTransactions[i].date.year == weekDay.year){
          totalSum += recentTransactions[i].amount;
        }
      }
      return {'day': DateFormat.E(weekDay), 'amount': }; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: <Widget>[

        ],
      ),
    );
  }
}