import 'package:flutter/material.dart';

import './assets_filled_screen.dart';
import '../widgets/menu.dart';
import '../widgets/appbar.dart';
import './underwriting_screen.dart';

class CreditReport extends StatefulWidget {
  static const routeName = '/credit-report';

  @override
  _CreditReportState createState() => _CreditReportState();
}

class _CreditReportState extends State<CreditReport> {
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
      AssetDetailsFilled.routeName,
    );
  }

  void clickNext(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      UnderwritingScreen.routeName,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        buildSectionTitle(context,
                            'Order your Credit Report'),
                      ],
                    ),
                    Text(
                        'Now that we\'ve gathered all of your property and personal details, it\'s time to order your credit report.  In order to proceed with this step, we will need a few details and your authorization.'),
                    SizedBox(
                      height: 6,
                    ),
                    Text('Credit Report'),
                    SizedBox(
                      height: 6,
                    ),
                   Container(
                    padding: EdgeInsets.fromLTRB(50, 20, 50, 10),
                    color: Colors.grey[200],
                    child: Column(
                      children: <Widget>[
                        // SizedBox(height: 30),
                        Text('Please enter  or confirm your Birthdate'),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '04/29/1975'),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('Please enter or confirm your Social Security #'),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'XXX-XX-0987'),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('Please enter or confirm your Phone#'),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '514-555-3584'),
                          ),
                        ),
                      ],
                    ),
                  ),
                    SizedBox(height: 30),
                    Text(
                      "By clicking the button above, you are authorizing Certainty to access your credit report for the purpose of a mortgage inquiry and you acknowledge consent and agree to the terms at the bottom of this page.",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 30),
                    // Expanded(
                    //   child:
                    Container(
                    width: 300,
                    child: RaisedButton(
                      onPressed: (){
                        clickNext(context);
                      },
                      color: Colors.lightBlue,
                      hoverColor: Colors.red[600],
                      child: Text(
                        'Order Credit Report',
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
                        //   ),
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
                padding: EdgeInsets.fromLTRB(30, 10, 30, 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        buildSectionTitle(context,
                            'Order your Credit Report'),
                      ],
                    ),
                    Text(
                        'Now that we\'ve gathered all of your property and personal details, it\'s time to order your credit report.  In order to proceed with this step, we will need a few details and your authorization.'),
                    SizedBox(
                      height: 6,
                    ),
                    Text('Credit Report'),
                    SizedBox(
                      height: 6,
                    ),
                   Container(
                    padding: EdgeInsets.fromLTRB(50, 20, 50, 10),
                    color: Colors.grey[200],
                    child: Column(
                      children: <Widget>[
                        // SizedBox(height: 30),
                        Text('Please enter  or confirm your Birthdate'),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '04/29/1975'),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('Please enter or confirm your Social Security #'),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'XXX-XX-0987'),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('Please enter or confirm your Phone#'),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '514-555-3584'),
                          ),
                        ),
                      ],
                    ),
                  ),
                    SizedBox(height: 30),
                    Text(
                      "By clicking the button above, you are authorizing Certainty to access your credit report for the purpose of a mortgage inquiry and you acknowledge consent and agree to the terms at the bottom of this page.",
                      style: TextStyle(fontSize: 12),
                    ),
                    SizedBox(height: 30),
                    // Expanded(
                    //   child:
                    Container(
                    width: 300,
                    child: RaisedButton(
                      onPressed: (){
                        clickNext(context);
                      },
                      color: Colors.lightBlue,
                      // hoverColor: Colors.lightBlue,
                      child: Text(
                        'Order Credit Report',
                      ),
                    ),
                  ),
                    // Align(
                    //   alignment: Alignment.bottomRight,
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.end,
                    //     children: <Widget>[
                    //       Spacer(),
                    //       FlatButton(
                    //         onPressed: () {
                    //           clickNext(context);
                    //           print(Text('Next button hit'));
                    //         },
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.center,
                    //           mainAxisSize: MainAxisSize.min,
                    //           children: <Widget>[
                    //             Text(
                    //               'Next',
                    //               style: TextStyle(
                    //                 color: Colors.cyan[700],
                    //                 fontSize: 20.0,
                    //               ),
                    //             ),
                    //             SizedBox(width: 10.0),
                    //             Icon(
                    //               Icons.arrow_forward,
                    //               color: Colors.cyan[700],
                    //               size: 20.0,
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    //   //   ),
                    // ),
                  ],
                ),
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
      appBar: buildAppBar(context, "Credit Report Information"),
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
