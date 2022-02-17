import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTxn;
  final itemInput = TextEditingController();
  final amountInput = TextEditingController();

  NewTransaction(this.addTxn);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Item'),
              controller: itemInput,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountInput,
            ),
            TextButton(
              onPressed: (() {
                addTxn(
                  itemInput.text,
                  int.parse(amountInput.text),
                );
              }),
              child: Text('Add Transaction'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.purple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
