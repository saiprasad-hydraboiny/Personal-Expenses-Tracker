import 'package:flutter/material.dart';
import './new_transaction.dart';
import './transaction_list.dart';

import '../models/Transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'Iphone',
      amount: 79.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Airpods',
      amount: 29.99,
      date: DateTime.now(),
    ),
  ];
  void _addNewTransaction(String txtitle, double txamount) {
    final newTx = Transaction(
      id: DateTime.now().toString(),
      title: txtitle,
      amount: txamount,
      date: DateTime.now(),
    );
    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        Transactionlist(_userTransactions),
      ],
    );
  }
}
