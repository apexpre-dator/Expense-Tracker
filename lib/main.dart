import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Text('Chart'),
            ),
          ),
          Column(
            children: transactions.map((txn) {
              return Card(child: Text(txn.title),);
            }).toList(),
          ),
        ],
      ),
    );
  }
}
