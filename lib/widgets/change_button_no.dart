import 'package:flutter/material.dart';


class ChangeButtonNo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ChangeButtonNoState();
  }
}

class _ChangeButtonNoState extends State<ChangeButtonNo> {
  Color _myColor = Colors.black;
  Color _bgButton = Colors.grey[300];
  String _myAccountState = "NO";

  @override
  Widget build(BuildContext context) {
    return 
          GestureDetector(
            child: new Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 8),            
              decoration: new BoxDecoration(color: _bgButton),
              child: new Text(
                _myAccountState, style: new TextStyle(color: _myColor),),
            ),
            onTap: () {
              setState(() {
                if (_bgButton == Colors.lightBlue) {
                  _myAccountState = "NO";
                  _myColor = Colors.black;
                  _bgButton = Colors.grey[300];
                }
                else {
                  _myAccountState = "NO";
                  _myColor = Colors.white;
                  _bgButton = Colors.lightBlue;
                }
              });
            },

    );
  }

}