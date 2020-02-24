import 'package:flutter/material.dart';

import './underwriting_screen.dart';
import '../widgets/menu.dart';
import '../widgets/appbar.dart';
import '../widgets/stepper.dart';

class AnalyzingLoan extends StatefulWidget {
  static const routeName = '/analyzing-underwriting';

  @override
  _AnalyzingLoanState createState() => _AnalyzingLoanState();
}

class _AnalyzingLoanState extends State<AnalyzingLoan> {
  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  void clickBack(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      UnderwritingScreen.routeName,
    );
  }

  void clickNext(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      AnalyzingLoan.routeName,
    );
  }

  Widget _bigDisplay() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://www.essexhomes.net/storage/app/medialibrary/public/2019/11/48673/conversions/5dd81489aed35696653990-hero.jpg'),
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.lightBlue.withOpacity(0.6), BlendMode.dstATop),
        ),
      ),
      child: Row(children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(),
        ),
        Expanded(
          flex: 3,
          child: Container(
            child: Container(
              alignment: Alignment.topCenter,
              child: SingleChildScrollView(
                child: Container(
                  child: Container(
                      height: MediaQuery.of(context).size.height - 40,
                      width: 700,
                      color: Colors.grey[50],
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: StepperWidget(),
                          ),
                          SizedBox(height: 30),
                          Container(
                            width: 300,
                            child: RaisedButton(
                              onPressed: () {},
                              color: Colors.lightBlue,
                              hoverColor: Colors.red[600],
                              child: Text(
                                'See if I\'m Approved',
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Spacer(),
                                  FlatButton(
                                    onPressed: () {
                                      clickNext(context);
                                      print(Text('Next button hit'));
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          'Next',
                                          style: TextStyle(
                                            color: Colors.cyan[700],
                                            fontSize: 20.0,
                                          ),
                                        ),
                                        SizedBox(width: 10.0),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.cyan[700],
                                          size: 20.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
      ]),
    );
  }

  Widget _smallDisplay() {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Center(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            alignment: Alignment.topCenter,
            width: 500,
            child: SingleChildScrollView(
              child: Container(
                  color: Colors.grey[50],
                  padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: StepperWidget(),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: 300,
                        child: RaisedButton(
                          onPressed: () {},
                          color: Colors.lightBlue,
                          hoverColor: Colors.red[600],
                          child: Text(
                            'See if I\'m Approved',
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Spacer(),
                            FlatButton(
                              onPressed: () {
                                clickNext(context);
                                print(Text('Next button hit'));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    'Next',
                                    style: TextStyle(
                                      color: Colors.cyan[700],
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  SizedBox(width: 10.0),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Colors.cyan[700],
                                    size: 20.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: buildAppBar(context, "Analyzing your loan"),
      drawer: MenuDrawer(),
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 500) {
          return _bigDisplay();
        } else {
          return _smallDisplay();
        }
      }),
    );
  }
}
