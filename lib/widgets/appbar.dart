import 'package:flutter/material.dart';

Widget buildAppBar(BuildContext context, String title) {
  return PreferredSize(
    preferredSize: Size.fromHeight(35.0),
    child: AppBar(
      title: Text(
        title,
        style: TextStyle(fontSize: 14, color: Colors.white),
      ),
      leading: Builder(
        builder: (context) => IconButton(
          icon: new Icon(
            Icons.menu,
            size: 18,
            color: Colors.white,
          ),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
      ),
    ),
  );
}
