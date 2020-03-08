import 'package:flutter/material.dart';

import '../widgets/checkbox.dart';
import '../widgets/menu.dart';
import '../widgets/appbar.dart';
import './select_home_screen.dart';
import './personal_info_screen.dart';

// TODO Create a buildermethod for box Container. This makes it easier to edit and add data model
// TODO Update back and next button

class LoanPurpose extends StatefulWidget {
  static const routeName = '/loan-purpose';

  @override
  _LoanPurposeState createState() => _LoanPurposeState();
}

class _LoanPurposeState extends State<LoanPurpose> {
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
      PersonalInfo.routeName,
    );
  }

  void clickNext(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      SelectHome.routeName,
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
              Colors.lightBlue.withOpacity(0.1), BlendMode.dstATop),
        ),
      ),
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
                          child: Container(
                width: 700,
                alignment: Alignment.topCenter,
                color: Colors.grey[50],
                // padding: EdgeInsets.all(30),
                child: SingleChildScrollView(
                  child: Container(
                    // color: Colors.grey[50],
                    height: MediaQuery.of(context).size.height - 40,
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            buildSectionTitle(context, 'Let\'s Get Started'),
                          ],
                        ),
                        Container(
                          // padding: EdgeInsets.all(18),
                          // height: 460,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              // border: Border.all(
                              //   width: 2,
                              //   color: Colors.black,
                              // ),
                              // color: Colors.teal,
                              ),
                          child: Column(
                            children: <Widget>[
                              Center(
                                heightFactor: 2,
                                child: Text(
                                  'Tell Us What You Want to Accomplish',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 18),
                                margin: EdgeInsets.symmetric(vertical: 5),
                                width: double.infinity,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black54,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Expanded(
                                        flex: 4,
                                        child: Text('Lower My Monthly Payment')),
                                    CheckBoxWidget(),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 18),
                                margin: EdgeInsets.symmetric(vertical: 5),
                                width: double.infinity,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black54,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Expanded(
                                        flex: 4,
                                        child:
                                            Text('Pay Off My Mortgage Faster')),
                                    CheckBoxWidget(),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 18),
                                margin: EdgeInsets.symmetric(vertical: 5),
                                width: double.infinity,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(
                                    width: 2,
                                    color: Colors.black54,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Expanded(
                                        flex: 4,
                                        child: Text('Get Cash From My Home')),
                                    CheckBoxWidget(),
                                  ],
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

                        // Expanded(
                        //   child: Container(
                        //     // margin: EdgeInsets.all(30),
                        //     width: double.infinity,
                        //     child: Align(
                        //       alignment: FractionalOffset.bottomCenter,
                        //       child: Row(
                        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        //         children: <Widget>[
                        //           GestureDetector(
                        //             onTap: () {
                        //               clickBack(context);
                        //               print('Back button hit');
                        //             },
                        //             child: buildCustomButton1(context, 'Back'),
                        //           ),
                        //           Spacer(),
                        //           GestureDetector(
                        //             onTap: () => clickNext(context),
                        //             child: buildCustomButton1(context, 'Next'),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
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
    );
  }

  Widget _smallDisplay() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(
              'https://www.essexhomes.net/storage/app/medialibrary/public/2019/11/48673/conversions/5dd81489aed35696653990-hero.jpg'),
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.lightBlue.withOpacity(0.1), BlendMode.dstATop),
        ),
      ),
      child: Center(
        child: Container(
          alignment: Alignment.topCenter,
          width: 500,
          // padding: EdgeInsets.all(30),
          child: SingleChildScrollView(
            child: Container(
              color: Colors.grey[50],
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      buildSectionTitle(context, 'Let\'s Get Started'),
                    ],
                  ),
                  Container(
                    // padding: EdgeInsets.all(18),
                    // height: 460,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        // border: Border.all(
                        //   width: 2,
                        //   color: Colors.black,
                        // ),
                        // color: Colors.teal,
                        ),
                    child: Column(
                      children: <Widget>[
                        Center(
                          heightFactor: 2,
                          child: Text(
                            'Tell Us What You Want to Accomplish',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          margin: EdgeInsets.symmetric(vertical: 5),
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 2,
                              color: Colors.black54,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(
                                  flex: 4,
                                  child: Text('Lower My Monthly Payment')),
                              CheckBoxWidget(),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          margin: EdgeInsets.symmetric(vertical: 5),
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 2,
                              color: Colors.black54,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(
                                  flex: 4,
                                  child: Text('Pay Off My Mortgage Faster')),
                              CheckBoxWidget(),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 18),
                          margin: EdgeInsets.symmetric(vertical: 5),
                          width: double.infinity,
                          height: 80,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              width: 2,
                              color: Colors.black54,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(
                                  flex: 4,
                                  child: Text('Get Cash From My Home')),
                              CheckBoxWidget(),
                            ],
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

                  // Expanded(
                  //   child: Container(
                  //     // margin: EdgeInsets.all(30),
                  //     width: double.infinity,
                  //     child: Align(
                  //       alignment: FractionalOffset.bottomCenter,
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //         children: <Widget>[
                  //           GestureDetector(
                  //             onTap: () {
                  //               clickBack(context);
                  //               print('Back button hit');
                  //             },
                  //             child: buildCustomButton1(context, 'Back'),
                  //           ),
                  //           Spacer(),
                  //           GestureDetector(
                  //             onTap: () => clickNext(context),
                  //             child: buildCustomButton1(context, 'Next'),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
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
      appBar: buildAppBar(context, 'Loan Purpose'),
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
