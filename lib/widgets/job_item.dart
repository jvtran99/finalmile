import 'package:flutter/material.dart';

Widget buildJobItem(
    context, String company, String position, String sinceDate) {
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
              company,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Spacer(),
            Icon(Icons.edit),
          ]),
          Text('(512)555-5654'),
          Text(position),
          Text('since $sinceDate'),
        ]),
  );
}
