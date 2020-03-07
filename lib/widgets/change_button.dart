import 'package:flutter/material.dart';


class ChangeButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ChangeButtonState();
  }
}

class _ChangeButtonState extends State<ChangeButton> {
  Color _myColor = Colors.black;
  Color _bgButton = Colors.grey[300];
  String _myAccountState = "YES";

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
                  _myAccountState = "YES";
                  _myColor = Colors.black;
                  _bgButton = Colors.grey[300];
                }
                else {
                  _myAccountState = "YES";
                  _myColor = Colors.white;
                  _bgButton = Colors.lightBlue;
                }
              });
            },

    );
  }

}