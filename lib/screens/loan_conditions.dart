import 'package:flutter/material.dart';

import '../widgets/menu.dart';
import '../widgets/appbar.dart';
import './underwriting_analyze_screen.dart';
import '../widgets/loan_condition_item.dart';

class LoanConditions extends StatefulWidget {
  static const routeName = '/loan-approved';

  @override
  _LoanConditionsState createState() => _LoanConditionsState();
}

class _LoanConditionsState extends State<LoanConditions> {
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
      AnalyzingLoan.routeName,
    );
  }

  void clickNext(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      LoanConditions.routeName,
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
                    // color: Colors.grey[50],
                    color: Colors.grey[50],
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      buildSectionTitle(context, 'Congratulations!'),
                    ],
                  ),
                  Text(
                      'Your loan has been approved.  It looks like there are a few conditions your approval is subject to.  Below are a list of conditions we\'ll need your help with.  '),
                  // SizedBox(
                  //   height: 6,
                  // ),
                  Divider(),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: <Widget>[
                  //     buildSectionTitle(context, 'My Loan Conditions'),
                  //   ],
                  // ),
                  Expanded(
                                      child: ListView(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('My Loan Conditions'),
                        buildConditionItems(
                            context,
                            'Initial Loan Disclosures',
                            'Acknoledge receiving required Upfront Loan Disclouses.',
                            'Incomplete',
                            'Now',
                            Icon(Icons.assignment, size: 40)),
                        buildConditionItems(
                            context,
                            'Loan Estimate',
                            'Acknowledge receiving Initial Loan Estimate',
                            'Incomplete',
                            'NULL',
                            Icon(
                              Icons.assignment,
                              size: 40,
                            )),
                        buildConditionItems(
                          context,
                          'Lock',
                          'Lock in your interest rate',
                          'Incomplete',
                          'NULL',
                          Icon(Icons.lock_open,
                              size: 40,),
                        ),
                        buildConditionItems(
                          context,
                          'Homeowner Insurance',
                          'Provide a copy of your active Homeowner\'s Insurance policy',
                          'Incomplete',
                          'NULL',
                          Icon(Icons.cloud_upload,
                              size: 40,),
                        ),
                        buildConditionItems(
                          context,
                          'Property',
                          'Provide a copy of your Survey',
                          'Incomplete',
                          'NULL',
                          Icon(Icons.cloud_upload,
                              size: 40,),
                        ),
                        buildConditionItems(
                          context,
                          'Title',
                          'Order Title Insurance from First American Title Insurance Co.',
                          'Pending',
                          '3 days',
                          Icon(Icons.autorenew,
                              size: 40,),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: FractionalOffset.bottomRight,
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            clickBack(context);
                            print(Text('Next button hit'));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.arrow_back,
                                color: Colors.cyan[700],
                                size: 20.0,
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                'Back',
                                style: TextStyle(
                                  color: Colors.cyan[700],
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
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
              ),
             ),
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
    return Center(
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      buildSectionTitle(context, 'Congratulations!'),
                    ],
                  ),
                  Text(
                      'Your loan has been approved.  It looks like there are a few conditions your approval is subject to.  Below are a list of conditions we\'ll need your help with.  '),
                  // SizedBox(
                  //   height: 6,
                  // ),
                  Divider(),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  //   children: <Widget>[
                  //     buildSectionTitle(context, 'My Loan Conditions'),
                  //   ],
                  // ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('My Loan Conditions'),
                      buildConditionItems(
                          context,
                          'Initial Loan Disclosures',
                          'Acknoledge receiving required Upfront Loan Disclouses.',
                          'Incomplete',
                          'Now',
                          Icon(Icons.assignment, size: 40)),
                      buildConditionItems(
                          context,
                          'Loan Estimate',
                          'Acknowledge receiving Initial Loan Estimate',
                          'Incomplete',
                          'NULL',
                          Icon(
                            Icons.assignment,
                            size: 40,
                          )),
                      buildConditionItems(
                        context,
                        'Lock',
                        'Lock in your interest rate',
                        'Incomplete',
                        'NULL',
                        Icon(Icons.lock_open,
                            size: 40,),
                      ),
                      buildConditionItems(
                        context,
                        'Homeowner Insurance',
                        'Provide a copy of your active Homeowner\'s Insurance policy',
                        'Incomplete',
                        'NULL',
                        Icon(Icons.cloud_upload,
                            size: 40,),
                      ),
                      buildConditionItems(
                        context,
                        'Property',
                        'Provide a copy of your Survey',
                        'Incomplete',
                        'NULL',
                        Icon(Icons.cloud_upload,
                            size: 40,),
                      ),
                      buildConditionItems(
                        context,
                        'Title',
                        'Order Title Insurance from First American Title Insurance Co.',
                        'Pending',
                        '3 days',
                        Icon(Icons.autorenew,
                            size: 40,),
                      ),
                    ],
                  ),
                  Align(
                    alignment: FractionalOffset.bottomRight,
                    child: Row(
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {
                            clickBack(context);
                            print(Text('Next button hit'));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.arrow_back,
                                color: Colors.cyan[700],
                                size: 20.0,
                              ),
                              SizedBox(width: 10.0),
                              Text(
                                'Back',
                                style: TextStyle(
                                  color: Colors.cyan[700],
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
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
              ),
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
      appBar: buildAppBar(context, "Loan Conditions"),
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
