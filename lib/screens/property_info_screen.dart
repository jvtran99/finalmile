import 'package:certainty/screens/personal_info_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/custombutton.dart';
import './loan_purpose_screen.dart';

class PropertyInfo extends StatelessWidget {
  static const routeName = '/property-info';

  final List<String> entries = <String>[
    'Primary residence',
    'Second home',
    'Investment Property'
  ];

  final List<String> propertyType = <String>[
    'Single family residence',
    'Condo or Townhouse',
    'Multi-unit (2-4)'
  ];

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

  void clickBack(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      LoanPurpose.routeName,
    );
  }

  void clickNext(BuildContext ctx) {
    Navigator.of(ctx).pushReplacementNamed(
      PersonalInfo.routeName,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text('Property Info'),
        // leading: Container(),
      ),
      body: Center(
        child: Container(
          width: 500,
          child: Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 30),
                child: Column(
                  children: <Widget>[
                    Container(
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                buildSectionTitle(context,
                                    'Tell us about the propoerty you are refinancing'),
                                Container(
                                  height: 90,
                                  child: ListView.builder(
                                      padding: const EdgeInsets.all(8),
                                      itemCount: entries.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          padding:
                                              EdgeInsets.symmetric(vertical: 2),
                                          child: Text(
                                            '${entries[index]}',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          Container(
                            child: Column(
                              children: <Widget>[
                                buildSectionTitle(
                                    context, 'What type of property is this?'),
                                Container(
                                  height: 90,
                                  child: ListView.builder(
                                      padding: const EdgeInsets.all(8),
                                      itemCount: propertyType.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return Container(
                                          padding:
                                              EdgeInsets.symmetric(vertical: 2),
                                          child: Text(
                                            '${propertyType[index]}',
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                        );
                                      }),
                                ),
                              ],
                            ),
                          ),
                          Divider(),
                          buildSectionTitle(context, 'Estimated home value'),
                          TextField(
                            decoration: InputDecoration(
                                helperMaxLines: 2,
                                helperText:
                                    'We utilize Zillow\'s Zestimate to estimate your home\'s value',
                                border: OutlineInputBorder(),
                                hintText: 'Enter amount'),
                          ),
                        ],
                      ),
                    ),
                    
                  ],
                ),
              ),
              Positioned(
                child: Container(
                  margin: EdgeInsets.all(30),
                  width: double.infinity,
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            clickBack(context);
                            print('Back button hit');
                          },
                          child: buildCustomButton1(context, 'Back'),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () => clickNext(context),
                          child: buildCustomButton1(context, 'Next'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
