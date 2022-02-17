import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_List.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> userTransactions = [
    Transaction(
      id: '001',
      title: 'Shoes',
      amount: 1200,
      date: DateTime.now(),
    ),
    Transaction(
      id: '002',
      title: 'Hoodie',
      amount: 2500,
      date: DateTime.now(),
    ),
  ];

  void addTransaction(String title, int amount) {
    final newTxn = Transaction(
      id: DateTime.now().toString(),
      date: DateTime.now(),
      title: title,
      amount: amount,
    );

    setState(() {
      userTransactions.add(newTxn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(addTransaction),
        TransactionList(userTransactions),
      ],
    );
  }
}
