import 'package:flutter/material.dart';
import 'package:my_expenses/models/transaction.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 'T1', amount: 69.99, date: DateTime.now(), title: 'Zapatos'),
    Transaction(
        id: 'T2', amount: 9.99, date: DateTime.now(), title: 'Videojuegos'),
    Transaction(
        id: 'T3', amount: 89.99, date: DateTime.now(), title: 'Alimentación'),
    Transaction(
        id: 'T4', amount: 89.99, date: DateTime.now(), title: 'Alimentación'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Expenses"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            width: double.infinity,
            child: Card(
              child: Text(
                'CHART!',
                style: TextStyle(color: Colors.white),
              ),
              elevation: 5,
              color: Colors.blue,
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("\$ ${tx.amount}"),
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: Colors.purple,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(tx.title),
                        Text(DateFormat('yyyy-MM-dd').format(tx.date)),
                      ],
                    ),
                    FlatButton(
                      onPressed: null,
                      child: Icon(
                        Icons.delete,
                      ),
                    )
                  ],
                ),
                elevation: 8,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
