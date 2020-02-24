import 'package:flutter/material.dart';

Widget buildAddItem(context, String addItemDescription, ) {
  return FlatButton(
    onPressed: () => {},
    hoverColor: Colors.lightBlue,
    child: Row(
      children: <Widget>[
        Icon(Icons.add),
        SizedBox(
          width: 10,
        ),
        Text(
          addItemDescription,
          style: TextStyle(fontSize: 12),
        )
      ],
    ),
  );
}
