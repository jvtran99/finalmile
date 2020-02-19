import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import './rates_screen.dart';
import '../widgets/menu.dart';
import '../widgets/appbar.dart';
import './assets_screen.dart';

class SearchBank extends StatefulWidget {
  static const routeName = '/search-bank';

  @override
  _SearchBankState createState() => _SearchBankState();
}

class _SearchBankState extends State<SearchBank> {
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
      AssetDetails.routeName,
    );
  }

  void clickNext(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      RatesScreenRd.routeName,
    );
  }

  List colors = [
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.blue,
    Colors.purple,
    Colors.grey,
    Colors.lightBlue,
    Colors.green,
    Colors.yellow,
    Colors.red,
    Colors.purple,
  ];

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
                            buildSectionTitle(context, 'Find your account'),
                          ],
                        ),
                        Text(
                            'Find your financial checking, savings, or investment account so we can validate your assets.'),
                        SizedBox(
                          height: 30,
                        ),
                        TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                              // labelText: "Search for your bank here",
                              hintText: "Search for your bank here",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)))),
                        ),
                        SizedBox(height: 30),
                        Container(
                          width: double.infinity,
                          child: Text(
                            'Or select from popular ones',
                            // style: TextStyle(fontSize: 12),
                          ),
                        ),
                        SizedBox(height: 10),
                        Expanded(
                          flex: 7,
                          child: GridView.count(
                            crossAxisCount: 4,
                            children: List.generate(11, (int index) {
                              return Container(
                                width: 60,
                                margin: EdgeInsets.all(8),
                                color: colors[index],
                                child: Center(child: Text('Bank $index')),
                              );
                            }),
                          ),
                        ),
                        Expanded(
                          flex: 2,
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
