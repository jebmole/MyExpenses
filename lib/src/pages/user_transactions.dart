import 'package:flutter/material.dart';
import 'package:my_expenses/models/transaction.dart';
import 'package:my_expenses/src/pages/new_transaction.dart';
import 'package:my_expenses/src/pages/transaction_list.dart';

class UserTransactionsPage extends StatefulWidget {
  @override
  _UserTransactionsPageState createState() => _UserTransactionsPageState();
}

class _UserTransactionsPageState extends State<UserTransactionsPage> {
  final List<Transaction> _userTransactions = [
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
    return Column(
      children: [
        NewTransactionPage(_addTransaction),
        TransactionListPage(_userTransactions),
      ],
    );
  }

  void _addTransaction(String title, double amount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    setState(() {
      _userTransactions.add(newTx);
    });
  }
}
