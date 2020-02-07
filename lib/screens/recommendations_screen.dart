import 'package:flutter/material.dart';

import './rates_screen.dart';
import '../widgets/recommendation_item.dart';
import '../widgets/menu.dart';
import '../widgets/checkbox.dart';
import '../widgets/appbar.dart';

class Recommendations extends StatelessWidget {
  static const routeName = '/our-recommendations';

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: Text(
        text,
        textAlign: TextAlign.start,
        style: Theme.of(context).textTheme.title,
      ),
    );
  }

  void clickCard(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      RatesScreen.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: buildAppBar(context, 'Recommendations'),
      drawer: MenuDrawer(),
      body: Container(
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
      ),
    );
  }
}
