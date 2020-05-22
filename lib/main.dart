import 'package:expense_tracker/widgets/user_transaction.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  // String titleInput;
  // String amountInput;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){},
        ),
        appBar: AppBar(
          title: Text('Flutter App'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.add), onPressed: (){},)
          ],
        ),
        body: SingleChildScrollView(
                  child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Card(
                  color: Colors.blue,
                  child: Text('Chart!'),
                ),
              ),
              UserTransaction()
            ],
          ),
        ));
  }
}
