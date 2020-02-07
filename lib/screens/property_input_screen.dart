import 'package:flutter/material.dart';


import './sign_in_screen.dart';
import './loan_purpose_screen.dart';
import '../widgets/custombutton.dart';

class PropertyInput extends StatelessWidget {
  static const routeName = '/property-input';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  void clickBack(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      SignIn.routeName,
    );
  }

  void clickNext(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      LoanPurpose.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Enter Address'),
        // leading: Container(),
      ),
      body: Center(
        child: Container(
          width: 500,
          // padding: EdgeInsets.all(30),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        buildSectionTitle(context,
                            'What is the address of the property you are refinancing?'),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Street Address'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: 'City'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: 'State'),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(), hintText: 'Zipcode'),
                      ),
                    ),
                  ],
                ),
              ),
              // Positioned(
              //   child: Container(
              //     width: double.infinity,
              //     // color: Theme.of(context).accentColor,
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: <Widget>[
              //         GestureDetector(
              //           onTap: () => clickBack(context),
              //           child: buildCustomButton(context, 'Back'),
              //         ),
              //         Spacer(),
              //         GestureDetector(
              //           onTap: () => clickNext(context),
              //           child: buildCustomButton(context, 'Next'),
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              Positioned(
                child: Container(
                  margin: EdgeInsets.all(30),
                  width: double.infinity,
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            clickBack(context);
                            print('Back button hit');
                          },
                          child: buildCustomButton1(context, 'Back'),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () => clickNext(context),
                          child: buildCustomButton1(context, 'Next'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
