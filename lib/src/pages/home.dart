import 'package:flutter/material.dart';
import 'package:my_expenses/src/pages/user_transactions.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Expenses"),
      ),
      body: SingleChildScrollView(
        child: Column(
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
            UserTransactionsPage(),
          ],
        ),
      ),
    );
  }
}
