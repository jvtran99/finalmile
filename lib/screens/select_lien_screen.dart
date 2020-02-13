import 'package:flutter/material.dart';

import './select_home_screen.dart';
import '../widgets/lien_item.dart';
import '../widgets/menu.dart';
import '../widgets/appbar.dart';
import './recommendations_screen.dart';

class SelectLien extends StatefulWidget {
  static const routeName = '/select-lien';

  @override
  _SelectLienState createState() => _SelectLienState();
}

class _SelectLienState extends State<SelectLien> {
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
      SelectHome.routeName,
    );
  }

  void clickNext(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      Recommendations.routeName,
    );
  }

  Widget _bigDisplay() {
    return SingleChildScrollView(
      child: Container(
        // height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://www.essexhomes.net/storage/app/medialibrary/public/2019/11/48673/conversions/5dd81489aed35696653990-hero.jpg'),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.lightBlue.withOpacity(0.1), BlendMode.dstATop),
          ),
        ),
        alignment: Alignment.topCenter,
        // child: SingleChildScrollView(
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
                child: SingleChildScrollView(
                  child: Container(
                                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: 700,
                      color: Colors.grey[50],
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child: Column(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              buildSectionTitle(context,
                                  'Select which loan you wish to refinance'),
                            ],
                          ),
                          Expanded(
                            child: ListView(
                              children: <Widget>[
                                buildLienItem(context, 'Wells Fargo Home'),
                                buildLienItem(context, 'Chase Bank'),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
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
            Expanded(
              flex: 1,
              child: Container(),
            ),
          ],
        ),
      ),
    );
    // ),
  }

  Widget _smallDisplay() {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://www.essexhomes.net/storage/app/medialibrary/public/2019/11/48673/conversions/5dd81489aed35696653990-hero.jpg'),
            fit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.lightBlue.withOpacity(0.1), BlendMode.dstATop),
          ),
        ),
        alignment: Alignment.topCenter,
        // child: SingleChildScrollView(
        child: Container(
          width: 500,
          color: Colors.grey[50],
          padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
          child: Column(
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  buildSectionTitle(
                      context, 'Select which loan you wish to refinance'),
                ],
              ),
              Container(
                width: double.infinity,
                child: Column(
                  children: <Widget>[
                    Container(
                      // margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Column(children: <Widget>[
                        buildLienItem(context, 'Wells Fargo Home'),
                        buildLienItem(context, 'Chase Bank'),
                      ]),
                    ),
                    SizedBox(height: 20),

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

                    // Container(
                    //   // margin: EdgeInsets.all(30),
                    //   width: double.infinity,
                    //   child: Align(
                    //     alignment: FractionalOffset.bottomCenter,
                    //     child: Row(
                    //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    //       children: <Widget>[
                    //         GestureDetector(
                    //           onTap: () {
                    //             clickBack(context);
                    //             print('Back button hit');
                    //           },
                    //           child: buildCustomButton1(context, 'Back'),
                    //         ),
                    //         Spacer(),
                    //         GestureDetector(
                    //           onTap: () => clickNext(context),
                    //           child: buildCustomButton1(context, 'Next'),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // ),
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: buildAppBar(context, 'Select Lien'),
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
