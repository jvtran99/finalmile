import 'package:flutter/material.dart';

import './select_lien_screen.dart';

void signIn(BuildContext ctx) {
  Navigator.of(ctx).pushReplacementNamed(
    SelectLien.routeName,
  );
}

class SignIn extends StatelessWidget {
  static const routeName = '/sign-in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          // color: Colors.yellow,
          alignment: Alignment.topCenter,
      child: Container(
        width: 500,
        // color: Colors.red,
        padding: EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 50,
              child: Text('Logo'),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'Sign In',
                    style: Theme.of(context).textTheme.title,
                  ),
                  Text(
                    'Sign Up',
                    style: Theme.of(context).textTheme.title,
                  )
                ],
              ),
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
            Column(
              children: <Widget>[
                FlatButton(
                  onPressed: () => signIn(context),
                  child: Text('Sign in with Email'),
                  color: Colors.teal,
                ),
                Text('------ or -------'),
                FlatButton(
                  onPressed: () {},
                  child: Text('Sign in with Facebook'),
                  color: Colors.teal,
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
