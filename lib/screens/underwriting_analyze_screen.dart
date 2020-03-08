import 'package:flutter/material.dart';
import 'package:animator/animator.dart';

import './underwriting_screen.dart';
import '../widgets/menu.dart';
import '../widgets/appbar.dart';
import '../widgets/stepper.dart';
import './loan_conditions.dart';

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
    Navigator.of(ctx).pushNamed(
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
                          // Expanded(
                          //   child: Align(
                          //     alignment: Alignment.bottomRight,
                          //     child: Row(
                          //       mainAxisAlignment: MainAxisAlignment.end,
                          //       children: <Widget>[
                          //         Spacer(),
                          //         FlatButton(
                          //           onPressed: () {
                          //             clickNext(context);
                          //             print(Text('Next button hit'));
                          //           },
                          //           child: Row(
                          //             mainAxisAlignment:
                          //                 MainAxisAlignment.center,
                          //             mainAxisSize: MainAxisSize.min,
                          //             children: <Widget>[
                          //               Text(
                          //                 'Next',
                          //                 style: TextStyle(
                          //                   color: Colors.cyan[700],
                          //                   fontSize: 20.0,
                          //                 ),
                          //               ),
                          //               SizedBox(width: 10.0),
                          //               Icon(
                          //                 Icons.arrow_forward,
                          //                 color: Colors.cyan[700],
                          //                 size: 20.0,
                          //               ),
                          //             ],
                          //           ),
                          //         ),
                          //       ],
                          //     ),
                          //   ),
                          // )
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
      // height: MediaQuery.of(context).size.height,
      child: Center(
        // child: SingleChildScrollView(
          child: Container(
            // height: MediaQuery.of(context).size.height,
            alignment: Alignment.topCenter,
            width: 500,
            // child: SingleChildScrollView(
              child: Container(
                color: Colors.grey[50],
                margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                // child: Column(
                //   children: <Widget>[
                //     Container(
                //       child: StepperWidget(),
                //     ),
                //     SizedBox(height: 30),
                //     Container(
                //       width: 300,
                //       child: RaisedButton(
                //         onPressed: () {
                //           clickNext(context);
                //         },
                //         color: Colors.lightBlue,
                //         // hoverColor: Colors.lightBlue,
                //         child: Text(
                //           'See if I\'m Approved', style: TextStyle(color: Colors.white),
                //         ),
                //       ),
                //     ),

                //   ],
                // )

                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              children: <Widget>[
                                Animator(
                                  duration: Duration(milliseconds: 600),
                                  repeats: 4,
                                  builder: (anim) => FadeTransition(
                                    opacity: anim,
                                    child: Icon(
                                      Icons.check_box,
                                      size: 35,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Identity',
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              children: <Widget>[
                                Animator(
                                  duration: Duration(milliseconds: 700),
                                  repeats: 6,
                                  builder: (anim) => FadeTransition(
                                    opacity: anim,
                                    child: Icon(
                                      Icons.check_box,
                                      size: 35,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Credit',
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              children: <Widget>[
                                Animator(
                                  duration: Duration(milliseconds: 700),
                                  repeats: 8,
                                  builder: (anim) => FadeTransition(
                                    opacity: anim,
                                    child: Icon(
                                      Icons.check_box,
                                      size: 35,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Employment & Income',
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              children: <Widget>[
                                Animator(
                                  duration: Duration(milliseconds: 750),
                                  repeats: 11,
                                  builder: (anim) => FadeTransition(
                                    opacity: anim,
                                    child: Icon(
                                      Icons.check_box,
                                      size: 35,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Assets',
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              children: <Widget>[
                                Animator(
                                  duration: Duration(milliseconds: 775),
                                  repeats: 14,
                                  builder: (anim) => FadeTransition(
                                    opacity: anim,
                                    child: Icon(
                                      Icons.check_box,
                                      size: 35,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Property',
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              children: <Widget>[
                                Animator(
                                  duration: Duration(milliseconds: 800),
                                  repeats: 18,
                                  builder: (anim) => FadeTransition(
                                    opacity: anim,
                                    child: Icon(
                                      Icons.check_box,
                                      size: 35,
                                      color: Colors.green,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Underwriting Decision',
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          ),
                         
                          // Align(
                          //   alignment: Alignment.bottomRight,
                          //   child:
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                            child: 
                            Animator(
                              duration: Duration(seconds: 24),
                              repeats: 1,
                              builder: (anim) => FadeTransition(
                                opacity: anim,
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
                            ),
                          ),
                          // ),
                        ],
                      )
                    ]),
              ),
            ),
          ),
        // ),
      // ),
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
