import 'package:flutter/material.dart';


Widget buildConditionItems(context, String type, String condition, String status, String dueDate, Icon icon) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 5),
    padding: EdgeInsets.all(10),
    color: Colors.grey[300],
    child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(flex: 1, child: Text('Type:')),
              Expanded(flex: 4, child: Text(type))
            ],
          ),
          SizedBox(height: 10),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(flex: 1, child: Text('Condition:')),
              Expanded(
                  flex: 3,
                  child: Text(
                      condition)),
              Expanded(flex: 1, child: icon),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: <Widget>[
              Expanded(flex: 1, child: Text('Status:')),
              Expanded(flex: 1, child: Text(status)),
              Expanded(flex: 1, child: Container()),
              Expanded(flex: 1, child: Text('Due Date:')),
              Expanded(flex: 1, child: Text(dueDate)),
            ],
          )
        ]),
  );
}
