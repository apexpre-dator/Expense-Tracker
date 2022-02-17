import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTxn;
  final itemInput = TextEditingController();
  final amountInput = TextEditingController();

  NewTransaction(this.addTxn);

  void submitData() {
    final enteredItem = itemInput.text;
    final enteredAmount = int.parse(amountInput.text);

    if(enteredItem.isEmpty || enteredAmount <= 0) {
      return ;
    }

    addTxn(
      enteredItem,
      enteredAmount,
    );
  }

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
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountInput,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            TextButton(
              onPressed: submitData,
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
