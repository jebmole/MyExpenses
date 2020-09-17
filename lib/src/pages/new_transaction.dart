import 'package:flutter/material.dart';

class NewTransactionPage extends StatelessWidget {
  /*String titleInput;
  String amountInput;*/
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransactionPage(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              /*onChanged: (value) {
                      titleInput = value;
                    },*/
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              keyboardType: TextInputType.number,
              controller: amountController,
              //onChanged: (value) => amountInput = value,
            ),
            FlatButton(
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
              child: Text('Add transaction'),
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
      elevation: 5,
    );
  }
}
