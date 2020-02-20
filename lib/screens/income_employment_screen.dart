import 'package:flutter/material.dart';

import './recommendations_screen.dart';
import '../widgets/menu.dart';
import '../widgets/appbar.dart';
import './assets_screen.dart';

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
      AssetDetails.routeName,
    );
  }

  void _showModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            decoration: new BoxDecoration(color: Colors.transparent),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: Alignment.topCenter,
                    // width: 700,
                    // padding: EdgeInsets.symmetric(horizontal: 20),
                    // color: Colors.blue,
                    child: new Container(
                      padding: EdgeInsets.fromLTRB(50, 20, 50, 10),
                      width: 700,
                      color: Colors.grey[200],
                      child: Column(
                        children: <Widget>[
                          Text(
                              'Let\'s begin by collecting some info about you to see if we can find your income information'),
                          SizedBox(height: 30),
                          Text('Please enter your Date of Birth'),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: '02/12/2020'),
                            ),
                          ),
                          SizedBox(height: 20),
                          Text('Please enter your Social Security #'),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'XXX-XX-0987'),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: 200,
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            color: Colors.red,
                            child: FlatButton(
                              onPressed: () {},
                              child: Text('Find my Income'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(),
                ),
              ],
            ),
          );
        });
  }

  void _showModalSheetSm() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
            decoration: new BoxDecoration(color: Colors.transparent),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: new Container(
                    padding: EdgeInsets.fromLTRB(50, 20, 50, 10),
                    // width: 500,
                    color: Colors.grey[200],
                    child: Column(
                      children: <Widget>[
                        Text(
                            'Let\'s begin by collecting some info about you to see if we can find your income information'),
                        SizedBox(height: 30),
                        Text('Please enter your Date of Birth'),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: '02/12/2020'),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text('Please enter your Social Security #'),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 5),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'XXX-XX-0987'),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 200,
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          color: Colors.red,
                          child: FlatButton(
                            onPressed: () {},
                            child: Text('Find my Income'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
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
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                          onPressed: _showModalSheet,
                          color: Colors.lightBlue,
                          hoverColor: Colors.red[600],
                          child: Text(
                            'Start your Income Search',
                            style: TextStyle(color: Colors.white),
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
                          child: Align(
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
    return Center(
      child: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          alignment: Alignment.topCenter,
          width: 500,
          child: Container(
            color: Colors.grey[50],
            padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
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
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  onPressed: _showModalSheetSm,
                  color: Colors.lightBlue,
                  hoverColor: Colors.red[600],
                  child: Text(
                    'Start your Income Search',
                    style: TextStyle(color: Colors.white),
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
                      Text('Self-Employment, Retirement and Other Income'),
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
                Spacer(),
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
