import 'package:flutter/material.dart';
import '../models/bank.dart';

import '../widgets/menu.dart';
import '../widgets/appbar.dart';
import './income_employment_screen.dart';
import './sign_in_screen.dart';

class AssetDetails extends StatefulWidget {
  static const routeName = '/asset-details';

  @override
  _AssetDetailsState createState() => _AssetDetailsState();
}

class _AssetDetailsState extends State<AssetDetails> {
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
      IncomeEmployment.routeName,
    );
  }

  void clickNext(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      SignIn.routeName,
    );
  }

  final List<BankType> banktypes = [
    BankType(
      id: '1',
      name: 'Chase',
      imageUrl:
          'data:image/jpeg;base64,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',
    ),
    BankType(
      id: '2',
      name: 'Bank of America',
      imageUrl:
          'data:image/png;base64,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',
    ),
    BankType(
      id: '3',
      name: 'Citi',
      imageUrl:
          'data:image/png;base64,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',
    ),
    BankType(
      id: '4',
      name: 'Wells Fargo',
      imageUrl:
          'data:image/png;base64,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',
    ),
  ];

  void _showModalSheet() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (builder) {
          return Container(
            height: 500,
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
                    child: Container(
                      width: 700,
                      color: Colors.grey[200],
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
                            height: 20,
                          ),
                          TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                                hintText: "Search for your bank here",
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0)))),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            child: Text(
                              'Or select from popular ones',
                            ),
                          ),
                          SizedBox(height: 10),
                          Expanded(
                            flex: 7,
                            child: GridView.builder(
                              gridDelegate:
                                  new SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3),
                              itemCount: banktypes.length,
                              itemBuilder: (ctx, i) => GestureDetector(
                                onTap: () {
                                  clickNext(context);
                                },
                                child: Container(
                                  margin: EdgeInsets.all(10),
                                  color: Colors.white,
                                  child: Image.network(
                                    banktypes[i].imageUrl,
                                    // fit: BoxFit.cover,
                                  ),
                                ),
                              ),
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
        isScrollControlled: true,
        context: context,
        builder: (builder) {
          return Container(
            height: 500,
            decoration: new BoxDecoration(color: Colors.transparent),
            // child: Row(
            //   children: <Widget>[
            //     Expanded(
            //       flex: 3,
                  child: Container(
                    color: Colors.grey[200],
                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
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
                          height: 20,
                        ),
                        TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                              hintText: "Search for your bank here",
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0)))),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          child: Text(
                            'Or select from popular ones',
                          ),
                        ),
                        SizedBox(height: 10),
                        Expanded(
                          flex: 7,
                          child: GridView.builder(
                            gridDelegate:
                                new SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 3),
                            itemCount: banktypes.length,
                            itemBuilder: (ctx, i) => GestureDetector(
                              onTap: () {
                                clickNext(context);
                              },
                              child: Container(
                                margin: EdgeInsets.all(10),
                                color: Colors.white,
                                child: Image.network(
                                  banktypes[i].imageUrl,
                                  // fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
            //     ),
            //   ],
            // ),
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
                            buildSectionTitle(context,
                                'Next, let\'s gather your Asset details'),
                          ],
                        ),
                        Text(
                            'Skip the manual entry and let us search for your account information.  Simply connect to your financial institution so you can save time and get the right mortgage solution.'),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: 300,
                          child: RaisedButton(
                            onPressed: _showModalSheet,
                            color: Colors.lightBlue,
                            hoverColor: Colors.red[600],
                            child: Text(
                              'CONNECT',
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          "By clicking \"Connect\", you agree that Certainty can receive your accounts and financial information from our Trusted Partners, which includes redirecting you to our partner\'s page, if necessary.  As always, your information and activity is covered by our Terms of Use and Privacy Policy.",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(height: 20),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            buildSectionTitle(context, 'Your Assets'),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
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
                                        'Add',
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
                  buildSectionTitle(
                      context, 'Next, let\'s gather your Asset details'),
                ],
              ),
              Text(
                  'Skip the manual entry and let us search for your account information.  Simply connect to your financial institution so you can save time and get the right mortgage solution.'),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                child: RaisedButton(
                  onPressed: _showModalSheetSm,
                  color: Colors.lightBlue,
                  hoverColor: Colors.red[600],
                  child: Text(
                    'CONNECT',
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "By clicking \"Connect\", you agree that Certainty can receive your accounts and financial information from our Trusted Partners, which includes redirecting you to our partner\'s page, if necessary.  As always, your information and activity is covered by our Terms of Use and Privacy Policy.",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  buildSectionTitle(context, 'Your Assets'),
                ],
              ),
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
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
                              'Add',
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: buildAppBar(context, "Asset Information"),
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
