import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  @override
  createState() => SwitchButtonState();
}

class SwitchButtonState extends State<SwitchButton> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isSwitched,
      onChanged: (value) {
        setState(() {
          isSwitched = value;
        });
      },
      activeTrackColor: Colors.yellow[700],
      activeColor: Colors.yellow[900],
    );
  }
}
