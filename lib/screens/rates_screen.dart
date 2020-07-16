import 'package:flutter/material.dart';

import '../widgets/ratecard.dart';
import '../widgets/switch.dart';
import '../widgets/checkbox.dart';
import '../widgets/assumptions.dart';
import '../models/loantype.dart';
import './personal_info_screen.dart';
import '../widgets/menu.dart';
import '../widgets/appbar.dart';

class RatesScreenRd extends StatefulWidget {
  static const routeName = '/layout-builder';

  @override
  _RatesScreenRdState createState() => _RatesScreenRdState();
}

class _RatesScreenRdState extends State<RatesScreenRd> {
  final List<LoanType> loantypes = [
    LoanType(
      id: '1',
      year: 30,
      rate: 3.875,
      apr: 3.888,
      payment: 967,
      fees: 2759,
    ),
    LoanType(
      id: '2',
      year: 20,
      rate: 3.750,
      apr: 3.758,
      payment: 1157,
      fees: 2759,
    ),
    LoanType(
      id: '3',
      year: 15,
      rate: 3.625,
      apr: 3.658,
      payment: 1267,
      fees: 2759,
    ),
    LoanType(
      id: '4',
      year: 10,
      rate: 3.500,
      apr: 3.578,
      payment: 1467,
      fees: 2759,
    ),
  ];

  void clickApply(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      PersonalInfo.routeName,
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
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
                // color: Colors.blue,
                ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Container(
                // width: 650,
                // color: Colors.redAccent,
                alignment: Alignment.topCenter,
                child: SafeArea(
                  child: Container(
                    child: SingleChildScrollView(
                      child: Container(
                        width: 700,
                        // color: Colors.grey[50],
                        color: Colors.grey[50],
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        height: MediaQuery.of(context).size.height - 40,
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          // padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Assumption(),
                              Container(
                                // padding: EdgeInsets.all(10),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          SwitchButton(),
                                          Text('Rate Alerts'),
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          CheckBoxWidget(),
                                          Text('Minimize Closing Costs'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: loantypes.length,
                                  itemBuilder: (ctx, i) => RateCard(
                                    loantypes[i].id,
                                    loantypes[i].year,
                                    loantypes[i].rate,
                                    loantypes[i].apr,
                                    loantypes[i].payment,
                                    loantypes[i].fees,
                                  ),
                                ),
                              ),
                              // Divider(),
                              // Container(
                              //   padding: EdgeInsets.fromLTRB(0, 0, 10, 10),
                              //   alignment: Alignment.topRight,
                              //   child: GestureDetector(
                              //     onTap: () => clickApply(context),
                              //     child: buildCustomButton1(context, 'Apply'),
                              //   ),
                              // ),
                              Align(
                                alignment: FractionalOffset.bottomRight,
                                child: Row(
                                  children: <Widget>[
                                    Spacer(),
                                    FlatButton(
                                      onPressed: () {
                                        clickApply(context);
                                        print(Text('Next button hit'));
                                      },
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            'Get Started',
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
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
                // color: Colors.blue,
                ),
          ),
        ],
      ),
    );
  }

  Widget _smallDisplay() {
    return SafeArea(
      child: Container(
        // color: Colors.red,
        // height: MediaQuery.of(context).size.height,
        // child: SingleChildScrollView(
          child: Container(
            width: 500,
            height: MediaQuery.of(context).size.height - 60,
            child: Container(
              margin: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Assumption(),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Row(
                            children: <Widget>[
                              SwitchButton(),
                              Text(
                                'Rate Alerts',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Spacer(),
                        Container(
                          child: Row(
                            children: <Widget>[
                              CheckBoxWidget(),
                              Text(
                                'Minimize Closing Costs',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: ListView.builder(
                      itemCount: loantypes.length,
                      itemBuilder: (ctx, i) => RateCard(
                        loantypes[i].id,
                        loantypes[i].year,
                        loantypes[i].rate,
                        loantypes[i].apr,
                        loantypes[i].payment,
                        loantypes[i].fees,
                      ),
                    ),
                  ),

                  Align(
                    alignment: FractionalOffset.bottomRight,
                    child: Row(
                      children: <Widget>[
                        Spacer(),
                        FlatButton(
                          onPressed: () {
                            clickApply(context);
                            print(Text('Next button hit'));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Text(
                                'Get Started',
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
        // ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, "View Rates"),
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
