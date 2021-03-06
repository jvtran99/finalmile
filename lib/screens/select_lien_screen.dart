import 'package:flutter/material.dart';

import './select_home_screen.dart';
import '../widgets/lien_item.dart';
import '../widgets/menu.dart';
import '../widgets/appbar.dart';
import './recommendations_screen.dart';
import '../widgets/lien_wo_taxes_item.dart';

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
    Navigator.of(ctx).pushNamed(
      Recommendations.routeName,
    );
  }

  Widget _bigDisplay() {
    return Container(
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
                    height: MediaQuery.of(context).size.height - 40,
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
                              buildLienItem(context, 'Wells Fargo Home',
                                  '1st Mortgage', '196,425', '1502'),
                              buildLienWoTaxesItem(context, 'Chase Bank',
                                  'Pool Renovation', '70,500', '802'),
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
    );
    // ),
  }

  Widget _smallDisplay() {
    return Container(
      alignment: Alignment.topCenter,
      child: Container(
        width: 500,
        // height: MediaQuery.of(context).size.height - 40,
        // color: Colors.grey[50],
        // color: Colors.amber,
        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
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
                    child: Column(children: <Widget>[
                      buildLienItem(context, 'Wells Fargo Home', '1st Mortgage',
                          '196,425', '1502'),
                      buildLienWoTaxesItem(context, 'Chase Bank',
                          'Pool Renovation', '70,500', '802')
                    ]),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Expanded(
              child: Container(
                // color: Colors.black,
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
    );
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
