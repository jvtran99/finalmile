import 'package:flutter/material.dart';

import './rates_screen.dart';
import './recommendations_screen.dart';
import '../widgets/menu.dart';
import '../widgets/appbar.dart';

class IncomeEmployment extends StatefulWidget {
  static const routeName = '/income-employment';

  @override
  _IncomeEmploymentState createState() => _IncomeEmploymentState();
}

class _IncomeEmploymentState extends State<IncomeEmployment> {
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
      Recommendations.routeName,
    );
  }

  void clickNext(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      RatesScreenRd.routeName,
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
                            buildSectionTitle(context, 'Income and Employment'),
                          ],
                        ),
                        Text(
                            'Instead of manually entering your income and employment information, use our search and share feature to obtain the most accurate information.'),
                        SizedBox(
                          height: 6,
                        ),
                        RaisedButton(
                          onPressed: () {},
                          color: Colors.red,
                          hoverColor: Colors.lightBlue,
                          child: Text(
                            'Start your Income Search',
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "By clicking the button above, you agree that our trusted partners have persmission to share your income information with Certainty.  You authorize Certainty to redirect you to our partners' secure website if necessary.  Your information is subject to the Terms of Use and Privacy Policy of Certainty.",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(height: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            buildSectionTitle(context, 'Employment History'),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Current Job(s)'),
                              Container(
                                width: 121,
                                child: FlatButton(
                                  onPressed: () {},
                                  hoverColor: Colors.lightBlue,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.add),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Add a Job',
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Text('Prior Job(s)'),
                              Container(
                                width: 121,
                                child: FlatButton(
                                  onPressed: () {},
                                  hoverColor: Colors.lightBlue,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.add),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Add a Job',
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                  'Self-Employment, Retirement and Other Income'),
                              Container(
                                width: 172,
                                child: FlatButton(
                                  onPressed: () {},
                                  hoverColor: Colors.lightBlue,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.add),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Add Income Source',
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: 
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
    return 
    // Container(
    //   height: MediaQuery.of(context).size.height,
    //   decoration: BoxDecoration(
    //     image: DecorationImage(
    //       image: NetworkImage(
    //           'https://www.essexhomes.net/storage/app/medialibrary/public/2019/11/48673/conversions/5dd81489aed35696653990-hero.jpg'),
    //       fit: BoxFit.cover,
    //       colorFilter: new ColorFilter.mode(
    //           Colors.lightBlue.withOpacity(0.1), BlendMode.dstATop),
    //     ),
    //   ),
    //   child: 
      Center(
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
                            buildSectionTitle(context, 'Income and Employment'),
                          ],
                        ),
                        Text(
                            'Instead of manually entering your income and employment information, use our search and share feature to obtain the most accurate information.'),
                        SizedBox(
                          height: 6,
                        ),
                        RaisedButton(
                          onPressed: () {},
                          color: Colors.red,
                          hoverColor: Colors.lightBlue,
                          child: Text(
                            'Start your Income Search',
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "By clicking the button above, you agree that our trusted partners have persmission to share your income information with Certainty.  You authorize Certainty to redirect you to our partners' secure website if necessary.  Your information is subject to the Terms of Use and Privacy Policy of Certainty.",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(height: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            buildSectionTitle(context, 'Employment History'),
                          ],
                        ),
                        Container(
                          // color: Colors.blue,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Current Job(s)'),
                              Container(
                                width: 121,
                                child: FlatButton(
                                  onPressed: () {},
                                  hoverColor: Colors.lightBlue,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.add),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Add a Job',
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Text('Prior Job(s)'),
                              Container(
                                width: 121,
                                child: FlatButton(
                                  onPressed: () {},
                                  hoverColor: Colors.lightBlue,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.add),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Add a Job',
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Text(
                                  'Self-Employment, Retirement and Other Income'),
                              Container(
                                width: 172,
                                child: FlatButton(
                                  onPressed: () {},
                                  hoverColor: Colors.lightBlue,
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.add),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'Add Income Source',
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      //   Expanded(
                      //     child: Align(
                      //       alignment: Alignment.bottomRight,
                      //       child: Row(
                      //         mainAxisAlignment: MainAxisAlignment.end,
                      //         children: <Widget>[
                      //           Spacer(),
                      //           FlatButton(
                      //             onPressed: () {
                      //               clickNext(context);
                      //               print(Text('Next button hit'));
                      //             },
                      //             child: Row(
                      //               mainAxisAlignment: MainAxisAlignment.center,
                      //               mainAxisSize: MainAxisSize.min,
                      //               children: <Widget>[
                      //                 Text(
                      //                   'Next',
                      //                   style: TextStyle(
                      //                     color: Colors.cyan[700],
                      //                     fontSize: 20.0,
                      //                   ),
                      //                 ),
                      //                 SizedBox(width: 10.0),
                      //                 Icon(
                      //                   Icons.arrow_forward,
                      //                   color: Colors.cyan[700],
                      //                   size: 20.0,
                      //                 ),
                      //               ],
                      //             ),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      ],
                    ),
                  ),
            ),
          ),
        // ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: buildAppBar(context, "Employment Information"),
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
