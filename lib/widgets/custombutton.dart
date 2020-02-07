import 'package:flutter/material.dart';


  Widget buildCustomButton1(BuildContext contex, String text) {
    return Container(
      height: 35,
      width: 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.lightBlue,
            Colors.lightBlue[200],
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(5),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black12,
        //     offset: Offset(5, 5),
        //     blurRadius: 10,
        //   )
        // ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
