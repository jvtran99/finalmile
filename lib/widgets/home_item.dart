import 'package:flutter/material.dart';

Widget buildHomeItem(context, Image image) {


  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
    elevation: 4,
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      children: <Widget>[
        Stack(children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: image,
          ),
          Positioned(
            bottom: 5,
            // right: 10,
            child: Container(
              width: 300,
              color: Colors.black54,
              padding: EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 20,
              ),
              child: Text(
                '123 Congress St. Austin, TX 78723',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
                softWrap: true,
                overflow: TextOverflow.fade,
              ),
            ),
          )
        ]),
      ],
    ),
  );
}
