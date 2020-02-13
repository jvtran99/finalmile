import 'package:flutter/material.dart';

import './rates_screen.dart';
import '../widgets/recommendation_item.dart';
import '../widgets/menu.dart';
import '../widgets/checkbox.dart';
import '../widgets/appbar.dart';
import './select_lien_screen.dart';

class Recommendations extends StatefulWidget {
  static const routeName = '/our-recommendations';

  @override
  _RecommendationsState createState() => _RecommendationsState();
}

class _RecommendationsState extends State<Recommendations> {
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

  void clickCard(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      RatesScreenRd.routeName,
    );
  }

  void clickBack(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      SelectLien.routeName,
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
                padding: EdgeInsets.symmetric(horizontal: 30),
                height: MediaQuery.of(context).size.height - 40,
                width: 700,
                color: Colors.grey[50],
                child: Column(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            buildSectionTitle(context, 'Our Recommendations'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            CheckBoxWidget(),
                            Text('Minimize my Closing Costs '),
                            Icon(Icons.info_outline)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            CheckBoxWidget(),
                            Text('I don\'t want an Escrow Account '),
                            Icon(Icons.info)
                          ],
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    Expanded(
                      child: ListView(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            // color: Colors.grey[400],
                            color: Theme.of(context).cardColor,
                            elevation: 2,
                            child: InkWell(
                              onTap: () => clickCard(context),
                              child: buildRecommendationItem(context, 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            color: Theme.of(context).cardColor,
                            elevation: 2,
                            child: InkWell(
                              onTap: () => clickCard(context),
                              child: buildRecommendationItem(context, 15),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            color: Theme.of(context).cardColor,
                            elevation: 2,
                            child: InkWell(
                              onTap: () => clickCard(context),
                              child: buildRecommendationItem(context, 10),
                            ),
                          ),
                        ),
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
  }

  Widget _smallDisplay() {
    return Container(
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: NetworkImage(
      //         'https://www.essexhomes.net/storage/app/medialibrary/public/2019/11/48673/conversions/5dd81489aed35696653990-hero.jpg'),
      //     fit: BoxFit.cover,
      //     colorFilter: new ColorFilter.mode(
      //         Colors.lightBlue.withOpacity(0.1), BlendMode.dstATop),
      //   ),
      // ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: 500,
                color: Colors.grey[50],
                child: Column(
                  // alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              buildSectionTitle(context, 'Our Recommendations'),
                            ],
                          ),
                          Container(
                            // padding: EdgeInsets.all(18),
                            width: double.infinity,
                            decoration: BoxDecoration(
                                // color: Colors.teal,
                                // border: Border.all(
                                //   width: 2,
                                //   color: Colors.black,
                                // ),
                                ),
                            child: Column(
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    CheckBoxWidget(),
                                    Text('Minimize my Closing Costs '),
                                    Icon(Icons.info_outline)
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    CheckBoxWidget(),
                                    Text('I don\'t want an Escrow Account '),
                                    Icon(Icons.info)
                                  ],
                                ),
                                Divider(
                                  thickness: 2,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            // color: Colors.grey[400],
                            color: Theme.of(context).cardColor,
                            elevation: 2,
                            child: InkWell(
                              onTap: () => clickCard(context),
                              child: buildRecommendationItem(context, 20),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            color: Theme.of(context).cardColor,
                            elevation: 2,
                            child: InkWell(
                              onTap: () => clickCard(context),
                              child: buildRecommendationItem(context, 15),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Card(
                            color: Theme.of(context).cardColor,
                            elevation: 2,
                            child: InkWell(
                              onTap: () => clickCard(context),
                              child: buildRecommendationItem(context, 10),
                            ),
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

                        // Container(
                        //   // margin: EdgeInsets.all(30),
                        //   width: double.infinity,
                        //   child: Align(
                        //     alignment: FractionalOffset.bottomCenter,
                        //     child: Row(
                        //       mainAxisAlignment:
                        //           MainAxisAlignment.spaceEvenly,
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
                      ]),
                    ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: buildAppBar(context, 'Recommendations'),
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
