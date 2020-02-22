import 'package:flutter/material.dart';

Widget buildAssetItem(context, String accountType, String accountName, String accountNumber, String accountBalance,) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5),
    padding: EdgeInsets.all(10),
    color: Colors.grey[300],
    child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(children: <Widget>[
            Text(
              'Account Type',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(Icons.edit),
          ]),
          Text(accountType),
          SizedBox(
            height: 10,
          ),
          Text(
            'Account Name',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(accountName),
          Text(accountNumber),
          SizedBox(
            height: 10,
          ),
          Text(
            'Account Balance',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text('\$$accountBalance'),
        ]),
  );
}
