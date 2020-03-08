import 'package:flutter/material.dart';

import './assets_filled_screen.dart';

void signIn(BuildContext ctx) {
  Navigator.of(ctx).pushReplacementNamed(
    AssetDetailsFilled.routeName,
  );
}

class SignIn extends StatelessWidget {
  static const routeName = '/sign-in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      alignment: Alignment.topCenter,
      child: Container(
        width: 500,
        // color: Colors.red,
        padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10),
              // color: Colors.red,
              height: 300,
              child: Center(
                child: 
                // Text('Logo')
                Image.network(
                  'https://www.underconsideration.com/brandnew/archives/bank_of_america_logo_stacked_a.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'Connect your Account',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.people), hintText: 'Email'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock), hintText: 'Password'),
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: <Widget>[
                Container(
                  width: 300,
                  child: FlatButton(
                    onPressed: () {
                      signIn(context);
                    },
                    child: Text('Connect', style: TextStyle(color: Colors.white),),
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
