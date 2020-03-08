import 'package:flutter/material.dart';

import '../widgets/home_item.dart';
import '../widgets/menu.dart';
import '../widgets/appbar.dart';
import './loan_purpose_screen.dart';
import './select_lien_screen.dart';

class SelectHome extends StatefulWidget {
  static const routeName = '/select-home';

  @override
  _SelectHomeState createState() => _SelectHomeState();
}

class _SelectHomeState extends State<SelectHome> {
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
      LoanPurpose.routeName,
    );
  }

  void clickNext(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      SelectLien.routeName,
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
      alignment: Alignment.topCenter,
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(),
          ),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 700,
                    color: Colors.grey[50],
                    height: MediaQuery.of(context).size.height - 40,
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Container(
                      child: Column(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              buildSectionTitle(context,
                                  'Here are the homes we found that you own*'),
                            ],
                          ),
                          Text('Select which homes you want to analyze'),
                          Divider(
                            color: Colors.black,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height * 0.75,
                            width: double.infinity,
                            child: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    // margin: EdgeInsets.symmetric(horizontal: 30),
                                    child: Column(children: <Widget>[
                                      InkWell(
                                        onTap: () => clickNext(context),
                                        child: buildHomeItem(
                                          context,
                                          Image.network(
                                            'https://photos.zillowstatic.com/cc_ft_576/IS764p4abohia10000000000.webp',
                                            height: 250,
                                            width: double.infinity,
                                            fit: BoxFit.cover,
                                          ),
                                          '123 Congress St. Austin, TX 78723',
                                        ),
                                      ),
                                      buildHomeItem(
                                        context,
                                        Image.network(
                                          'https://cdn.tollbrothers.com/communities/13201/images-resized/3D3A5189RT2ABAAB_1920.jpg',
                                          height: 250,
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        ),
                                        '2163 Lamar St. Austin, TX 78723',
                                      ),
                                    ]),
                                  ),
                                ],
                              ),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                        ],
                      ),
                    ),
                  ),
                ],
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
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                width: 500,
                color: Colors.grey[50],
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          buildSectionTitle(context,
                              'Here are the homes we found that you own*'),
                        ],
                      ),
                      Text('Select which homes you want to analyze'),
                      Divider(
                        color: Colors.black,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        width: double.infinity,
                        child: SingleChildScrollView(
                          child: Column(
                            children: <Widget>[
                              Container(
                                // margin: EdgeInsets.symmetric(horizontal: 30),
                                child: Column(children: <Widget>[
                                  InkWell(
                                    onTap: () => clickNext(context),
                                    child: buildHomeItem(
                                      context,
                                      Image.network(
                                        'https://www.odcustomhomes.com/p/images/720x480-2322394701d9a009ba73f8b9f6304b8e34807a92.jpg',
                                        height: 250,
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                      '1923 Congress St. Austin, TX 78723',
                                    ),
                                  ),
                                  buildHomeItem(
                                    context,
                                    Image.network(
                                      'https://cdn.tollbrothers.com/communities/13201/images-resized/3D3A5189RT2ABAAB_1920.jpg',
                                      height: 250,
                                      width: double.infinity,
                                      fit: BoxFit.cover,
                                    ),
                                    '2163 Lamar St. Austin, TX 78723',
                                  ),
                                ]),
                              ),
                            ],
                          ),
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
      appBar: buildAppBar(context, 'Select mortgage'),
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
