import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_expenses/models/transaction.dart';

class TransactionListPage extends StatelessWidget {
  final List<Transaction> _userTransactions;

  TransactionListPage(this._userTransactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransactions.map((tx) {
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
    );
  }
}
